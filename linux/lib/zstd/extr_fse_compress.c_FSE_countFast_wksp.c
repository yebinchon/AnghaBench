
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t FSE_count_parallel_wksp (unsigned int*,unsigned int*,void const*,size_t,int ,unsigned int*) ;
 size_t FSE_count_simple (unsigned int*,unsigned int*,void const*,size_t) ;

size_t FSE_countFast_wksp(unsigned *count, unsigned *maxSymbolValuePtr, const void *source, size_t sourceSize, unsigned *workSpace)
{
 if (sourceSize < 1500)
  return FSE_count_simple(count, maxSymbolValuePtr, source, sourceSize);
 return FSE_count_parallel_wksp(count, maxSymbolValuePtr, source, sourceSize, 0, workSpace);
}
