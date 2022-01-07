
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct array_cache {scalar_t__ avail; scalar_t__ entry; scalar_t__ limit; } ;


 int memcpy (scalar_t__,scalar_t__,int) ;
 int min3 (scalar_t__,unsigned int,scalar_t__) ;

__attribute__((used)) static int transfer_objects(struct array_cache *to,
  struct array_cache *from, unsigned int max)
{

 int nr = min3(from->avail, max, to->limit - to->avail);

 if (!nr)
  return 0;

 memcpy(to->entry + to->avail, from->entry + from->avail -nr,
   sizeof(void *) *nr);

 from->avail -= nr;
 to->avail += nr;
 return nr;
}
