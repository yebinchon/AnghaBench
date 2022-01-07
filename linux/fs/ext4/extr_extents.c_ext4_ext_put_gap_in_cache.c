
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct extent_status {scalar_t__ es_lblk; scalar_t__ es_len; } ;
typedef scalar_t__ ext4_lblk_t ;


 int EXTENT_STATUS_HOLE ;
 int ext4_es_find_extent_range (struct inode*,int *,scalar_t__,scalar_t__,struct extent_status*) ;
 int ext4_es_insert_extent (struct inode*,scalar_t__,scalar_t__,int ,int ) ;
 int ext4_es_is_delayed ;
 int ext_debug (char*,scalar_t__,scalar_t__) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;

__attribute__((used)) static void
ext4_ext_put_gap_in_cache(struct inode *inode, ext4_lblk_t hole_start,
     ext4_lblk_t hole_len)
{
 struct extent_status es;

 ext4_es_find_extent_range(inode, &ext4_es_is_delayed, hole_start,
      hole_start + hole_len - 1, &es);
 if (es.es_len) {

  if (es.es_lblk <= hole_start)
   return;
  hole_len = min(es.es_lblk - hole_start, hole_len);
 }
 ext_debug(" -> %u:%u\n", hole_start, hole_len);
 ext4_es_insert_extent(inode, hole_start, hole_len, ~0,
         EXTENT_STATUS_HOLE);
}
