
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_xattr_header {int * xh_entries; int xh_count; } ;
struct ocfs2_xattr_entry {int dummy; } ;
struct ocfs2_xa_loc {struct ocfs2_xattr_entry* xl_entry; struct ocfs2_xattr_header* xl_header; } ;


 int le16_add_cpu (int *,int) ;
 int le16_to_cpu (int ) ;
 int memmove (int *,int *,int) ;
 int memset (int *,int ,int) ;
 int ocfs2_xa_wipe_namevalue (struct ocfs2_xa_loc*) ;

__attribute__((used)) static void ocfs2_xa_remove_entry(struct ocfs2_xa_loc *loc)
{
 int index, count;
 struct ocfs2_xattr_header *xh = loc->xl_header;
 struct ocfs2_xattr_entry *entry = loc->xl_entry;

 ocfs2_xa_wipe_namevalue(loc);
 loc->xl_entry = ((void*)0);

 le16_add_cpu(&xh->xh_count, -1);
 count = le16_to_cpu(xh->xh_count);






 if (count) {
  index = ((char *)entry - (char *)&xh->xh_entries) /
   sizeof(struct ocfs2_xattr_entry);
  memmove(&xh->xh_entries[index], &xh->xh_entries[index + 1],
   (count - index) * sizeof(struct ocfs2_xattr_entry));
  memset(&xh->xh_entries[count], 0,
         sizeof(struct ocfs2_xattr_entry));
 }
}
