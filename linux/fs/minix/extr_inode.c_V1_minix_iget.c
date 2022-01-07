
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int * i1_data; } ;
struct minix_inode_info {TYPE_4__ u; } ;
struct minix_inode {int * i_zone; int i_time; int i_size; int i_nlinks; int i_gid; int i_uid; int i_mode; } ;
struct TYPE_7__ {scalar_t__ tv_nsec; int tv_sec; } ;
struct TYPE_6__ {scalar_t__ tv_nsec; int tv_sec; } ;
struct TYPE_5__ {scalar_t__ tv_nsec; int tv_sec; } ;
struct inode {scalar_t__ i_blocks; TYPE_3__ i_ctime; TYPE_2__ i_atime; TYPE_1__ i_mtime; int i_size; int i_mode; int i_ino; int i_sb; } ;
struct buffer_head {int dummy; } ;


 int EIO ;
 struct inode* ERR_PTR (int ) ;
 int brelse (struct buffer_head*) ;
 int i_gid_write (struct inode*,int ) ;
 int i_uid_write (struct inode*,int ) ;
 int iget_failed (struct inode*) ;
 struct minix_inode* minix_V1_raw_inode (int ,int ,struct buffer_head**) ;
 struct minix_inode_info* minix_i (struct inode*) ;
 int minix_set_inode (struct inode*,int ) ;
 int old_decode_dev (int ) ;
 int set_nlink (struct inode*,int ) ;
 int unlock_new_inode (struct inode*) ;

__attribute__((used)) static struct inode *V1_minix_iget(struct inode *inode)
{
 struct buffer_head * bh;
 struct minix_inode * raw_inode;
 struct minix_inode_info *minix_inode = minix_i(inode);
 int i;

 raw_inode = minix_V1_raw_inode(inode->i_sb, inode->i_ino, &bh);
 if (!raw_inode) {
  iget_failed(inode);
  return ERR_PTR(-EIO);
 }
 inode->i_mode = raw_inode->i_mode;
 i_uid_write(inode, raw_inode->i_uid);
 i_gid_write(inode, raw_inode->i_gid);
 set_nlink(inode, raw_inode->i_nlinks);
 inode->i_size = raw_inode->i_size;
 inode->i_mtime.tv_sec = inode->i_atime.tv_sec = inode->i_ctime.tv_sec = raw_inode->i_time;
 inode->i_mtime.tv_nsec = 0;
 inode->i_atime.tv_nsec = 0;
 inode->i_ctime.tv_nsec = 0;
 inode->i_blocks = 0;
 for (i = 0; i < 9; i++)
  minix_inode->u.i1_data[i] = raw_inode->i_zone[i];
 minix_set_inode(inode, old_decode_dev(raw_inode->i_zone[0]));
 brelse(bh);
 unlock_new_inode(inode);
 return inode;
}
