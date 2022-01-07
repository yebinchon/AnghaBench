
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {size_t operation; TYPE_2__* filename2; TYPE_1__* filename1; } ;
struct TYPE_8__ {TYPE_3__ path2; } ;
struct tomoyo_request_info {TYPE_4__ param; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_5__ {int name; } ;


 int * tomoyo_mac_keywords ;
 size_t* tomoyo_pp2mac ;
 int tomoyo_supervisor (struct tomoyo_request_info*,char*,int ,int ,int ) ;

__attribute__((used)) static int tomoyo_audit_path2_log(struct tomoyo_request_info *r)
{
 return tomoyo_supervisor(r, "file %s %s %s\n", tomoyo_mac_keywords
     [tomoyo_pp2mac[r->param.path2.operation]],
     r->param.path2.filename1->name,
     r->param.path2.filename2->name);
}
