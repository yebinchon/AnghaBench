
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parse_events_state {TYPE_1__* error; } ;
struct list_head {int dummy; } ;
struct bpf_object {int dummy; } ;
struct __add_bpf_event_param {struct list_head* member_2; struct list_head* member_1; struct parse_events_state* member_0; } ;
typedef int errbuf ;
struct TYPE_2__ {void* str; void* help; } ;


 int BUFSIZ ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct bpf_object*) ;
 int add_bpf_event ;
 int atexit (int ) ;
 int bpf__clear ;
 int bpf__foreach_event (struct bpf_object*,int ,struct __add_bpf_event_param*) ;
 int bpf__load (struct bpf_object*) ;
 int bpf__probe (struct bpf_object*) ;
 int bpf__strerror_load (struct bpf_object*,int,char*,int) ;
 int bpf__strerror_probe (struct bpf_object*,int,char*,int) ;
 int snprintf (char*,int,char*) ;
 void* strdup (char*) ;

int parse_events_load_bpf_obj(struct parse_events_state *parse_state,
         struct list_head *list,
         struct bpf_object *obj,
         struct list_head *head_config)
{
 int err;
 char errbuf[BUFSIZ];
 struct __add_bpf_event_param param = {parse_state, list, head_config};
 static bool registered_unprobe_atexit = 0;

 if (IS_ERR(obj) || !obj) {
  snprintf(errbuf, sizeof(errbuf),
    "Internal error: load bpf obj with NULL");
  err = -EINVAL;
  goto errout;
 }






 if (!registered_unprobe_atexit) {
  atexit(bpf__clear);
  registered_unprobe_atexit = 1;
 }

 err = bpf__probe(obj);
 if (err) {
  bpf__strerror_probe(obj, err, errbuf, sizeof(errbuf));
  goto errout;
 }

 err = bpf__load(obj);
 if (err) {
  bpf__strerror_load(obj, err, errbuf, sizeof(errbuf));
  goto errout;
 }

 err = bpf__foreach_event(obj, add_bpf_event, &param);
 if (err) {
  snprintf(errbuf, sizeof(errbuf),
    "Attach events in BPF object failed");
  goto errout;
 }

 return 0;
errout:
 parse_state->error->help = strdup("(add -v to see detail)");
 parse_state->error->str = strdup(errbuf);
 return err;
}
