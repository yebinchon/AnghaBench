
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_5__ {size_t operation; struct tomoyo_path_info const* filename; } ;
struct TYPE_6__ {TYPE_2__ path; } ;
struct tomoyo_request_info {scalar_t__ mode; TYPE_3__ param; int param_type; int type; int profile; TYPE_1__* domain; } ;
struct tomoyo_path_info {int dummy; } ;
struct TYPE_4__ {int ns; } ;


 scalar_t__ TOMOYO_CONFIG_DISABLED ;
 int TOMOYO_RETRY_REQUEST ;
 int TOMOYO_TYPE_PATH_ACL ;
 int tomoyo_audit_path_log (struct tomoyo_request_info*) ;
 int tomoyo_check_acl (struct tomoyo_request_info*,int ) ;
 int tomoyo_check_path_acl ;
 scalar_t__ tomoyo_get_mode (int ,int ,int ) ;
 int * tomoyo_p2mac ;

__attribute__((used)) static int tomoyo_path_permission(struct tomoyo_request_info *r, u8 operation,
      const struct tomoyo_path_info *filename)
{
 int error;

 r->type = tomoyo_p2mac[operation];
 r->mode = tomoyo_get_mode(r->domain->ns, r->profile, r->type);
 if (r->mode == TOMOYO_CONFIG_DISABLED)
  return 0;
 r->param_type = TOMOYO_TYPE_PATH_ACL;
 r->param.path.filename = filename;
 r->param.path.operation = operation;
 do {
  tomoyo_check_acl(r, tomoyo_check_path_acl);
  error = tomoyo_audit_path_log(r);
 } while (error == TOMOYO_RETRY_REQUEST);
 return error;
}
