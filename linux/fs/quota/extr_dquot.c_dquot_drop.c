
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dquot {int dummy; } ;


 scalar_t__ IS_NOQUOTA (struct inode*) ;
 int MAXQUOTAS ;
 int __dquot_drop (struct inode*) ;
 struct dquot** i_dquot (struct inode*) ;

void dquot_drop(struct inode *inode)
{
 struct dquot * const *dquots;
 int cnt;

 if (IS_NOQUOTA(inode))
  return;
 dquots = i_dquot(inode);
 for (cnt = 0; cnt < MAXQUOTAS; cnt++) {
  if (dquots[cnt])
   break;
 }

 if (cnt < MAXQUOTAS)
  __dquot_drop(inode);
}
