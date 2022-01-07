
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int async_cookie_t ;


 int async_dfl_domain ;
 int async_synchronize_cookie_domain (int ,int *) ;

void async_synchronize_cookie(async_cookie_t cookie)
{
 async_synchronize_cookie_domain(cookie, &async_dfl_domain);
}
