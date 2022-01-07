
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char BIAS ;
 unsigned char QUANT_MASK ;
 unsigned int SEG_MASK ;
 unsigned int SEG_SHIFT ;
 unsigned char SIGN_BIT ;

__attribute__((used)) static int ulaw2linear(unsigned char u_val)
{
 int t;


 u_val = ~u_val;





 t = ((u_val & QUANT_MASK) << 3) + BIAS;
 t <<= ((unsigned)u_val & SEG_MASK) >> SEG_SHIFT;

 return ((u_val & SIGN_BIT) ? (BIAS - t) : (t - BIAS));
}
