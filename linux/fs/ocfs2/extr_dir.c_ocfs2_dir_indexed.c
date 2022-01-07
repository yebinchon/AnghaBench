
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int ip_dyn_features; } ;


 TYPE_1__* OCFS2_I (struct inode*) ;
 int OCFS2_INDEXED_DIR_FL ;

__attribute__((used)) static int ocfs2_dir_indexed(struct inode *inode)
{
 if (OCFS2_I(inode)->ip_dyn_features & OCFS2_INDEXED_DIR_FL)
  return 1;
 return 0;
}
