
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_chunk {int nr; int * bh; } ;


 int submit_logged_buffer (int ) ;

__attribute__((used)) static void write_chunk(struct buffer_chunk *chunk)
{
 int i;
 for (i = 0; i < chunk->nr; i++) {
  submit_logged_buffer(chunk->bh[i]);
 }
 chunk->nr = 0;
}
