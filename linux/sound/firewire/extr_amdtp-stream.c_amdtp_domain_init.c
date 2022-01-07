
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdtp_domain {int streams; } ;


 int INIT_LIST_HEAD (int *) ;

int amdtp_domain_init(struct amdtp_domain *d)
{
 INIT_LIST_HEAD(&d->streams);

 return 0;
}
