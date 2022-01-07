
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct user_namespace {int dummy; } ;
struct idmap {TYPE_1__* cred; } ;
struct TYPE_2__ {struct user_namespace* user_ns; } ;


 struct user_namespace init_user_ns ;

__attribute__((used)) static struct user_namespace *idmap_userns(const struct idmap *idmap)
{
 if (idmap && idmap->cred)
  return idmap->cred->user_ns;
 return &init_user_ns;
}
