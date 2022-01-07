
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef int u32 ;


 int NF4BAD ;
 int NF4BLK ;
 int NF4CHR ;
 int NF4DIR ;
 int NF4FIFO ;
 int NF4LNK ;
 int NF4REG ;
 int NF4SOCK ;





 int S_IFMT ;



__attribute__((used)) static u32 nfs4_file_type(umode_t mode)
{
 switch (mode & S_IFMT) {
 case 131: return NF4FIFO;
 case 133: return NF4CHR;
 case 132: return NF4DIR;
 case 134: return NF4BLK;
 case 130: return NF4LNK;
 case 129: return NF4REG;
 case 128: return NF4SOCK;
 default: return NF4BAD;
 };
}
