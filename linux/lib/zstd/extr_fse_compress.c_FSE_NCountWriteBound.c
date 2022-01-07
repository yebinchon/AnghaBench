
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t FSE_NCOUNTBOUND ;

size_t FSE_NCountWriteBound(unsigned maxSymbolValue, unsigned tableLog)
{
 size_t const maxHeaderSize = (((maxSymbolValue + 1) * tableLog) >> 3) + 3;
 return maxSymbolValue ? maxHeaderSize : FSE_NCOUNTBOUND;
}
