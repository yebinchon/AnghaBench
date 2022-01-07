
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint ;
struct super_block {int dummy; } ;
struct metapage {scalar_t__ data; } ;
struct jfs_sb_info {int l2nbperpage; scalar_t__ ipaimap2; scalar_t__ ipaimap; void* inostamp; void* gengen; int ait2; } ;
struct inode {int i_ino; int i_flags; TYPE_1__* i_mapping; } ;
struct dinode {int di_inostamp; int di_gengen; } ;
typedef int ino_t ;
struct TYPE_4__ {scalar_t__ ipimap; } ;
struct TYPE_3__ {int * a_ops; } ;


 int AITBL_OFF ;
 int ASSERT (int) ;
 int FILESYSTEM_I ;
 int GFP_NOFS ;
 int INOSPEREXT ;
 TYPE_2__* JFS_IP (struct inode*) ;
 struct jfs_sb_info* JFS_SBI (struct super_block*) ;
 int L2PSIZE ;
 int PSIZE ;
 int S_NOQUOTA ;
 int addressPXD (int *) ;
 scalar_t__ copy_from_dinode (struct dinode*,struct inode*) ;
 int inode_fake_hash (struct inode*) ;
 int iput (struct inode*) ;
 int jfs_err (char*) ;
 int jfs_metapage_aops ;
 void* le32_to_cpu (int ) ;
 int mapping_set_gfp_mask (TYPE_1__*,int ) ;
 struct inode* new_inode (struct super_block*) ;
 struct metapage* read_metapage (struct inode*,int,int ,int) ;
 int release_metapage (struct metapage*) ;
 int set_nlink (struct inode*,int) ;

struct inode *diReadSpecial(struct super_block *sb, ino_t inum, int secondary)
{
 struct jfs_sb_info *sbi = JFS_SBI(sb);
 uint address;
 struct dinode *dp;
 struct inode *ip;
 struct metapage *mp;

 ip = new_inode(sb);
 if (ip == ((void*)0)) {
  jfs_err("diReadSpecial: new_inode returned NULL!");
  return ip;
 }

 if (secondary) {
  address = addressPXD(&sbi->ait2) >> sbi->l2nbperpage;
  JFS_IP(ip)->ipimap = sbi->ipaimap2;
 } else {
  address = AITBL_OFF >> L2PSIZE;
  JFS_IP(ip)->ipimap = sbi->ipaimap;
 }

 ASSERT(inum < INOSPEREXT);

 ip->i_ino = inum;

 address += inum >> 3;


 mp = read_metapage(ip, address << sbi->l2nbperpage, PSIZE, 1);
 if (mp == ((void*)0)) {
  set_nlink(ip, 1);
  iput(ip);
  return (((void*)0));
 }


 dp = (struct dinode *) (mp->data);
 dp += inum % 8;


 if ((copy_from_dinode(dp, ip)) != 0) {

  set_nlink(ip, 1);
  iput(ip);

  release_metapage(mp);
  return (((void*)0));

 }

 ip->i_mapping->a_ops = &jfs_metapage_aops;
 mapping_set_gfp_mask(ip->i_mapping, GFP_NOFS);


 ip->i_flags |= S_NOQUOTA;

 if ((inum == FILESYSTEM_I) && (JFS_IP(ip)->ipimap == sbi->ipaimap)) {
  sbi->gengen = le32_to_cpu(dp->di_gengen);
  sbi->inostamp = le32_to_cpu(dp->di_inostamp);
 }


 release_metapage(mp);

 inode_fake_hash(ip);

 return (ip);
}
