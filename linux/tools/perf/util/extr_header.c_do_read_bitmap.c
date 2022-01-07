
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct feat_fd {int dummy; } ;


 scalar_t__ BITS_TO_U64 (scalar_t__) ;
 int ENOMEM ;
 unsigned long* bitmap_alloc (scalar_t__) ;
 int do_read_u64 (struct feat_fd*,scalar_t__*) ;
 int free (unsigned long*) ;

__attribute__((used)) static int do_read_bitmap(struct feat_fd *ff, unsigned long **pset, u64 *psize)
{
 unsigned long *set;
 u64 size, *p;
 int i, ret;

 ret = do_read_u64(ff, &size);
 if (ret)
  return ret;

 set = bitmap_alloc(size);
 if (!set)
  return -ENOMEM;

 p = (u64 *) set;

 for (i = 0; (u64) i < BITS_TO_U64(size); i++) {
  ret = do_read_u64(ff, p + i);
  if (ret < 0) {
   free(set);
   return ret;
  }
 }

 *pset = set;
 *psize = size;
 return 0;
}
