
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mnt; int dentry; } ;
struct svc_export {TYPE_1__ ex_path; int ex_client; } ;


 int EXPORT_HASHBITS ;
 int hash_ptr (int ,int ) ;

__attribute__((used)) static int
svc_export_hash(struct svc_export *exp)
{
 int hash;

 hash = hash_ptr(exp->ex_client, EXPORT_HASHBITS);
 hash ^= hash_ptr(exp->ex_path.dentry, EXPORT_HASHBITS);
 hash ^= hash_ptr(exp->ex_path.mnt, EXPORT_HASHBITS);
 return hash;
}
