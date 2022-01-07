
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fs_pin {int dummy; } ;
struct bsd_acct_struct {int lock; TYPE_1__* ns; int done; int work; } ;
struct TYPE_2__ {int bacct; } ;


 int acct_put (struct bsd_acct_struct*) ;
 int cmpxchg (int *,struct fs_pin*,int *) ;
 int do_acct_process (struct bsd_acct_struct*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pin_remove (struct fs_pin*) ;
 int schedule_work (int *) ;
 struct bsd_acct_struct* to_acct (struct fs_pin*) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void acct_pin_kill(struct fs_pin *pin)
{
 struct bsd_acct_struct *acct = to_acct(pin);
 mutex_lock(&acct->lock);
 do_acct_process(acct);
 schedule_work(&acct->work);
 wait_for_completion(&acct->done);
 cmpxchg(&acct->ns->bacct, pin, ((void*)0));
 mutex_unlock(&acct->lock);
 pin_remove(pin);
 acct_put(acct);
}
