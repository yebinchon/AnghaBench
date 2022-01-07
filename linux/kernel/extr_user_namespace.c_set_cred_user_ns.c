
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_namespace {int dummy; } ;
struct cred {struct user_namespace* user_ns; int * request_key_auth; void* cap_bset; void* cap_ambient; void* cap_effective; void* cap_permitted; void* cap_inheritable; int securebits; } ;


 void* CAP_EMPTY_SET ;
 void* CAP_FULL_SET ;
 int SECUREBITS_DEFAULT ;
 int key_put (int *) ;

__attribute__((used)) static void set_cred_user_ns(struct cred *cred, struct user_namespace *user_ns)
{



 cred->securebits = SECUREBITS_DEFAULT;
 cred->cap_inheritable = CAP_EMPTY_SET;
 cred->cap_permitted = CAP_FULL_SET;
 cred->cap_effective = CAP_FULL_SET;
 cred->cap_ambient = CAP_EMPTY_SET;
 cred->cap_bset = CAP_FULL_SET;





 cred->user_ns = user_ns;
}
