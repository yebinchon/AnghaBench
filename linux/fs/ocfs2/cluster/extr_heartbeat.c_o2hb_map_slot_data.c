
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct o2hb_region {unsigned int hr_slots_per_page; int hr_blocks; unsigned int hr_num_pages; int hr_block_bytes; struct o2hb_disk_slot* hr_slots; struct page** hr_slot_data; int * hr_tmp_block; } ;
struct o2hb_disk_slot {int ds_node_num; struct o2hb_disk_heartbeat_block* ds_raw_block; int ds_live_item; } ;
struct o2hb_disk_heartbeat_block {int dummy; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int ML_HEARTBEAT ;
 struct page* alloc_page (int ) ;
 void* kcalloc (int,int,int ) ;
 int * kmalloc (int ,int ) ;
 int mlog (int ,char*,unsigned int,unsigned int,unsigned int) ;
 char* page_address (struct page*) ;

__attribute__((used)) static int o2hb_map_slot_data(struct o2hb_region *reg)
{
 int i, j;
 unsigned int last_slot;
 unsigned int spp = reg->hr_slots_per_page;
 struct page *page;
 char *raw;
 struct o2hb_disk_slot *slot;

 reg->hr_tmp_block = kmalloc(reg->hr_block_bytes, GFP_KERNEL);
 if (reg->hr_tmp_block == ((void*)0))
  return -ENOMEM;

 reg->hr_slots = kcalloc(reg->hr_blocks,
    sizeof(struct o2hb_disk_slot), GFP_KERNEL);
 if (reg->hr_slots == ((void*)0))
  return -ENOMEM;

 for(i = 0; i < reg->hr_blocks; i++) {
  slot = &reg->hr_slots[i];
  slot->ds_node_num = i;
  INIT_LIST_HEAD(&slot->ds_live_item);
  slot->ds_raw_block = ((void*)0);
 }

 reg->hr_num_pages = (reg->hr_blocks + spp - 1) / spp;
 mlog(ML_HEARTBEAT, "Going to require %u pages to cover %u blocks "
      "at %u blocks per page\n",
      reg->hr_num_pages, reg->hr_blocks, spp);

 reg->hr_slot_data = kcalloc(reg->hr_num_pages, sizeof(struct page *),
        GFP_KERNEL);
 if (!reg->hr_slot_data)
  return -ENOMEM;

 for(i = 0; i < reg->hr_num_pages; i++) {
  page = alloc_page(GFP_KERNEL);
  if (!page)
   return -ENOMEM;

  reg->hr_slot_data[i] = page;

  last_slot = i * spp;
  raw = page_address(page);
  for (j = 0;
       (j < spp) && ((j + last_slot) < reg->hr_blocks);
       j++) {
   BUG_ON((j + last_slot) >= reg->hr_blocks);

   slot = &reg->hr_slots[j + last_slot];
   slot->ds_raw_block =
    (struct o2hb_disk_heartbeat_block *) raw;

   raw += reg->hr_block_bytes;
  }
 }

 return 0;
}
