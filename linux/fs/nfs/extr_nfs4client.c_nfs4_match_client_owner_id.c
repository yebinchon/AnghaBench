
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_client {int * cl_owner_id; } ;


 scalar_t__ strcmp (int *,int *) ;

__attribute__((used)) static bool nfs4_match_client_owner_id(const struct nfs_client *clp1,
  const struct nfs_client *clp2)
{
 if (clp1->cl_owner_id == ((void*)0) || clp2->cl_owner_id == ((void*)0))
  return 1;
 return strcmp(clp1->cl_owner_id, clp2->cl_owner_id) == 0;
}
