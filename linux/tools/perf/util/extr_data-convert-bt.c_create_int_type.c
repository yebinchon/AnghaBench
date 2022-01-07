
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bt_ctf_field_type {int dummy; } ;


 int BT_CTF_BYTE_ORDER_BIG_ENDIAN ;
 int BT_CTF_BYTE_ORDER_LITTLE_ENDIAN ;
 int BT_CTF_INTEGER_BASE_HEXADECIMAL ;
 struct bt_ctf_field_type* bt_ctf_field_type_integer_create (int) ;
 scalar_t__ bt_ctf_field_type_integer_set_base (struct bt_ctf_field_type*,int ) ;
 scalar_t__ bt_ctf_field_type_integer_set_signed (struct bt_ctf_field_type*,int) ;
 int bt_ctf_field_type_put (struct bt_ctf_field_type*) ;
 int bt_ctf_field_type_set_byte_order (struct bt_ctf_field_type*,int ) ;
 int pr2 (char*,int,char*,char*) ;

__attribute__((used)) static struct bt_ctf_field_type *create_int_type(int size, bool sign, bool hex)
{
 struct bt_ctf_field_type *type;

 type = bt_ctf_field_type_integer_create(size);
 if (!type)
  return ((void*)0);

 if (sign &&
     bt_ctf_field_type_integer_set_signed(type, 1))
  goto err;

 if (hex &&
     bt_ctf_field_type_integer_set_base(type, BT_CTF_INTEGER_BASE_HEXADECIMAL))
  goto err;


 bt_ctf_field_type_set_byte_order(type, BT_CTF_BYTE_ORDER_BIG_ENDIAN);




 pr2("Created type: INTEGER %d-bit %ssigned %s\n",
     size, sign ? "un" : "", hex ? "hex" : "");
 return type;

err:
 bt_ctf_field_type_put(type);
 return ((void*)0);
}
