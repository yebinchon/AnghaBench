
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_expkey {int ek_fsidtype; int ek_client; scalar_t__ ek_fsid; } ;


 int EXPKEY_HASHBITS ;
 int EXPKEY_HASHMASK ;
 int hash_mem (char*,int,int ) ;
 int hash_ptr (int ,int ) ;
 int key_len (int) ;

__attribute__((used)) static int
svc_expkey_hash(struct svc_expkey *item)
{
 int hash = item->ek_fsidtype;
 char * cp = (char*)item->ek_fsid;
 int len = key_len(item->ek_fsidtype);

 hash ^= hash_mem(cp, len, EXPKEY_HASHBITS);
 hash ^= hash_ptr(item->ek_client, EXPKEY_HASHBITS);
 hash &= EXPKEY_HASHMASK;
 return hash;
}
