
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_xattr_entry {int dummy; } ;
struct ocfs2_xattr_bucket {int bu_inode; } ;
struct ocfs2_xa_loc {int xl_size; struct ocfs2_xattr_entry* xl_entry; int xl_header; struct ocfs2_xattr_bucket* xl_storage; int * xl_ops; int xl_inode; } ;


 int OCFS2_XATTR_BUCKET_SIZE ;
 int bucket_xh (struct ocfs2_xattr_bucket*) ;
 int ocfs2_xa_bucket_loc_ops ;

__attribute__((used)) static void ocfs2_init_xattr_bucket_xa_loc(struct ocfs2_xa_loc *loc,
        struct ocfs2_xattr_bucket *bucket,
        struct ocfs2_xattr_entry *entry)
{
 loc->xl_inode = bucket->bu_inode;
 loc->xl_ops = &ocfs2_xa_bucket_loc_ops;
 loc->xl_storage = bucket;
 loc->xl_header = bucket_xh(bucket);
 loc->xl_entry = entry;
 loc->xl_size = OCFS2_XATTR_BUCKET_SIZE;
}
