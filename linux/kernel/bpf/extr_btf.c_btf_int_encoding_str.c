
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ BTF_INT_BOOL ;
 scalar_t__ BTF_INT_CHAR ;
 scalar_t__ BTF_INT_SIGNED ;

__attribute__((used)) static const char *btf_int_encoding_str(u8 encoding)
{
 if (encoding == 0)
  return "(none)";
 else if (encoding == BTF_INT_SIGNED)
  return "SIGNED";
 else if (encoding == BTF_INT_CHAR)
  return "CHAR";
 else if (encoding == BTF_INT_BOOL)
  return "BOOL";
 else
  return "UNKN";
}
