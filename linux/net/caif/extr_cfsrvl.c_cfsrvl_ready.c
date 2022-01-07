
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfsrvl {int open; } ;


 int ENOTCONN ;

bool cfsrvl_ready(struct cfsrvl *service, int *err)
{
 if (!service->open) {
  *err = -ENOTCONN;
  return 0;
 }
 return 1;
}
