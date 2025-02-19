
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int u16 ;


 int Hangul_LBase ;
 int Hangul_NCount ;
 int Hangul_SBase ;
 int Hangul_SCount ;
 int Hangul_TBase ;
 int Hangul_TCount ;
 int Hangul_VBase ;

__attribute__((used)) static int hfsplus_try_decompose_hangul(wchar_t uc, u16 *result)
{
 int index;
 int l, v, t;

 index = uc - Hangul_SBase;
 if (index < 0 || index >= Hangul_SCount)
  return 0;

 l = Hangul_LBase + index / Hangul_NCount;
 v = Hangul_VBase + (index % Hangul_NCount) / Hangul_TCount;
 t = Hangul_TBase + index % Hangul_TCount;

 result[0] = l;
 result[1] = v;
 if (t != Hangul_TBase) {
  result[2] = t;
  return 3;
 }
 return 2;
}
