
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_write_verifier {int data; } ;


 int memcmp (int ,int ,int) ;

__attribute__((used)) static inline int
nfs_write_verifier_cmp(const struct nfs_write_verifier *v1,
  const struct nfs_write_verifier *v2)
{
 return memcmp(v1->data, v2->data, sizeof(v1->data));
}
