
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_map_blocks {int m_len; scalar_t__ m_lblk; int m_flags; } ;
struct mpage_da_data {int do_map; struct ext4_map_blocks map; } ;
struct buffer_head {int b_state; } ;
typedef scalar_t__ ext4_lblk_t ;


 int BH_FLAGS ;
 int MAX_WRITEPAGES_EXTENT_LEN ;
 int buffer_delay (struct buffer_head*) ;
 int buffer_dirty (struct buffer_head*) ;
 int buffer_mapped (struct buffer_head*) ;
 int buffer_unwritten (struct buffer_head*) ;

__attribute__((used)) static bool mpage_add_bh_to_extent(struct mpage_da_data *mpd, ext4_lblk_t lblk,
       struct buffer_head *bh)
{
 struct ext4_map_blocks *map = &mpd->map;


 if (!buffer_dirty(bh) || !buffer_mapped(bh) ||
     (!buffer_delay(bh) && !buffer_unwritten(bh))) {

  if (map->m_len == 0)
   return 1;
  return 0;
 }


 if (map->m_len == 0) {

  if (!mpd->do_map)
   return 0;
  map->m_lblk = lblk;
  map->m_len = 1;
  map->m_flags = bh->b_state & BH_FLAGS;
  return 1;
 }


 if (map->m_len >= MAX_WRITEPAGES_EXTENT_LEN)
  return 0;


 if (lblk == map->m_lblk + map->m_len &&
     (bh->b_state & BH_FLAGS) == map->m_flags) {
  map->m_len++;
  return 1;
 }
 return 0;
}
