
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smack_known {int smk_secid; } ;
struct netlbl_audit {int secid; int sessionid; int loginuid; } ;


 int audit_get_loginuid (int ) ;
 int audit_get_sessionid (int ) ;
 int current ;
 struct smack_known* smk_of_current () ;

__attribute__((used)) static void smk_netlabel_audit_set(struct netlbl_audit *nap)
{
 struct smack_known *skp = smk_of_current();

 nap->loginuid = audit_get_loginuid(current);
 nap->sessionid = audit_get_sessionid(current);
 nap->secid = skp->smk_secid;
}
