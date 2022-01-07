
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct user_struct {int dummy; } ;
struct bpf_prog {TYPE_1__* aux; int pages; } ;
struct TYPE_2__ {struct user_struct* user; } ;


 int __bpf_prog_charge (struct user_struct*,int ) ;
 int free_uid (struct user_struct*) ;
 struct user_struct* get_current_user () ;

__attribute__((used)) static int bpf_prog_charge_memlock(struct bpf_prog *prog)
{
 struct user_struct *user = get_current_user();
 int ret;

 ret = __bpf_prog_charge(user, prog->pages);
 if (ret) {
  free_uid(user);
  return ret;
 }

 prog->aux->user = user;
 return 0;
}
