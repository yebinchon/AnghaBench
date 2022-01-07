
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_info {int refcnt; } ;


 int refcount_set (int *,int) ;
 struct block_info* zalloc (int) ;

struct block_info *block_info__new(void)
{
 struct block_info *bi = zalloc(sizeof(*bi));

 if (bi)
  refcount_set(&bi->refcnt, 1);
 return bi;
}
