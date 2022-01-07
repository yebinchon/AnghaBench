
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_xattr_header {TYPE_1__* xh_entries; int xh_count; } ;
struct ocfs2_xa_loc {int xl_size; struct ocfs2_xattr_header* xl_header; } ;
struct TYPE_2__ {int xe_name_offset; } ;


 int le16_to_cpu (int ) ;

__attribute__((used)) static int ocfs2_xa_block_get_free_start(struct ocfs2_xa_loc *loc)
{
 struct ocfs2_xattr_header *xh = loc->xl_header;
 int i, count = le16_to_cpu(xh->xh_count);
 int offset, free_start = loc->xl_size;

 for (i = 0; i < count; i++) {
  offset = le16_to_cpu(xh->xh_entries[i].xe_name_offset);
  if (offset < free_start)
   free_start = offset;
 }

 return free_start;
}
