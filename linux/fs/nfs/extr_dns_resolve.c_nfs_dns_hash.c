
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_dns_ent {int hostname; } ;


 int NFS_DNS_HASHBITS ;
 unsigned int hash_str (int ,int ) ;

__attribute__((used)) static unsigned int nfs_dns_hash(const struct nfs_dns_ent *key)
{
 return hash_str(key->hostname, NFS_DNS_HASHBITS);
}
