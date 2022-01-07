
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parse_events_state {TYPE_1__* error; } ;
struct list_head {int dummy; } ;
struct bpf_object {int dummy; } ;
typedef int errbuf ;
struct TYPE_2__ {void* str; void* help; } ;


 int BUFSIZ ;
 int ENOTSUP ;
 scalar_t__ IS_ERR (struct bpf_object*) ;
 int LIST_HEAD (int ) ;
 int PTR_ERR (struct bpf_object*) ;
 struct bpf_object* bpf__prepare_load (char*,int) ;
 int bpf__strerror_prepare_load (char*,int,int,char*,int) ;
 int list_splice_tail (int *,struct list_head*) ;
 int obj_head_config ;
 int parse_events_config_bpf (struct parse_events_state*,struct bpf_object*,int *) ;
 int parse_events_load_bpf_obj (struct parse_events_state*,struct list_head*,struct bpf_object*,struct list_head*) ;
 int snprintf (char*,int,char*) ;
 int split_bpf_config_terms (struct list_head*,int *) ;
 void* strdup (char*) ;

int parse_events_load_bpf(struct parse_events_state *parse_state,
     struct list_head *list,
     char *bpf_file_name,
     bool source,
     struct list_head *head_config)
{
 int err;
 struct bpf_object *obj;
 LIST_HEAD(obj_head_config);

 if (head_config)
  split_bpf_config_terms(head_config, &obj_head_config);

 obj = bpf__prepare_load(bpf_file_name, source);
 if (IS_ERR(obj)) {
  char errbuf[BUFSIZ];

  err = PTR_ERR(obj);

  if (err == -ENOTSUP)
   snprintf(errbuf, sizeof(errbuf),
     "BPF support is not compiled");
  else
   bpf__strerror_prepare_load(bpf_file_name,
         source,
         -err, errbuf,
         sizeof(errbuf));

  parse_state->error->help = strdup("(add -v to see detail)");
  parse_state->error->str = strdup(errbuf);
  return err;
 }

 err = parse_events_load_bpf_obj(parse_state, list, obj, head_config);
 if (err)
  return err;
 err = parse_events_config_bpf(parse_state, obj, &obj_head_config);





 if (head_config)
  list_splice_tail(&obj_head_config, head_config);
 return err;
}
