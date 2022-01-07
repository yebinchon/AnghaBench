
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uInt ;
typedef int deflate_state ;
typedef int Byte ;


 int put_byte (int *,int ) ;

__attribute__((used)) static void putShortMSB(
 deflate_state *s,
 uInt b
)
{
    put_byte(s, (Byte)(b >> 8));
    put_byte(s, (Byte)(b & 0xff));
}
