
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct dquot {int dummy; } ;


 int MAXQUOTAS ;
 int dquot_active (struct inode*) ;
 struct dquot** i_dquot (struct inode*) ;
 scalar_t__ sb_has_quota_active (int ,int) ;

bool dquot_initialize_needed(struct inode *inode)
{
 struct dquot **dquots;
 int i;

 if (!dquot_active(inode))
  return 0;

 dquots = i_dquot(inode);
 for (i = 0; i < MAXQUOTAS; i++)
  if (!dquots[i] && sb_has_quota_active(inode->i_sb, i))
   return 1;
 return 0;
}
