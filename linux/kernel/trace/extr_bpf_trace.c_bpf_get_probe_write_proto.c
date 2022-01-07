
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bpf_func_proto {int dummy; } ;
struct TYPE_3__ {int comm; } ;


 struct bpf_func_proto const bpf_probe_write_user_proto ;
 TYPE_1__* current ;
 int pr_warn_ratelimited (char*,int ,int ) ;
 int task_pid_nr (TYPE_1__*) ;

__attribute__((used)) static const struct bpf_func_proto *bpf_get_probe_write_proto(void)
{
 pr_warn_ratelimited("%s[%d] is installing a program with bpf_probe_write_user helper that may corrupt user memory!",
       current->comm, task_pid_nr(current));

 return &bpf_probe_write_user_proto;
}
