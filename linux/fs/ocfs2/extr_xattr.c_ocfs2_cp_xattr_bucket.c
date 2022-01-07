
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct ocfs2_xattr_bucket {int dummy; } ;
struct inode {int dummy; } ;
typedef int handle_t ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int OCFS2_JOURNAL_ACCESS_CREATE ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 int mlog_errno (int) ;
 int ocfs2_init_xattr_bucket (struct ocfs2_xattr_bucket*,scalar_t__,int) ;
 int ocfs2_read_xattr_bucket (struct ocfs2_xattr_bucket*,scalar_t__) ;
 int ocfs2_xattr_bucket_copy_data (struct ocfs2_xattr_bucket*,struct ocfs2_xattr_bucket*) ;
 int ocfs2_xattr_bucket_free (struct ocfs2_xattr_bucket*) ;
 int ocfs2_xattr_bucket_journal_access (int *,struct ocfs2_xattr_bucket*,int ) ;
 int ocfs2_xattr_bucket_journal_dirty (int *,struct ocfs2_xattr_bucket*) ;
 struct ocfs2_xattr_bucket* ocfs2_xattr_bucket_new (struct inode*) ;
 int trace_ocfs2_cp_xattr_bucket (unsigned long long,unsigned long long,int) ;

__attribute__((used)) static int ocfs2_cp_xattr_bucket(struct inode *inode,
     handle_t *handle,
     u64 s_blkno,
     u64 t_blkno,
     int t_is_new)
{
 int ret;
 struct ocfs2_xattr_bucket *s_bucket = ((void*)0), *t_bucket = ((void*)0);

 BUG_ON(s_blkno == t_blkno);

 trace_ocfs2_cp_xattr_bucket((unsigned long long)s_blkno,
        (unsigned long long)t_blkno,
        t_is_new);

 s_bucket = ocfs2_xattr_bucket_new(inode);
 t_bucket = ocfs2_xattr_bucket_new(inode);
 if (!s_bucket || !t_bucket) {
  ret = -ENOMEM;
  mlog_errno(ret);
  goto out;
 }

 ret = ocfs2_read_xattr_bucket(s_bucket, s_blkno);
 if (ret)
  goto out;





 ret = ocfs2_init_xattr_bucket(t_bucket, t_blkno, t_is_new);
 if (ret)
  goto out;
 ret = ocfs2_xattr_bucket_journal_access(handle, t_bucket,
      t_is_new ?
      OCFS2_JOURNAL_ACCESS_CREATE :
      OCFS2_JOURNAL_ACCESS_WRITE);
 if (ret)
  goto out;

 ocfs2_xattr_bucket_copy_data(t_bucket, s_bucket);
 ocfs2_xattr_bucket_journal_dirty(handle, t_bucket);

out:
 ocfs2_xattr_bucket_free(t_bucket);
 ocfs2_xattr_bucket_free(s_bucket);

 return ret;
}
