
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;


 unsigned char fs_ftype_to_dtype (int ) ;
 int fs_umode_to_ftype (int ) ;

unsigned char fs_umode_to_dtype(umode_t mode)
{
 return fs_ftype_to_dtype(fs_umode_to_ftype(mode));
}
