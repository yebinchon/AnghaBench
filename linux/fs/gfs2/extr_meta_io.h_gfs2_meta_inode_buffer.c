
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_inode {int i_no_addr; } ;
struct buffer_head {int dummy; } ;


 int gfs2_meta_indirect_buffer (struct gfs2_inode*,int ,int ,struct buffer_head**) ;

__attribute__((used)) static inline int gfs2_meta_inode_buffer(struct gfs2_inode *ip,
      struct buffer_head **bhp)
{
 return gfs2_meta_indirect_buffer(ip, 0, ip->i_no_addr, bhp);
}
