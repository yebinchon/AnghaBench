
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ns_common {int dummy; } ;
struct user_namespace {struct ns_common ns; } ;
struct task_struct {int dummy; } ;
struct TYPE_2__ {int user_ns; } ;


 TYPE_1__* __task_cred (struct task_struct*) ;
 struct user_namespace* get_user_ns (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static struct ns_common *userns_get(struct task_struct *task)
{
 struct user_namespace *user_ns;

 rcu_read_lock();
 user_ns = get_user_ns(__task_cred(task)->user_ns);
 rcu_read_unlock();

 return user_ns ? &user_ns->ns : ((void*)0);
}
