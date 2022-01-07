
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_copy_state {unsigned int len; int offset; scalar_t__ write; int pg; } ;


 void* kmap_atomic (int ) ;
 int kunmap_atomic (void*) ;
 int memcpy (void*,void*,unsigned int) ;
 unsigned int min (unsigned int,unsigned int) ;

__attribute__((used)) static int fuse_copy_do(struct fuse_copy_state *cs, void **val, unsigned *size)
{
 unsigned ncpy = min(*size, cs->len);
 if (val) {
  void *pgaddr = kmap_atomic(cs->pg);
  void *buf = pgaddr + cs->offset;

  if (cs->write)
   memcpy(buf, *val, ncpy);
  else
   memcpy(*val, buf, ncpy);

  kunmap_atomic(pgaddr);
  *val += ncpy;
 }
 *size -= ncpy;
 cs->len -= ncpy;
 cs->offset += ncpy;
 return ncpy;
}
