
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orangefs_khandle {int* u; } ;
typedef int ino_t ;
typedef int __u64 ;



__attribute__((used)) static inline ino_t orangefs_khandle_to_ino(struct orangefs_khandle *khandle)
{
 union {
  unsigned char u[8];
  __u64 ino;
 } ihandle;

 ihandle.u[0] = khandle->u[0] ^ khandle->u[4];
 ihandle.u[1] = khandle->u[1] ^ khandle->u[5];
 ihandle.u[2] = khandle->u[2] ^ khandle->u[6];
 ihandle.u[3] = khandle->u[3] ^ khandle->u[7];
 ihandle.u[4] = khandle->u[12] ^ khandle->u[8];
 ihandle.u[5] = khandle->u[13] ^ khandle->u[9];
 ihandle.u[6] = khandle->u[14] ^ khandle->u[10];
 ihandle.u[7] = khandle->u[15] ^ khandle->u[11];

 return ihandle.ino;
}
