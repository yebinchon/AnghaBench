
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int operation; TYPE_1__* filename; int number; } ;
struct TYPE_6__ {TYPE_2__ path_number; } ;
struct tomoyo_request_info {TYPE_3__ param; } ;
typedef int buffer ;
struct TYPE_4__ {int name; } ;
 int TOMOYO_VALUE_TYPE_DECIMAL ;
 int TOMOYO_VALUE_TYPE_HEXADECIMAL ;
 int TOMOYO_VALUE_TYPE_OCTAL ;
 int * tomoyo_mac_keywords ;
 size_t* tomoyo_pn2mac ;
 int tomoyo_print_ulong (char*,int,int ,int) ;
 int tomoyo_supervisor (struct tomoyo_request_info*,char*,int ,int ,char*) ;

__attribute__((used)) static int tomoyo_audit_path_number_log(struct tomoyo_request_info *r)
{
 const u8 type = r->param.path_number.operation;
 u8 radix;
 char buffer[64];

 switch (type) {
 case 132:
 case 130:
 case 129:
 case 128:
 case 133:
  radix = TOMOYO_VALUE_TYPE_OCTAL;
  break;
 case 131:
  radix = TOMOYO_VALUE_TYPE_HEXADECIMAL;
  break;
 default:
  radix = TOMOYO_VALUE_TYPE_DECIMAL;
  break;
 }
 tomoyo_print_ulong(buffer, sizeof(buffer), r->param.path_number.number,
      radix);
 return tomoyo_supervisor(r, "file %s %s %s\n", tomoyo_mac_keywords
     [tomoyo_pn2mac[type]],
     r->param.path_number.filename->name, buffer);
}
