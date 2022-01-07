
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sugov_policy {int dummy; } ;


 int kfree (struct sugov_policy*) ;

__attribute__((used)) static void sugov_policy_free(struct sugov_policy *sg_policy)
{
 kfree(sg_policy);
}
