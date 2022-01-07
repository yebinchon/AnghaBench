
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kuid_t ;


 int GID_HASHBITS ;
 int from_kuid (int *,int ) ;
 int hash_long (int ,int ) ;
 int init_user_ns ;

__attribute__((used)) static int unix_gid_hash(kuid_t uid)
{
 return hash_long(from_kuid(&init_user_ns, uid), GID_HASHBITS);
}
