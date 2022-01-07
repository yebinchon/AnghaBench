
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ classid; unsigned long class; } ;
struct fw_filter {TYPE_1__ res; } ;



__attribute__((used)) static void fw_bind_class(void *fh, u32 classid, unsigned long cl)
{
 struct fw_filter *f = fh;

 if (f && f->res.classid == classid)
  f->res.class = cl;
}
