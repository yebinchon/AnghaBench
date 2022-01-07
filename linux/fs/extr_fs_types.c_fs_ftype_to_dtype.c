
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char DT_UNKNOWN ;
 unsigned int FT_MAX ;
 unsigned char* fs_dtype_by_ftype ;

unsigned char fs_ftype_to_dtype(unsigned int filetype)
{
 if (filetype >= FT_MAX)
  return DT_UNKNOWN;

 return fs_dtype_by_ftype[filetype];
}
