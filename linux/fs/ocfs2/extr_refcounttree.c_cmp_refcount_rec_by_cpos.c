
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct ocfs2_refcount_rec {int r_cpos; } ;


 scalar_t__ le64_to_cpu (int ) ;

__attribute__((used)) static int cmp_refcount_rec_by_cpos(const void *a, const void *b)
{
 const struct ocfs2_refcount_rec *l = a, *r = b;
 u64 l_cpos = le64_to_cpu(l->r_cpos);
 u64 r_cpos = le64_to_cpu(r->r_cpos);

 if (l_cpos > r_cpos)
  return 1;
 if (l_cpos < r_cpos)
  return -1;
 return 0;
}
