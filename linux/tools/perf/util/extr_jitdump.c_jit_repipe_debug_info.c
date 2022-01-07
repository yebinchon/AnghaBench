
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int nr_entry; int entries; } ;
struct TYPE_3__ {int total_size; } ;
union jr_entry {TYPE_2__ info; TYPE_1__ prefix; } ;
struct jit_buf_desc {int nr_debug_entries; void* debug_data; } ;


 void* malloc (size_t) ;
 int memcpy (void*,int *,size_t) ;

__attribute__((used)) static int jit_repipe_debug_info(struct jit_buf_desc *jd, union jr_entry *jr)
{
 void *data;
 size_t sz;

 if (!(jd && jr))
  return -1;

 sz = jr->prefix.total_size - sizeof(jr->info);
 data = malloc(sz);
 if (!data)
  return -1;

 memcpy(data, &jr->info.entries, sz);

 jd->debug_data = data;





 jd->nr_debug_entries = jr->info.nr_entry;

 return 0;
}
