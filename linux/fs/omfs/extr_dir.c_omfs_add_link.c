
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct omfs_inode {void* i_parent; void* i_sibling; scalar_t__ i_name; } ;
struct inode {int i_ctime; int i_ino; int i_sb; } ;
struct TYPE_2__ {char* name; int len; } ;
struct dentry {TYPE_1__ d_name; int d_parent; } ;
struct buffer_head {int * b_data; } ;
typedef void* __be64 ;


 int ENOMEM ;
 scalar_t__ OMFS_NAMELEN ;
 int be64_to_cpu (void*) ;
 int brelse (struct buffer_head*) ;
 void* cpu_to_be64 (int ) ;
 int current_time (struct inode*) ;
 struct inode* d_inode (int ) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 int mark_inode_dirty (struct inode*) ;
 int memcpy (scalar_t__,char const*,int) ;
 int memset (scalar_t__,int ,scalar_t__) ;
 struct buffer_head* omfs_bread (int ,int ) ;
 struct buffer_head* omfs_get_bucket (struct inode*,char const*,int,int*) ;

__attribute__((used)) static int omfs_add_link(struct dentry *dentry, struct inode *inode)
{
 struct inode *dir = d_inode(dentry->d_parent);
 const char *name = dentry->d_name.name;
 int namelen = dentry->d_name.len;
 struct omfs_inode *oi;
 struct buffer_head *bh;
 u64 block;
 __be64 *entry;
 int ofs;


 bh = omfs_get_bucket(dir, name, namelen, &ofs);
 if (!bh)
  goto out;

 entry = (__be64 *) &bh->b_data[ofs];
 block = be64_to_cpu(*entry);
 *entry = cpu_to_be64(inode->i_ino);
 mark_buffer_dirty(bh);
 brelse(bh);


 bh = omfs_bread(dir->i_sb, inode->i_ino);
 if (!bh)
  goto out;

 oi = (struct omfs_inode *) bh->b_data;
 memcpy(oi->i_name, name, namelen);
 memset(oi->i_name + namelen, 0, OMFS_NAMELEN - namelen);
 oi->i_sibling = cpu_to_be64(block);
 oi->i_parent = cpu_to_be64(dir->i_ino);
 mark_buffer_dirty(bh);
 brelse(bh);

 dir->i_ctime = current_time(dir);


 mark_inode_dirty(dir);
 mark_inode_dirty(inode);
 return 0;
out:
 return -ENOMEM;
}
