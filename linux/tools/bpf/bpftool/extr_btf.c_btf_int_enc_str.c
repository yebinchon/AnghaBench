
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;






__attribute__((used)) static const char *btf_int_enc_str(__u8 encoding)
{
 switch (encoding) {
 case 0:
  return "(none)";
 case 128:
  return "SIGNED";
 case 129:
  return "CHAR";
 case 130:
  return "BOOL";
 default:
  return "UNKN";
 }
}
