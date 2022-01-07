
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nlmclnt_release_call (void*) ;

__attribute__((used)) static void nlmclnt_rpc_release(void *data)
{
 nlmclnt_release_call(data);
}
