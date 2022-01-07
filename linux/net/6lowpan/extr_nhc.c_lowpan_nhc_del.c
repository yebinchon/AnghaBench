
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lowpan_nhc {size_t nexthdr; } ;


 int ** lowpan_nexthdr_nhcs ;
 int lowpan_nhc_lock ;
 int lowpan_nhc_remove (struct lowpan_nhc*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int synchronize_net () ;

void lowpan_nhc_del(struct lowpan_nhc *nhc)
{
 spin_lock_bh(&lowpan_nhc_lock);

 lowpan_nhc_remove(nhc);
 lowpan_nexthdr_nhcs[nhc->nexthdr] = ((void*)0);

 spin_unlock_bh(&lowpan_nhc_lock);

 synchronize_net();
}
