
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6_flowlabel {unsigned long lastuse; unsigned long linger; unsigned long expires; } ;


 int EPERM ;
 unsigned long check_linger (unsigned long) ;
 int ip6_fl_lock ;
 unsigned long jiffies ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static int fl6_renew(struct ip6_flowlabel *fl, unsigned long linger, unsigned long expires)
{
 linger = check_linger(linger);
 if (!linger)
  return -EPERM;
 expires = check_linger(expires);
 if (!expires)
  return -EPERM;

 spin_lock_bh(&ip6_fl_lock);
 fl->lastuse = jiffies;
 if (time_before(fl->linger, linger))
  fl->linger = linger;
 if (time_before(expires, fl->linger))
  expires = fl->linger;
 if (time_before(fl->expires, fl->lastuse + expires))
  fl->expires = fl->lastuse + expires;
 spin_unlock_bh(&ip6_fl_lock);

 return 0;
}
