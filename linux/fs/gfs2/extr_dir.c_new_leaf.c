
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct timespec64 {int tv_nsec; int tv_sec; } ;
struct inode {int dummy; } ;
struct gfs2_leaf {int lf_reserved2; void* lf_sec; void* lf_nsec; void* lf_dist; void* lf_inode; scalar_t__ lf_next; void* lf_dirent_format; scalar_t__ lf_entries; int lf_depth; } ;
struct gfs2_inode {int i_no_addr; int i_gl; } ;
struct gfs2_dirent {int dummy; } ;
struct buffer_head {scalar_t__ b_size; scalar_t__ b_data; } ;


 int GFS2_FORMAT_DE ;
 int GFS2_FORMAT_LF ;
 struct gfs2_inode* GFS2_I (struct inode*) ;
 int GFS2_METATYPE_LF ;
 int GFS2_SB (struct inode*) ;
 int cpu_to_be16 (int ) ;
 void* cpu_to_be32 (int) ;
 void* cpu_to_be64 (int ) ;
 struct timespec64 current_time (struct inode*) ;
 int empty_name ;
 int gfs2_alloc_blocks (struct gfs2_inode*,int *,unsigned int*,int ,int *) ;
 struct buffer_head* gfs2_meta_new (int ,int ) ;
 int gfs2_metatype_set (struct buffer_head*,int ,int ) ;
 int gfs2_qstr2dirent (int *,scalar_t__,struct gfs2_dirent*) ;
 int gfs2_trans_add_meta (int ,struct buffer_head*) ;
 int gfs2_trans_remove_revoke (int ,int ,int) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static struct gfs2_leaf *new_leaf(struct inode *inode, struct buffer_head **pbh, u16 depth)
{
 struct gfs2_inode *ip = GFS2_I(inode);
 unsigned int n = 1;
 u64 bn;
 int error;
 struct buffer_head *bh;
 struct gfs2_leaf *leaf;
 struct gfs2_dirent *dent;
 struct timespec64 tv = current_time(inode);

 error = gfs2_alloc_blocks(ip, &bn, &n, 0, ((void*)0));
 if (error)
  return ((void*)0);
 bh = gfs2_meta_new(ip->i_gl, bn);
 if (!bh)
  return ((void*)0);

 gfs2_trans_remove_revoke(GFS2_SB(inode), bn, 1);
 gfs2_trans_add_meta(ip->i_gl, bh);
 gfs2_metatype_set(bh, GFS2_METATYPE_LF, GFS2_FORMAT_LF);
 leaf = (struct gfs2_leaf *)bh->b_data;
 leaf->lf_depth = cpu_to_be16(depth);
 leaf->lf_entries = 0;
 leaf->lf_dirent_format = cpu_to_be32(GFS2_FORMAT_DE);
 leaf->lf_next = 0;
 leaf->lf_inode = cpu_to_be64(ip->i_no_addr);
 leaf->lf_dist = cpu_to_be32(1);
 leaf->lf_nsec = cpu_to_be32(tv.tv_nsec);
 leaf->lf_sec = cpu_to_be64(tv.tv_sec);
 memset(leaf->lf_reserved2, 0, sizeof(leaf->lf_reserved2));
 dent = (struct gfs2_dirent *)(leaf+1);
 gfs2_qstr2dirent(&empty_name, bh->b_size - sizeof(struct gfs2_leaf), dent);
 *pbh = bh;
 return leaf;
}
