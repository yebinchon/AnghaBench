
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_xattr_bucket {int dummy; } ;
struct ocfs2_xa_loc {struct ocfs2_xattr_bucket* xl_storage; } ;
typedef int handle_t ;


 int ocfs2_xattr_bucket_journal_dirty (int *,struct ocfs2_xattr_bucket*) ;

__attribute__((used)) static void ocfs2_xa_bucket_journal_dirty(handle_t *handle,
       struct ocfs2_xa_loc *loc)
{
 struct ocfs2_xattr_bucket *bucket = loc->xl_storage;

 ocfs2_xattr_bucket_journal_dirty(handle, bucket);
}
