
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;



__attribute__((used)) static int check_off_(uint32_t hdrsize, uint32_t totalsize, uint32_t off)
{
 return (off >= hdrsize) && (off <= totalsize);
}
