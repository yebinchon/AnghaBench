
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ mode; } ;
struct task_struct {TYPE_2__ seccomp; } ;
struct TYPE_8__ {TYPE_2__ seccomp; TYPE_1__* sighand; } ;
struct TYPE_6__ {int siglock; } ;


 scalar_t__ SECCOMP_MODE_DISABLED ;
 int TIF_SECCOMP ;
 int assert_spin_locked (int *) ;
 TYPE_3__* current ;
 int get_seccomp_filter (TYPE_3__*) ;
 int set_tsk_thread_flag (struct task_struct*,int ) ;
 scalar_t__ task_no_new_privs (TYPE_3__*) ;
 int task_set_no_new_privs (struct task_struct*) ;

__attribute__((used)) static void copy_seccomp(struct task_struct *p)
{
}
