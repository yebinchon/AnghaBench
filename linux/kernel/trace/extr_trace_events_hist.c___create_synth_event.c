
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct synth_field {int devent; } ;
struct synth_event {int devent; } ;


 int EEXIST ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct synth_field*) ;
 int PTR_ERR (struct synth_field*) ;
 int SYNTH_FIELDS_MAX ;
 struct synth_field* alloc_synth_event (char const*,int,struct synth_field**) ;
 int dyn_event_add (int *) ;
 int event_mutex ;
 struct synth_field* find_synth_event (char const*) ;
 int free_synth_event (struct synth_field*) ;
 int free_synth_field (struct synth_field*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct synth_field* parse_synth_field (int,char const**,int*) ;
 int register_synth_event (struct synth_field*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int __create_synth_event(int argc, const char *name, const char **argv)
{
 struct synth_field *field, *fields[SYNTH_FIELDS_MAX];
 struct synth_event *event = ((void*)0);
 int i, consumed = 0, n_fields = 0, ret = 0;
 if (name[0] == '\0' || argc < 1)
  return -EINVAL;

 mutex_lock(&event_mutex);

 event = find_synth_event(name);
 if (event) {
  ret = -EEXIST;
  goto out;
 }

 for (i = 0; i < argc - 1; i++) {
  if (strcmp(argv[i], ";") == 0)
   continue;
  if (n_fields == SYNTH_FIELDS_MAX) {
   ret = -EINVAL;
   goto err;
  }

  field = parse_synth_field(argc - i, &argv[i], &consumed);
  if (IS_ERR(field)) {
   ret = PTR_ERR(field);
   goto err;
  }
  fields[n_fields++] = field;
  i += consumed - 1;
 }

 if (i < argc && strcmp(argv[i], ";") != 0) {
  ret = -EINVAL;
  goto err;
 }

 event = alloc_synth_event(name, n_fields, fields);
 if (IS_ERR(event)) {
  ret = PTR_ERR(event);
  event = ((void*)0);
  goto err;
 }
 ret = register_synth_event(event);
 if (!ret)
  dyn_event_add(&event->devent);
 else
  free_synth_event(event);
 out:
 mutex_unlock(&event_mutex);

 return ret;
 err:
 for (i = 0; i < n_fields; i++)
  free_synth_field(fields[i]);

 goto out;
}
