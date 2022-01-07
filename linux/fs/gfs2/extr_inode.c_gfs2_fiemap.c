
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct inode {int dummy; } ;
struct gfs2_inode {int i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct fiemap_extent_info {int dummy; } ;


 struct gfs2_inode* GFS2_I (struct inode*) ;
 int LM_ST_SHARED ;
 int gfs2_glock_dq_uninit (struct gfs2_holder*) ;
 int gfs2_glock_nq_init (int ,int ,int ,struct gfs2_holder*) ;
 int gfs2_iomap_ops ;
 int inode_lock_shared (struct inode*) ;
 int inode_unlock_shared (struct inode*) ;
 int iomap_fiemap (struct inode*,struct fiemap_extent_info*,int ,int ,int *) ;

__attribute__((used)) static int gfs2_fiemap(struct inode *inode, struct fiemap_extent_info *fieinfo,
         u64 start, u64 len)
{
 struct gfs2_inode *ip = GFS2_I(inode);
 struct gfs2_holder gh;
 int ret;

 inode_lock_shared(inode);

 ret = gfs2_glock_nq_init(ip->i_gl, LM_ST_SHARED, 0, &gh);
 if (ret)
  goto out;

 ret = iomap_fiemap(inode, fieinfo, start, len, &gfs2_iomap_ops);

 gfs2_glock_dq_uninit(&gh);

out:
 inode_unlock_shared(inode);
 return ret;
}
