
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct audit_chunk {int count; TYPE_1__* owners; } ;
struct TYPE_2__ {scalar_t__ owner; } ;



__attribute__((used)) static int chunk_count_trees(struct audit_chunk *chunk)
{
 int i;
 int ret = 0;

 for (i = 0; i < chunk->count; i++)
  if (chunk->owners[i].owner)
   ret++;
 return ret;
}
