
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t operation; int minor; int major; int mode; TYPE_1__* filename; } ;
struct TYPE_6__ {TYPE_2__ mkdev; } ;
struct tomoyo_request_info {TYPE_3__ param; } ;
struct TYPE_4__ {int name; } ;


 int * tomoyo_mac_keywords ;
 size_t* tomoyo_pnnn2mac ;
 int tomoyo_supervisor (struct tomoyo_request_info*,char*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int tomoyo_audit_mkdev_log(struct tomoyo_request_info *r)
{
 return tomoyo_supervisor(r, "file %s %s 0%o %u %u\n",
     tomoyo_mac_keywords
     [tomoyo_pnnn2mac[r->param.mkdev.operation]],
     r->param.mkdev.filename->name,
     r->param.mkdev.mode, r->param.mkdev.major,
     r->param.mkdev.minor);
}
