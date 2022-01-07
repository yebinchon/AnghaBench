
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fat_entry {int nr_bhs; struct buffer_head** bhs; } ;
struct buffer_head {int dummy; } ;


 int get_bh (struct buffer_head*) ;

__attribute__((used)) static void fat_collect_bhs(struct buffer_head **bhs, int *nr_bhs,
       struct fat_entry *fatent)
{
 int n, i;

 for (n = 0; n < fatent->nr_bhs; n++) {
  for (i = 0; i < *nr_bhs; i++) {
   if (fatent->bhs[n] == bhs[i])
    break;
  }
  if (i == *nr_bhs) {
   get_bh(fatent->bhs[n]);
   bhs[i] = fatent->bhs[n];
   (*nr_bhs)++;
  }
 }
}
