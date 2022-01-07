
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_ff_layout_mirror {int fh_versions_cnt; int * fh_versions; } ;


 scalar_t__ nfs_compare_fh (int *,int *) ;

__attribute__((used)) static bool ff_mirror_match_fh(const struct nfs4_ff_layout_mirror *m1,
  const struct nfs4_ff_layout_mirror *m2)
{
 int i, j;

 if (m1->fh_versions_cnt != m2->fh_versions_cnt)
  return 0;
 for (i = 0; i < m1->fh_versions_cnt; i++) {
  bool found_fh = 0;
  for (j = 0; j < m2->fh_versions_cnt; j++) {
   if (nfs_compare_fh(&m1->fh_versions[i],
     &m2->fh_versions[j]) == 0) {
    found_fh = 1;
    break;
   }
  }
  if (!found_fh)
   return 0;
 }
 return 1;
}
