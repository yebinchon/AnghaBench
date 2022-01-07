
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int R5_HASH ;
 int TEA_HASH ;
 int YURA_HASH ;

char *reiserfs_hashname(int code)
{
 if (code == YURA_HASH)
  return "rupasov";
 if (code == TEA_HASH)
  return "tea";
 if (code == R5_HASH)
  return "r5";

 return "unknown";
}
