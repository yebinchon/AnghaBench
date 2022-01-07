
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct vxfs_sb_info {int dummy; } ;
struct vxfs_direct {int d_name; int d_namelen; int d_ino; int d_reclen; } ;
struct vxfs_dirblk {int dummy; } ;
struct page {int dummy; } ;
struct inode {int i_mapping; TYPE_2__* i_sb; int i_size; } ;
struct TYPE_3__ {char* name; int len; } ;
struct dentry {TYPE_1__ d_name; } ;
typedef int loff_t ;
struct TYPE_4__ {int s_blocksize; } ;


 scalar_t__ IS_ERR (struct page*) ;
 int PAGE_MASK ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int VXFS_DIRBLKOV (struct vxfs_sb_info*,struct vxfs_dirblk*) ;
 int VXFS_DIRROUND (int ) ;
 struct vxfs_sb_info* VXFS_SBI (TYPE_2__*) ;
 int fs16_to_cpu (struct vxfs_sb_info*,int ) ;
 int memcmp (char const*,int ,int) ;
 scalar_t__ page_address (struct page*) ;
 struct page* vxfs_get_page (int ,int) ;
 int vxfs_put_page (struct page*) ;

__attribute__((used)) static struct vxfs_direct *
vxfs_find_entry(struct inode *ip, struct dentry *dp, struct page **ppp)
{
 u_long bsize = ip->i_sb->s_blocksize;
 const char *name = dp->d_name.name;
 int namelen = dp->d_name.len;
 loff_t limit = VXFS_DIRROUND(ip->i_size);
 struct vxfs_direct *de_exit = ((void*)0);
 loff_t pos = 0;
 struct vxfs_sb_info *sbi = VXFS_SBI(ip->i_sb);

 while (pos < limit) {
  struct page *pp;
  char *kaddr;
  int pg_ofs = pos & ~PAGE_MASK;

  pp = vxfs_get_page(ip->i_mapping, pos >> PAGE_SHIFT);
  if (IS_ERR(pp))
   return ((void*)0);
  kaddr = (char *)page_address(pp);

  while (pg_ofs < PAGE_SIZE && pos < limit) {
   struct vxfs_direct *de;

   if ((pos & (bsize - 1)) < 4) {
    struct vxfs_dirblk *dbp =
     (struct vxfs_dirblk *)
      (kaddr + (pos & ~PAGE_MASK));
    int overhead = VXFS_DIRBLKOV(sbi, dbp);

    pos += overhead;
    pg_ofs += overhead;
   }
   de = (struct vxfs_direct *)(kaddr + pg_ofs);

   if (!de->d_reclen) {
    pos += bsize - 1;
    pos &= ~(bsize - 1);
    break;
   }

   pg_ofs += fs16_to_cpu(sbi, de->d_reclen);
   pos += fs16_to_cpu(sbi, de->d_reclen);
   if (!de->d_ino)
    continue;

   if (namelen != fs16_to_cpu(sbi, de->d_namelen))
    continue;
   if (!memcmp(name, de->d_name, namelen)) {
    *ppp = pp;
    de_exit = de;
    break;
   }
  }
  if (!de_exit)
   vxfs_put_page(pp);
  else
   break;
 }

 return de_exit;
}
