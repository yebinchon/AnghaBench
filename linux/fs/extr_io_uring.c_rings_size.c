
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct io_rings {int dummy; } ;


 size_t ALIGN (size_t,int ) ;
 size_t SIZE_MAX ;
 int SMP_CACHE_BYTES ;
 size_t array_size (int,unsigned int) ;
 scalar_t__ check_add_overflow (size_t,size_t,size_t*) ;
 int cqes ;
 size_t struct_size (struct io_rings*,int ,unsigned int) ;

__attribute__((used)) static unsigned long rings_size(unsigned sq_entries, unsigned cq_entries,
    size_t *sq_offset)
{
 struct io_rings *rings;
 size_t off, sq_array_size;

 off = struct_size(rings, cqes, cq_entries);
 if (off == SIZE_MAX)
  return SIZE_MAX;







 sq_array_size = array_size(sizeof(u32), sq_entries);
 if (sq_array_size == SIZE_MAX)
  return SIZE_MAX;

 if (check_add_overflow(off, sq_array_size, &off))
  return SIZE_MAX;

 if (sq_offset)
  *sq_offset = off;

 return off;
}
