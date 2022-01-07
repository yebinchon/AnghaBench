
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int aa_secids ;
 int idr_remove (int *,int ) ;
 int secid_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void aa_free_secid(u32 secid)
{
 unsigned long flags;

 spin_lock_irqsave(&secid_lock, flags);
 idr_remove(&aa_secids, secid);
 spin_unlock_irqrestore(&secid_lock, flags);
}
