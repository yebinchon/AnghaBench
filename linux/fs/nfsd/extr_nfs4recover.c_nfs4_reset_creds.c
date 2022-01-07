
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cred {int dummy; } ;


 int revert_creds (struct cred const*) ;

__attribute__((used)) static void
nfs4_reset_creds(const struct cred *original)
{
 revert_creds(original);
}
