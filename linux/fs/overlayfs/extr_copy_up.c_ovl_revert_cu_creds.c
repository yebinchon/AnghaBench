
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ovl_cu_creds {scalar_t__ new; int old; } ;


 int put_cred (scalar_t__) ;
 int revert_creds (int ) ;

__attribute__((used)) static void ovl_revert_cu_creds(struct ovl_cu_creds *cc)
{
 if (cc->new) {
  revert_creds(cc->old);
  put_cred(cc->new);
 }
}
