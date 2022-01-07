
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amt_host_if {unsigned long send_timeout; int initialized; int mei_cl; } ;


 int MEI_IAMTHIF ;
 int mei_init (int *,int *,int ,int) ;

__attribute__((used)) static bool amt_host_if_init(struct amt_host_if *acmd,
        unsigned long send_timeout, bool verbose)
{
 acmd->send_timeout = (send_timeout) ? send_timeout : 20000;
 acmd->initialized = mei_init(&acmd->mei_cl, &MEI_IAMTHIF, 0, verbose);
 return acmd->initialized;
}
