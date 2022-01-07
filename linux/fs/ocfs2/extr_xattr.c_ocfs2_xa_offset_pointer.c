
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_xa_loc {int xl_size; TYPE_1__* xl_ops; } ;
struct TYPE_2__ {void* (* xlo_offset_pointer ) (struct ocfs2_xa_loc*,int) ;} ;


 int BUG_ON (int) ;
 void* stub1 (struct ocfs2_xa_loc*,int) ;

__attribute__((used)) static void *ocfs2_xa_offset_pointer(struct ocfs2_xa_loc *loc, int offset)
{
 BUG_ON(offset >= loc->xl_size);
 return loc->xl_ops->xlo_offset_pointer(loc, offset);
}
