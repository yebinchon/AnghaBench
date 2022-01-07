
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool single_bit_flip(unsigned char a, unsigned char b)
{
 unsigned char error = a ^ b;

 return error && !(error & (error - 1));
}
