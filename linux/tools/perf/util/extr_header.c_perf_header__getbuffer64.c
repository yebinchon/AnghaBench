
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_header {scalar_t__ needs_swap; } ;


 int mem_bswap_64 (void*,size_t) ;
 scalar_t__ readn (int,void*,size_t) ;

__attribute__((used)) static int perf_header__getbuffer64(struct perf_header *header,
        int fd, void *buf, size_t size)
{
 if (readn(fd, buf, size) <= 0)
  return -1;

 if (header->needs_swap)
  mem_bswap_64(buf, size);

 return 0;
}
