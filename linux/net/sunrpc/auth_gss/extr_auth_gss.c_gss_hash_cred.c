
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct auth_cred {TYPE_1__* cred; } ;
struct TYPE_2__ {int fsuid; } ;


 int from_kuid (int *,int ) ;
 int hash_64 (int ,unsigned int) ;
 int init_user_ns ;

__attribute__((used)) static int
gss_hash_cred(struct auth_cred *acred, unsigned int hashbits)
{
 return hash_64(from_kuid(&init_user_ns, acred->cred->fsuid), hashbits);
}
