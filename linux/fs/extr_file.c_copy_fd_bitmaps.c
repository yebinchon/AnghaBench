
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdtable {unsigned int max_fds; scalar_t__ full_fds_bits; scalar_t__ close_on_exec; scalar_t__ open_fds; } ;


 unsigned int BITBIT_SIZE (unsigned int) ;
 unsigned int BITS_PER_BYTE ;
 int memcpy (scalar_t__,scalar_t__,unsigned int) ;
 int memset (char*,int ,unsigned int) ;

__attribute__((used)) static void copy_fd_bitmaps(struct fdtable *nfdt, struct fdtable *ofdt,
       unsigned int count)
{
 unsigned int cpy, set;

 cpy = count / BITS_PER_BYTE;
 set = (nfdt->max_fds - count) / BITS_PER_BYTE;
 memcpy(nfdt->open_fds, ofdt->open_fds, cpy);
 memset((char *)nfdt->open_fds + cpy, 0, set);
 memcpy(nfdt->close_on_exec, ofdt->close_on_exec, cpy);
 memset((char *)nfdt->close_on_exec + cpy, 0, set);

 cpy = BITBIT_SIZE(count);
 set = BITBIT_SIZE(nfdt->max_fds) - cpy;
 memcpy(nfdt->full_fds_bits, ofdt->full_fds_bits, cpy);
 memset((char *)nfdt->full_fds_bits + cpy, 0, set);
}
