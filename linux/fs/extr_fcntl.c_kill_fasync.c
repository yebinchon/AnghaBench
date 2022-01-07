
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fasync_struct {int dummy; } ;


 int kill_fasync_rcu (int ,int,int) ;
 int rcu_dereference (struct fasync_struct*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

void kill_fasync(struct fasync_struct **fp, int sig, int band)
{



 if (*fp) {
  rcu_read_lock();
  kill_fasync_rcu(rcu_dereference(*fp), sig, band);
  rcu_read_unlock();
 }
}
