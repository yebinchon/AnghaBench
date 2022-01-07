
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct user_struct {int dummy; } ;
struct bpf_prog {int pages; TYPE_1__* aux; } ;
struct TYPE_2__ {struct user_struct* user; } ;


 int __bpf_prog_uncharge (struct user_struct*,int ) ;
 int free_uid (struct user_struct*) ;

__attribute__((used)) static void bpf_prog_uncharge_memlock(struct bpf_prog *prog)
{
 struct user_struct *user = prog->aux->user;

 __bpf_prog_uncharge(user, prog->pages);
 free_uid(user);
}
