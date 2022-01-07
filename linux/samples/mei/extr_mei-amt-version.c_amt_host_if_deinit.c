
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amt_host_if {int initialized; int mei_cl; } ;


 int mei_deinit (int *) ;

__attribute__((used)) static void amt_host_if_deinit(struct amt_host_if *acmd)
{
 mei_deinit(&acmd->mei_cl);
 acmd->initialized = 0;
}
