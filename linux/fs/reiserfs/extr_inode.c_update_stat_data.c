
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct treepath {int dummy; } ;
struct item_head {int dummy; } ;
struct inode {int i_sb; } ;
struct buffer_head {int dummy; } ;
typedef int loff_t ;


 int INODE_PKEY (struct inode*) ;
 struct buffer_head* PATH_PLAST_BUFFER (struct treepath*) ;
 int ih_item_body (struct buffer_head*,struct item_head*) ;
 int inode2sd (int ,struct inode*,int ) ;
 int inode2sd_v1 (int ,struct inode*,int ) ;
 int is_statdata_le_ih (struct item_head*) ;
 int reiserfs_panic (int ,char*,char*,int ,struct item_head*) ;
 scalar_t__ stat_data_v1 (struct item_head*) ;
 struct item_head* tp_item_head (struct treepath*) ;

__attribute__((used)) static void update_stat_data(struct treepath *path, struct inode *inode,
        loff_t size)
{
 struct buffer_head *bh;
 struct item_head *ih;

 bh = PATH_PLAST_BUFFER(path);
 ih = tp_item_head(path);

 if (!is_statdata_le_ih(ih))
  reiserfs_panic(inode->i_sb, "vs-13065", "key %k, found item %h",
          INODE_PKEY(inode), ih);


 if (stat_data_v1(ih)) {
  inode2sd_v1(ih_item_body(bh, ih), inode, size);
 } else {
  inode2sd(ih_item_body(bh, ih), inode, size);
 }

 return;
}
