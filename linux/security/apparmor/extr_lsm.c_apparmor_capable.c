
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_namespace {int dummy; } ;
struct cred {int dummy; } ;
struct aa_label {int dummy; } ;


 int aa_capable (struct aa_label*,int,unsigned int) ;
 struct aa_label* aa_get_newest_cred_label (struct cred const*) ;
 int aa_put_label (struct aa_label*) ;
 int unconfined (struct aa_label*) ;

__attribute__((used)) static int apparmor_capable(const struct cred *cred, struct user_namespace *ns,
       int cap, unsigned int opts)
{
 struct aa_label *label;
 int error = 0;

 label = aa_get_newest_cred_label(cred);
 if (!unconfined(label))
  error = aa_capable(label, cap, opts);
 aa_put_label(label);

 return error;
}
