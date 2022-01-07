
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse_events_term {int config; } ;
struct evlist {int dummy; } ;
struct bpf_object {int dummy; } ;


 int BPF_LOADER_ERRNO__OBJCONF_OPT ;
 int EINVAL ;
 int bpf__obj_config_map (struct bpf_object*,struct parse_events_term*,struct evlist*,int*) ;
 scalar_t__ strstarts (int ,char*) ;

int bpf__config_obj(struct bpf_object *obj,
      struct parse_events_term *term,
      struct evlist *evlist,
      int *error_pos)
{
 int key_scan_pos = 0;
 int err;

 if (!obj || !term || !term->config)
  return -EINVAL;

 if (strstarts(term->config, "map:")) {
  key_scan_pos = sizeof("map:") - 1;
  err = bpf__obj_config_map(obj, term, evlist, &key_scan_pos);
  goto out;
 }
 err = -BPF_LOADER_ERRNO__OBJCONF_OPT;
out:
 if (error_pos)
  *error_pos = key_scan_pos;
 return err;

}
