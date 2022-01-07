
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ocfs2_xattr_entry {int xe_name_hash; } ;


 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static int cmp_xe(const void *a, const void *b)
{
 const struct ocfs2_xattr_entry *l = a, *r = b;
 u32 l_hash = le32_to_cpu(l->xe_name_hash);
 u32 r_hash = le32_to_cpu(r->xe_name_hash);

 if (l_hash > r_hash)
  return 1;
 if (l_hash < r_hash)
  return -1;
 return 0;
}
