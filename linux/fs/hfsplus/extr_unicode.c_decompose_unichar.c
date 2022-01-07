
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int u16 ;


 int * hfsplus_decompose_nonhangul (int ,int*) ;
 int hfsplus_try_decompose_hangul (int ,int *) ;

__attribute__((used)) static u16 *decompose_unichar(wchar_t uc, int *size, u16 *hangul_buffer)
{
 u16 *result;


 result = hangul_buffer;
 *size = hfsplus_try_decompose_hangul(uc, result);
 if (*size == 0)
  result = hfsplus_decompose_nonhangul(uc, size);
 return result;
}
