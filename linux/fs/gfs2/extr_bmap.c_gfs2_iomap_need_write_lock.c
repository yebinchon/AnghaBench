
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int IOMAP_DIRECT ;
 unsigned int IOMAP_WRITE ;

__attribute__((used)) static inline bool gfs2_iomap_need_write_lock(unsigned flags)
{
 return (flags & IOMAP_WRITE) && !(flags & IOMAP_DIRECT);
}
