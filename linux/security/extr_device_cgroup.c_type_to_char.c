
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 short DEVCG_DEV_ALL ;
 short DEVCG_DEV_BLOCK ;
 short DEVCG_DEV_CHAR ;

__attribute__((used)) static char type_to_char(short type)
{
 if (type == DEVCG_DEV_ALL)
  return 'a';
 if (type == DEVCG_DEV_CHAR)
  return 'c';
 if (type == DEVCG_DEV_BLOCK)
  return 'b';
 return 'X';
}
