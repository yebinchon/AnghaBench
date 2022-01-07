
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_xattr_header {TYPE_1__* xh_entries; int xh_count; } ;
struct ocfs2_xattr_entry {int xe_name_offset; } ;
struct ocfs2_xa_loc {struct ocfs2_xattr_header* xl_header; struct ocfs2_xattr_entry* xl_entry; } ;
struct TYPE_2__ {int xe_name_offset; } ;


 int le16_add_cpu (int *,int) ;
 int le16_to_cpu (int ) ;
 int memmove (char*,char*,int) ;
 int memset (char*,int ,int) ;
 int namevalue_size_xe (struct ocfs2_xattr_entry*) ;
 int ocfs2_xa_get_free_start (struct ocfs2_xa_loc*) ;

__attribute__((used)) static void ocfs2_xa_block_wipe_namevalue(struct ocfs2_xa_loc *loc)
{
 int i, offset;
 int namevalue_offset, first_namevalue_offset, namevalue_size;
 struct ocfs2_xattr_entry *entry = loc->xl_entry;
 struct ocfs2_xattr_header *xh = loc->xl_header;
 int count = le16_to_cpu(xh->xh_count);

 namevalue_offset = le16_to_cpu(entry->xe_name_offset);
 namevalue_size = namevalue_size_xe(entry);
 first_namevalue_offset = ocfs2_xa_get_free_start(loc);


 memmove((char *)xh + first_namevalue_offset + namevalue_size,
  (char *)xh + first_namevalue_offset,
  namevalue_offset - first_namevalue_offset);
 memset((char *)xh + first_namevalue_offset, 0, namevalue_size);


 for (i = 0; i < count; i++) {
  offset = le16_to_cpu(xh->xh_entries[i].xe_name_offset);
  if (offset <= namevalue_offset)
   le16_add_cpu(&xh->xh_entries[i].xe_name_offset,
         namevalue_size);
 }





}
