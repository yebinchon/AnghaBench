
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_info {int refcnt; } ;


 int free (struct block_info*) ;
 scalar_t__ refcount_dec_and_test (int *) ;

void block_info__put(struct block_info *bi)
{
 if (bi && refcount_dec_and_test(&bi->refcnt))
  free(bi);
}
