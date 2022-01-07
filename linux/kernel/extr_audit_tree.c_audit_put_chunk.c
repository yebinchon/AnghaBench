
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_chunk {int refs; } ;


 scalar_t__ atomic_long_dec_and_test (int *) ;
 int free_chunk (struct audit_chunk*) ;

void audit_put_chunk(struct audit_chunk *chunk)
{
 if (atomic_long_dec_and_test(&chunk->refs))
  free_chunk(chunk);
}
