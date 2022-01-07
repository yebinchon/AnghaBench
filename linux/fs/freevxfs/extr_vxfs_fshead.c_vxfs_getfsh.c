
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxfs_fsh {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int b_data; } ;


 int GFP_KERNEL ;
 int brelse (struct buffer_head*) ;
 struct vxfs_fsh* kmalloc (int,int ) ;
 int memcpy (struct vxfs_fsh*,int ,int) ;
 int put_bh (struct buffer_head*) ;
 struct buffer_head* vxfs_bread (struct inode*,int) ;

__attribute__((used)) static struct vxfs_fsh *
vxfs_getfsh(struct inode *ip, int which)
{
 struct buffer_head *bp;

 bp = vxfs_bread(ip, which);
 if (bp) {
  struct vxfs_fsh *fhp;

  if (!(fhp = kmalloc(sizeof(*fhp), GFP_KERNEL)))
   goto out;
  memcpy(fhp, bp->b_data, sizeof(*fhp));

  put_bh(bp);
  return (fhp);
 }
out:
 brelse(bp);
 return ((void*)0);
}
