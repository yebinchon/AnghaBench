
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int err; int fatal; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EHOSTUNREACH ;
 int EMSGSIZE ;
 int EPROTO ;




 TYPE_1__* tab_unreach ;

int icmpv6_err_convert(u8 type, u8 code, int *err)
{
 int fatal = 0;

 *err = EPROTO;

 switch (type) {
 case 131:
  fatal = 1;
  if (code < ARRAY_SIZE(tab_unreach)) {
   *err = tab_unreach[code].err;
   fatal = tab_unreach[code].fatal;
  }
  break;

 case 129:
  *err = EMSGSIZE;
  break;

 case 130:
  *err = EPROTO;
  fatal = 1;
  break;

 case 128:
  *err = EHOSTUNREACH;
  break;
 }

 return fatal;
}
