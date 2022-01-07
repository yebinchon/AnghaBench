
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_xattr_bucket {int * bu_inode; } ;


 int kfree (struct ocfs2_xattr_bucket*) ;
 int ocfs2_xattr_bucket_relse (struct ocfs2_xattr_bucket*) ;

__attribute__((used)) static void ocfs2_xattr_bucket_free(struct ocfs2_xattr_bucket *bucket)
{
 if (bucket) {
  ocfs2_xattr_bucket_relse(bucket);
  bucket->bu_inode = ((void*)0);
  kfree(bucket);
 }
}
