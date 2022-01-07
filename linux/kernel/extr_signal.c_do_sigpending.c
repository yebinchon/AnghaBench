
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int sigset_t ;
struct TYPE_6__ {int signal; } ;
struct TYPE_10__ {int blocked; TYPE_4__* sighand; TYPE_3__* signal; TYPE_1__ pending; } ;
struct TYPE_9__ {int siglock; } ;
struct TYPE_7__ {int signal; } ;
struct TYPE_8__ {TYPE_2__ shared_pending; } ;


 TYPE_5__* current ;
 int sigandsets (int *,int *,int *) ;
 int sigorsets (int *,int *,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void do_sigpending(sigset_t *set)
{
 spin_lock_irq(&current->sighand->siglock);
 sigorsets(set, &current->pending.signal,
    &current->signal->shared_pending.signal);
 spin_unlock_irq(&current->sighand->siglock);


 sigandsets(set, &current->blocked, set);
}
