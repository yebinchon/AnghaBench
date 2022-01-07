
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct integrity_iint_cache {int atomic_flags; scalar_t__ measured_pcrs; } ;
struct inode {int i_mode; } ;


 int IMA_APPRAISE ;
 int IMA_CHANGE_XATTR ;
 int IMA_DIGSIG ;
 int S_ISREG (int ) ;
 int clear_bit (int ,int *) ;
 int ima_policy_flag ;
 struct integrity_iint_cache* integrity_iint_find (struct inode*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void ima_reset_appraise_flags(struct inode *inode, int digsig)
{
 struct integrity_iint_cache *iint;

 if (!(ima_policy_flag & IMA_APPRAISE) || !S_ISREG(inode->i_mode))
  return;

 iint = integrity_iint_find(inode);
 if (!iint)
  return;
 iint->measured_pcrs = 0;
 set_bit(IMA_CHANGE_XATTR, &iint->atomic_flags);
 if (digsig)
  set_bit(IMA_DIGSIG, &iint->atomic_flags);
 else
  clear_bit(IMA_DIGSIG, &iint->atomic_flags);
}
