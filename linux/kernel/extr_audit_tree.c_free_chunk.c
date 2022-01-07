
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct audit_chunk {int count; TYPE_1__* owners; } ;
struct TYPE_2__ {scalar_t__ owner; } ;


 int kfree (struct audit_chunk*) ;
 int put_tree (scalar_t__) ;

__attribute__((used)) static void free_chunk(struct audit_chunk *chunk)
{
 int i;

 for (i = 0; i < chunk->count; i++) {
  if (chunk->owners[i].owner)
   put_tree(chunk->owners[i].owner);
 }
 kfree(chunk);
}
