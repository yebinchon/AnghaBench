
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ U32 ;


 scalar_t__ BIT_highbit32 (unsigned int) ;

__attribute__((used)) static unsigned FSE_minTableLog(size_t srcSize, unsigned maxSymbolValue)
{
 U32 minBitsSrc = BIT_highbit32((U32)(srcSize - 1)) + 1;
 U32 minBitsSymbols = BIT_highbit32(maxSymbolValue) + 2;
 U32 minBits = minBitsSrc < minBitsSymbols ? minBitsSrc : minBitsSymbols;
 return minBits;
}
