
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 int STP_HZ ;
 int put_unaligned_be16 (unsigned long,unsigned char*) ;

__attribute__((used)) static inline void br_set_ticks(unsigned char *dest, int j)
{
 unsigned long ticks = (STP_HZ * j)/ HZ;

 put_unaligned_be16(ticks, dest);
}
