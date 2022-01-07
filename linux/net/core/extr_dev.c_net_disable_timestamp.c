
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_cmpxchg (int *,int,int) ;
 int atomic_dec (int *) ;
 int atomic_read (int *) ;
 int netstamp_needed_deferred ;
 int netstamp_needed_key ;
 int netstamp_wanted ;
 int netstamp_work ;
 int schedule_work (int *) ;
 int static_branch_dec (int *) ;

void net_disable_timestamp(void)
{
 static_branch_dec(&netstamp_needed_key);

}
