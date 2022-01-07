
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct selinux_ss {int status_lock; int policy_rwlock; } ;


 int mutex_init (int *) ;
 int rwlock_init (int *) ;
 struct selinux_ss selinux_ss ;

void selinux_ss_init(struct selinux_ss **ss)
{
 rwlock_init(&selinux_ss.policy_rwlock);
 mutex_init(&selinux_ss.status_lock);
 *ss = &selinux_ss;
}
