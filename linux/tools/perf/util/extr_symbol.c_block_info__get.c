
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_info {int refcnt; } ;


 int refcount_inc (int *) ;

struct block_info *block_info__get(struct block_info *bi)
{
 if (bi)
  refcount_inc(&bi->refcnt);
 return bi;
}
