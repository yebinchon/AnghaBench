
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_xattr_value_buf {TYPE_1__* vb_xv; } ;
struct ocfs2_xa_loc {int xl_entry; } ;
struct TYPE_2__ {int xr_clusters; } ;


 unsigned int le32_to_cpu (int ) ;
 int ocfs2_xa_fill_value_buf (struct ocfs2_xa_loc*,struct ocfs2_xattr_value_buf*) ;
 scalar_t__ ocfs2_xattr_is_local (int ) ;

__attribute__((used)) static unsigned int ocfs2_xa_value_clusters(struct ocfs2_xa_loc *loc)
{
 struct ocfs2_xattr_value_buf vb;

 if (ocfs2_xattr_is_local(loc->xl_entry))
  return 0;

 ocfs2_xa_fill_value_buf(loc, &vb);
 return le32_to_cpu(vb.vb_xv->xr_clusters);
}
