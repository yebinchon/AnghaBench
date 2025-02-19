
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_map_op {int dummy; } ;
struct bpf_map_def {unsigned int max_entries; } ;
typedef int (* map_config_func_t ) (char const*,int,struct bpf_map_def const*,struct bpf_map_op*,unsigned int*,void*) ;


 int pr_debug (char*,char const*,unsigned int) ;

__attribute__((used)) static int
foreach_key_array_all(map_config_func_t func,
        void *arg, const char *name,
        int map_fd, const struct bpf_map_def *pdef,
        struct bpf_map_op *op)
{
 unsigned int i;
 int err;

 for (i = 0; i < pdef->max_entries; i++) {
  err = func(name, map_fd, pdef, op, &i, arg);
  if (err) {
   pr_debug("ERROR: failed to insert value to %s[%u]\n",
     name, i);
   return err;
  }
 }
 return 0;
}
