
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int BITS_PER_BYTE ;
 unsigned int memweight (char*,unsigned int) ;

unsigned int ext4_count_free(char *bitmap, unsigned int numchars)
{
 return numchars * BITS_PER_BYTE - memweight(bitmap, numchars);
}
