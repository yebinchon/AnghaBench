
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_acl {int dummy; } ;
struct nfs4_ace {int dummy; } ;



int nfs4_acl_bytes(int entries)
{
 return sizeof(struct nfs4_acl) + entries * sizeof(struct nfs4_ace);
}
