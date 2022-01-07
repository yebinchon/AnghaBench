
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;


 size_t S_DT (int ) ;
 unsigned char* fs_ftype_by_dtype ;

unsigned char fs_umode_to_ftype(umode_t mode)
{
 return fs_ftype_by_dtype[S_DT(mode)];
}
