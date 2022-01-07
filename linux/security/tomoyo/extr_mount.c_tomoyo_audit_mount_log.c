
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int flags; TYPE_3__* type; TYPE_2__* dir; TYPE_1__* dev; } ;
struct TYPE_10__ {TYPE_4__ mount; } ;
struct tomoyo_request_info {TYPE_5__ param; } ;
struct TYPE_8__ {int name; } ;
struct TYPE_7__ {int name; } ;
struct TYPE_6__ {int name; } ;


 int tomoyo_supervisor (struct tomoyo_request_info*,char*,int ,int ,int ,int ) ;

__attribute__((used)) static int tomoyo_audit_mount_log(struct tomoyo_request_info *r)
{
 return tomoyo_supervisor(r, "file mount %s %s %s 0x%lX\n",
     r->param.mount.dev->name,
     r->param.mount.dir->name,
     r->param.mount.type->name,
     r->param.mount.flags);
}
