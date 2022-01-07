
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mapping; } ;


 int filemap_fdatawrite (int ) ;
 int sync_inode_metadata (struct inode*,int ) ;

__attribute__((used)) static int writeback_inode(struct inode *inode)
{

 int ret;





 ret = sync_inode_metadata(inode, 0);
 if (!ret)
  ret = filemap_fdatawrite(inode->i_mapping);
 return ret;
}
