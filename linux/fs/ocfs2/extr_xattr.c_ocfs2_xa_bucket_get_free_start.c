
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_xattr_bucket {int dummy; } ;
struct ocfs2_xa_loc {struct ocfs2_xattr_bucket* xl_storage; } ;
struct TYPE_2__ {int xh_free_start; } ;


 TYPE_1__* bucket_xh (struct ocfs2_xattr_bucket*) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int ocfs2_xa_bucket_get_free_start(struct ocfs2_xa_loc *loc)
{
 struct ocfs2_xattr_bucket *bucket = loc->xl_storage;
 return le16_to_cpu(bucket_xh(bucket)->xh_free_start);
}
