
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct dquot {int dummy; } ;
struct TYPE_2__ {struct dquot** i_dquot; } ;


 TYPE_1__* OCFS2_I (struct inode*) ;

__attribute__((used)) static struct dquot **ocfs2_get_dquots(struct inode *inode)
{
 return OCFS2_I(inode)->i_dquot;
}
