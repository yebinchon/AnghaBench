
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_xattr_info {int dummy; } ;
struct ocfs2_xa_loc {int xl_entry; } ;


 scalar_t__ namevalue_size_xe (int ) ;
 scalar_t__ namevalue_size_xi (struct ocfs2_xattr_info*) ;

__attribute__((used)) static int ocfs2_xa_block_can_reuse(struct ocfs2_xa_loc *loc,
        struct ocfs2_xattr_info *xi)
{




 return namevalue_size_xe(loc->xl_entry) ==
  namevalue_size_xi(xi);
}
