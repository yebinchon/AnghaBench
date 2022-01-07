
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dquot {int dummy; } ;


 scalar_t__ IS_NOQUOTA (struct inode*) ;
 int MAXQUOTAS ;
 struct dquot** i_dquot (struct inode*) ;

__attribute__((used)) static int dqinit_needed(struct inode *inode, int type)
{
 struct dquot * const *dquots;
 int cnt;

 if (IS_NOQUOTA(inode))
  return 0;

 dquots = i_dquot(inode);
 if (type != -1)
  return !dquots[type];
 for (cnt = 0; cnt < MAXQUOTAS; cnt++)
  if (!dquots[cnt])
   return 1;
 return 0;
}
