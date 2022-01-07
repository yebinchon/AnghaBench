
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_label {int secid; } ;
typedef int gfp_t ;


 int AA_BUG (int) ;
 int AA_FIRST_SECID ;
 int AA_SECID_INVALID ;
 int GFP_ATOMIC ;
 int aa_secids ;
 int idr_alloc (int *,struct aa_label*,int ,int ,int ) ;
 int idr_preload (int ) ;
 int idr_preload_end () ;
 int secid_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int aa_alloc_secid(struct aa_label *label, gfp_t gfp)
{
 unsigned long flags;
 int ret;

 idr_preload(gfp);
 spin_lock_irqsave(&secid_lock, flags);
 ret = idr_alloc(&aa_secids, label, AA_FIRST_SECID, 0, GFP_ATOMIC);
 spin_unlock_irqrestore(&secid_lock, flags);
 idr_preload_end();

 if (ret < 0) {
  label->secid = AA_SECID_INVALID;
  return ret;
 }

 AA_BUG(ret == AA_SECID_INVALID);
 label->secid = ret;
 return 0;
}
