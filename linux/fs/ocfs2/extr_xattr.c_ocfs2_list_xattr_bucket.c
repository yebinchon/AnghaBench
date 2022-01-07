
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ocfs2_xattr_tree_list {int result; int buffer_size; int buffer; } ;
struct ocfs2_xattr_entry {int xe_name_len; } ;
struct ocfs2_xattr_bucket {int dummy; } ;
struct inode {int i_sb; } ;
struct TYPE_3__ {struct ocfs2_xattr_entry* xh_entries; int xh_count; } ;


 scalar_t__ bucket_block (struct ocfs2_xattr_bucket*,int) ;
 TYPE_1__* bucket_xh (struct ocfs2_xattr_bucket*) ;
 int le16_to_cpu (int ) ;
 int ocfs2_xattr_bucket_get_name_value (int ,TYPE_1__*,int,int*,int*) ;
 int ocfs2_xattr_get_type (struct ocfs2_xattr_entry*) ;
 int ocfs2_xattr_list_entry (int ,int ,int ,int *,int,char const*,int ) ;

__attribute__((used)) static int ocfs2_list_xattr_bucket(struct inode *inode,
       struct ocfs2_xattr_bucket *bucket,
       void *para)
{
 int ret = 0, type;
 struct ocfs2_xattr_tree_list *xl = (struct ocfs2_xattr_tree_list *)para;
 int i, block_off, new_offset;
 const char *name;

 for (i = 0 ; i < le16_to_cpu(bucket_xh(bucket)->xh_count); i++) {
  struct ocfs2_xattr_entry *entry = &bucket_xh(bucket)->xh_entries[i];
  type = ocfs2_xattr_get_type(entry);

  ret = ocfs2_xattr_bucket_get_name_value(inode->i_sb,
       bucket_xh(bucket),
       i,
       &block_off,
       &new_offset);
  if (ret)
   break;

  name = (const char *)bucket_block(bucket, block_off) +
   new_offset;
  ret = ocfs2_xattr_list_entry(inode->i_sb,
          xl->buffer,
          xl->buffer_size,
          &xl->result,
          type, name,
          entry->xe_name_len);
  if (ret)
   break;
 }

 return ret;
}
