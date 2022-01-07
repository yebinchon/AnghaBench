
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct nsm_handle {int sm_addr; } ;



__attribute__((used)) static inline struct sockaddr *nsm_addr(const struct nsm_handle *nsm)
{
 return (struct sockaddr *)&nsm->sm_addr;
}
