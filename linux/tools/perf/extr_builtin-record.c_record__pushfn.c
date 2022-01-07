
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct record {int samples; int session; } ;
struct mmap {void* data; } ;


 int perf_mmap__mmap_len (struct mmap*) ;
 scalar_t__ record__comp_enabled (struct record*) ;
 int record__write (struct record*,struct mmap*,void*,size_t) ;
 size_t zstd_compress (int ,void*,int ,void*,size_t) ;

__attribute__((used)) static int record__pushfn(struct mmap *map, void *to, void *bf, size_t size)
{
 struct record *rec = to;

 if (record__comp_enabled(rec)) {
  size = zstd_compress(rec->session, map->data, perf_mmap__mmap_len(map), bf, size);
  bf = map->data;
 }

 rec->samples++;
 return record__write(rec, map, bf, size);
}
