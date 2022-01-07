
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aa_label {int dummy; } ;


 int aa_secids ;
 int idr_replace (int *,struct aa_label*,int ) ;
 int secid_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void aa_secid_update(u32 secid, struct aa_label *label)
{
 unsigned long flags;

 spin_lock_irqsave(&secid_lock, flags);
 idr_replace(&aa_secids, label, secid);
 spin_unlock_irqrestore(&secid_lock, flags);
}
