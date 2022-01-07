
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_writeverf {int verifier; } ;


 int nfs_write_verifier_cmp (int *,int *) ;

__attribute__((used)) static int nfs_direct_cmp_verf(const struct nfs_writeverf *v1,
  const struct nfs_writeverf *v2)
{
 return nfs_write_verifier_cmp(&v1->verifier, &v2->verifier);
}
