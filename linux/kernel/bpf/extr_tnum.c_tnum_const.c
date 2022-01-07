
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct tnum {int dummy; } ;


 struct tnum TNUM (int ,int ) ;

struct tnum tnum_const(u64 value)
{
 return TNUM(value, 0);
}
