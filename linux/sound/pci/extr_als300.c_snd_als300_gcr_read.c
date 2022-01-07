
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ GCR_DATA ;
 scalar_t__ GCR_INDEX ;
 int inl (scalar_t__) ;
 int outb (unsigned short,scalar_t__) ;

__attribute__((used)) static inline u32 snd_als300_gcr_read(unsigned long port, unsigned short reg)
{
 outb(reg, port+GCR_INDEX);
 return inl(port+GCR_DATA);
}
