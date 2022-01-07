
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_lock_res {int l_ro_holders; int l_ex_holders; } ;


 int BUG () ;
 int BUG_ON (int) ;



__attribute__((used)) static inline void ocfs2_dec_holders(struct ocfs2_lock_res *lockres,
         int level)
{
 BUG_ON(!lockres);

 switch(level) {
 case 129:
  BUG_ON(!lockres->l_ex_holders);
  lockres->l_ex_holders--;
  break;
 case 128:
  BUG_ON(!lockres->l_ro_holders);
  lockres->l_ro_holders--;
  break;
 default:
  BUG();
 }
}
