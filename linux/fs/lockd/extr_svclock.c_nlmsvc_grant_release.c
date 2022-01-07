
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_rqst {int a_block; } ;


 int nlmsvc_release_block (int ) ;

__attribute__((used)) static void nlmsvc_grant_release(void *data)
{
 struct nlm_rqst *call = data;
 nlmsvc_release_block(call->a_block);
}
