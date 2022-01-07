
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *get_key_hash(int hash)
{
 switch (hash) {
 case 129:
  return "R5";
 case 128:
  return "test";
 default:
  return "unknown/invalid name hash";
 }
}
