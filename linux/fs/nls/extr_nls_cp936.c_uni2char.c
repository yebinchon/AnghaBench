
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int EINVAL ;
 int ENAMETOOLONG ;
 unsigned char** page_uni2charset ;
 unsigned char* u2c_00 ;

__attribute__((used)) static int uni2char(const wchar_t uni,
   unsigned char *out, int boundlen)
{
 const unsigned char *uni2charset;
 unsigned char cl = uni&0xFF;
 unsigned char ch = (uni>>8)&0xFF;
 unsigned char out0,out1;

 if (boundlen <= 0)
  return -ENAMETOOLONG;

 if (uni == 0x20ac) {
  out[0] = 0x80;
  return 1;
 }

 if (ch == 0) {

  out0 = u2c_00[cl*2];
  out1 = u2c_00[cl*2+1];
  if (out0 == 0x00 && out1 == 0x00) {
   if (cl<0x80) {
    out[0] = cl;
    return 1;
   }
   return -EINVAL;
  } else {
   if (boundlen <= 1)
    return -ENAMETOOLONG;
   out[0] = out0;
   out[1] = out1;
   return 2;
  }
 }

 uni2charset = page_uni2charset[ch];
 if (uni2charset) {
  if (boundlen <= 1)
   return -ENAMETOOLONG;
  out[0] = uni2charset[cl*2];
  out[1] = uni2charset[cl*2+1];
  if (out[0] == 0x00 && out[1] == 0x00)
   return -EINVAL;
  return 2;
 }
 else
  return -EINVAL;
}
