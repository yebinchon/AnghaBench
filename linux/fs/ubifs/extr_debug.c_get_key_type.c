
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *get_key_type(int type)
{
 switch (type) {
 case 130:
  return "inode";
 case 131:
  return "direntry";
 case 128:
  return "xentry";
 case 132:
  return "data";
 case 129:
  return "truncate";
 default:
  return "unknown/invalid key";
 }
}
