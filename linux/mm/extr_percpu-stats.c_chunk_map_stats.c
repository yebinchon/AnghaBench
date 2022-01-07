
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct pcpu_block_md {int first_free; int contig_hint; } ;
struct pcpu_chunk {int end_offset; int start_offset; int nr_alloc; int max_alloc_size; int nr_empty_pop_pages; int free_bytes; int alloc_map; int bound_map; struct pcpu_block_md chunk_md; } ;


 int P (char*,int) ;
 int PCPU_MIN_ALLOC_SIZE ;
 int cmpint ;
 int find_last_bit (int ,int) ;
 int find_next_bit (int ,int,int) ;
 int max (int,int) ;
 int pcpu_chunk_map_bits (struct pcpu_chunk*) ;
 int seq_putc (struct seq_file*,char) ;
 int sort (int*,int,int,int ,int *) ;
 scalar_t__ test_bit (int,int ) ;

__attribute__((used)) static void chunk_map_stats(struct seq_file *m, struct pcpu_chunk *chunk,
       int *buffer)
{
 struct pcpu_block_md *chunk_md = &chunk->chunk_md;
 int i, last_alloc, as_len, start, end;
 int *alloc_sizes, *p;

 int sum_frag = 0, max_frag = 0;
 int cur_min_alloc = 0, cur_med_alloc = 0, cur_max_alloc = 0;

 alloc_sizes = buffer;






 last_alloc = find_last_bit(chunk->alloc_map,
       pcpu_chunk_map_bits(chunk) -
       chunk->end_offset / PCPU_MIN_ALLOC_SIZE - 1);
 last_alloc = test_bit(last_alloc, chunk->alloc_map) ?
       last_alloc + 1 : 0;

 as_len = 0;
 start = chunk->start_offset / PCPU_MIN_ALLOC_SIZE;
 while (start < last_alloc) {
  if (test_bit(start, chunk->alloc_map)) {
   end = find_next_bit(chunk->bound_map, last_alloc,
         start + 1);
   alloc_sizes[as_len] = 1;
  } else {
   end = find_next_bit(chunk->alloc_map, last_alloc,
         start + 1);
   alloc_sizes[as_len] = -1;
  }

  alloc_sizes[as_len++] *= (end - start) * PCPU_MIN_ALLOC_SIZE;

  start = end;
 }





 if (as_len > 0) {
  sort(alloc_sizes, as_len, sizeof(int), cmpint, ((void*)0));


  for (i = 0, p = alloc_sizes; *p < 0 && i < as_len; i++, p++) {
   sum_frag -= *p;
   max_frag = max(max_frag, -1 * (*p));
  }

  cur_min_alloc = alloc_sizes[i];
  cur_med_alloc = alloc_sizes[(i + as_len - 1) / 2];
  cur_max_alloc = alloc_sizes[as_len - 1];
 }

 P("nr_alloc", chunk->nr_alloc);
 P("max_alloc_size", chunk->max_alloc_size);
 P("empty_pop_pages", chunk->nr_empty_pop_pages);
 P("first_bit", chunk_md->first_free);
 P("free_bytes", chunk->free_bytes);
 P("contig_bytes", chunk_md->contig_hint * PCPU_MIN_ALLOC_SIZE);
 P("sum_frag", sum_frag);
 P("max_frag", max_frag);
 P("cur_min_alloc", cur_min_alloc);
 P("cur_med_alloc", cur_med_alloc);
 P("cur_max_alloc", cur_max_alloc);
 seq_putc(m, '\n');
}
