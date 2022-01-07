
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct ocfs2_xattr_header {int xh_name_value_len; void* xh_free_start; } ;
struct ocfs2_xa_loc {TYPE_1__* xl_entry; TYPE_2__* xl_inode; struct ocfs2_xattr_header* xl_header; } ;
struct TYPE_4__ {struct super_block* i_sb; } ;
struct TYPE_3__ {void* xe_name_offset; } ;


 void* cpu_to_le16 (int) ;
 int le16_add_cpu (int *,int) ;
 int ocfs2_bucket_align_free_start (struct super_block*,int,int) ;
 int ocfs2_xa_get_free_start (struct ocfs2_xa_loc*) ;

__attribute__((used)) static void ocfs2_xa_bucket_add_namevalue(struct ocfs2_xa_loc *loc, int size)
{
 int free_start = ocfs2_xa_get_free_start(loc);
 struct ocfs2_xattr_header *xh = loc->xl_header;
 struct super_block *sb = loc->xl_inode->i_sb;
 int nameval_offset;

 free_start = ocfs2_bucket_align_free_start(sb, free_start, size);
 nameval_offset = free_start - size;
 loc->xl_entry->xe_name_offset = cpu_to_le16(nameval_offset);
 xh->xh_free_start = cpu_to_le16(nameval_offset);
 le16_add_cpu(&xh->xh_name_value_len, size);

}
