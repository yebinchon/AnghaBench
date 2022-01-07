
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct smack_known {int smk_secid; } ;
struct cred {int dummy; } ;


 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int smack_cred (struct cred const*) ;
 struct smack_known* smk_of_task (int ) ;

__attribute__((used)) static void smack_cred_getsecid(const struct cred *cred, u32 *secid)
{
 struct smack_known *skp;

 rcu_read_lock();
 skp = smk_of_task(smack_cred(cred));
 *secid = skp->smk_secid;
 rcu_read_unlock();
}
