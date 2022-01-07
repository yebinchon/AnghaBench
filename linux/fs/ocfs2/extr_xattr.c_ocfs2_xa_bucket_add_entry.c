
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ocfs2_xattr_header {struct ocfs2_xattr_entry* xh_entries; int xh_count; } ;
struct ocfs2_xattr_entry {int xe_name_hash; } ;
struct ocfs2_xa_loc {struct ocfs2_xattr_entry* xl_entry; struct ocfs2_xattr_header* xl_header; } ;


 int le16_add_cpu (int *,int) ;
 int le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 int memmove (struct ocfs2_xattr_entry*,struct ocfs2_xattr_entry*,int) ;
 int memset (struct ocfs2_xattr_entry*,int ,int) ;

__attribute__((used)) static void ocfs2_xa_bucket_add_entry(struct ocfs2_xa_loc *loc, u32 name_hash)
{
 struct ocfs2_xattr_header *xh = loc->xl_header;
 int count = le16_to_cpu(xh->xh_count);
 int low = 0, high = count - 1, tmp;
 struct ocfs2_xattr_entry *tmp_xe;





 while (low <= high && count) {
  tmp = (low + high) / 2;
  tmp_xe = &xh->xh_entries[tmp];

  if (name_hash > le32_to_cpu(tmp_xe->xe_name_hash))
   low = tmp + 1;
  else if (name_hash < le32_to_cpu(tmp_xe->xe_name_hash))
   high = tmp - 1;
  else {
   low = tmp;
   break;
  }
 }

 if (low != count)
  memmove(&xh->xh_entries[low + 1],
   &xh->xh_entries[low],
   ((count - low) * sizeof(struct ocfs2_xattr_entry)));

 le16_add_cpu(&xh->xh_count, 1);
 loc->xl_entry = &xh->xh_entries[low];
 memset(loc->xl_entry, 0, sizeof(struct ocfs2_xattr_entry));
}
