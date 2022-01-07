
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S (int) ;

__attribute__((used)) static unsigned int log2l(unsigned long long n)
{

 int i = -(n == 0);
 if (n >= (1ull << 32)) { i += 32; n >>= 32; }; if (n >= (1ull << 16)) { i += 16; n >>= 16; }; if (n >= (1ull << 8)) { i += 8; n >>= 8; }; if (n >= (1ull << 4)) { i += 4; n >>= 4; }; if (n >= (1ull << 2)) { i += 2; n >>= 2; }; if (n >= (1ull << 1)) { i += 1; n >>= 1; };
 return i;

}
