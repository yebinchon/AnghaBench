
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ksym {int name; } ;
struct get_stack_trace_t {int kern_stack_size; scalar_t__ user_stack_size; scalar_t__ user_stack_buildid_size; int * kern_stack; } ;
typedef int __u64 ;
typedef int __u32 ;
struct TYPE_2__ {scalar_t__ jit_enabled; } ;


 int CHECK (int,char*,char*) ;
 TYPE_1__ env ;
 struct ksym* ksym_search (int ) ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static void get_stack_print_output(void *ctx, int cpu, void *data, __u32 size)
{
 bool good_kern_stack = 0, good_user_stack = 0;
 const char *nonjit_func = "___bpf_prog_run";
 struct get_stack_trace_t *e = data;
 int i, num_stack;
 static __u64 cnt;
 struct ksym *ks;

 cnt++;

 if (size < sizeof(struct get_stack_trace_t)) {
  __u64 *raw_data = data;
  bool found = 0;

  num_stack = size / sizeof(__u64);





  if (env.jit_enabled) {
   found = num_stack > 0;
  } else {
   for (i = 0; i < num_stack; i++) {
    ks = ksym_search(raw_data[i]);
    if (ks && (strcmp(ks->name, nonjit_func) == 0)) {
     found = 1;
     break;
    }
   }
  }
  if (found) {
   good_kern_stack = 1;
   good_user_stack = 1;
  }
 } else {
  num_stack = e->kern_stack_size / sizeof(__u64);
  if (env.jit_enabled) {
   good_kern_stack = num_stack > 0;
  } else {
   for (i = 0; i < num_stack; i++) {
    ks = ksym_search(e->kern_stack[i]);
    if (ks && (strcmp(ks->name, nonjit_func) == 0)) {
     good_kern_stack = 1;
     break;
    }
   }
  }
  if (e->user_stack_size > 0 && e->user_stack_buildid_size > 0)
   good_user_stack = 1;
 }

 if (!good_kern_stack)
     CHECK(!good_kern_stack, "kern_stack", "corrupted kernel stack\n");
 if (!good_user_stack)
     CHECK(!good_user_stack, "user_stack", "corrupted user stack\n");
}
