
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* name; } ;
struct TYPE_6__ {TYPE_2__ environ; } ;
struct tomoyo_request_info {TYPE_3__ param; } ;
struct TYPE_4__ {int name; } ;


 int tomoyo_supervisor (struct tomoyo_request_info*,char*,int ) ;

__attribute__((used)) static int tomoyo_audit_env_log(struct tomoyo_request_info *r)
{
 return tomoyo_supervisor(r, "misc env %s\n",
     r->param.environ.name->name);
}
