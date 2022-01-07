
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_xattr_bucket {int bu_blocks; int ** bu_bhs; } ;


 int brelse (int *) ;

__attribute__((used)) static void ocfs2_xattr_bucket_relse(struct ocfs2_xattr_bucket *bucket)
{
 int i;

 for (i = 0; i < bucket->bu_blocks; i++) {
  brelse(bucket->bu_bhs[i]);
  bucket->bu_bhs[i] = ((void*)0);
 }
}
