
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ocfs2_xattr_header {TYPE_1__* xh_entries; int xh_count; } ;
struct ocfs2_xattr_bucket {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {scalar_t__ xe_name_hash; } ;


 int ENOSPC ;
 int ML_ERROR ;
 scalar_t__ bucket_blkno (struct ocfs2_xattr_bucket*) ;
 struct ocfs2_xattr_header* bucket_xh (struct ocfs2_xattr_bucket*) ;
 int le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (scalar_t__) ;
 int mlog (int ,char*,unsigned long long,scalar_t__) ;
 scalar_t__ ocfs2_xattr_name_hash (struct inode*,char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static int ocfs2_check_xattr_bucket_collision(struct inode *inode,
           struct ocfs2_xattr_bucket *bucket,
           const char *name)
{
 struct ocfs2_xattr_header *xh = bucket_xh(bucket);
 u32 name_hash = ocfs2_xattr_name_hash(inode, name, strlen(name));

 if (name_hash != le32_to_cpu(xh->xh_entries[0].xe_name_hash))
  return 0;

 if (xh->xh_entries[le16_to_cpu(xh->xh_count) - 1].xe_name_hash ==
     xh->xh_entries[0].xe_name_hash) {
  mlog(ML_ERROR, "Too much hash collision in xattr bucket %llu, "
       "hash = %u\n",
       (unsigned long long)bucket_blkno(bucket),
       le32_to_cpu(xh->xh_entries[0].xe_name_hash));
  return -ENOSPC;
 }

 return 0;
}
