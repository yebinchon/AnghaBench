
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_reservation_map {unsigned int m_bitmap_len; char* m_disk_bitmap; } ;


 int ocfs2_resmap_clear_all_resv (struct ocfs2_reservation_map*) ;
 scalar_t__ ocfs2_resmap_disabled (struct ocfs2_reservation_map*) ;
 int resv_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void ocfs2_resmap_restart(struct ocfs2_reservation_map *resmap,
     unsigned int clen, char *disk_bitmap)
{
 if (ocfs2_resmap_disabled(resmap))
  return;

 spin_lock(&resv_lock);

 ocfs2_resmap_clear_all_resv(resmap);
 resmap->m_bitmap_len = clen;
 resmap->m_disk_bitmap = disk_bitmap;

 spin_unlock(&resv_lock);
}
