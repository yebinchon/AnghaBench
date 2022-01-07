
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_max ;
typedef int u64 ;
typedef int u32 ;
struct type_descriptor {int dummy; } ;
typedef int s64 ;


 int WARN_ON (int) ;
 scalar_t__ get_signed_val (struct type_descriptor*,void*) ;
 int get_unsigned_val (struct type_descriptor*,void*) ;
 int scnprintf (char*,size_t,char*,int ,...) ;
 int type_bit_width (struct type_descriptor*) ;
 scalar_t__ type_is_int (struct type_descriptor*) ;
 scalar_t__ type_is_signed (struct type_descriptor*) ;

__attribute__((used)) static void val_to_string(char *str, size_t size, struct type_descriptor *type,
   void *value)
{
 if (type_is_int(type)) {
  if (type_bit_width(type) == 128) {
   WARN_ON(1);

  } else if (type_is_signed(type)) {
   scnprintf(str, size, "%lld",
    (s64)get_signed_val(type, value));
  } else {
   scnprintf(str, size, "%llu",
    (u64)get_unsigned_val(type, value));
  }
 }
}
