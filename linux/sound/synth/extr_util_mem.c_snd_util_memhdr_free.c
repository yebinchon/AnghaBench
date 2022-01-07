
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {struct list_head* next; } ;
struct snd_util_memhdr {struct list_head block; } ;


 struct snd_util_memhdr* get_memblk (struct list_head*) ;
 int kfree (struct snd_util_memhdr*) ;
 int list_del (struct list_head*) ;

void snd_util_memhdr_free(struct snd_util_memhdr *hdr)
{
 struct list_head *p;

 if (!hdr)
  return;

 while ((p = hdr->block.next) != &hdr->block) {
  list_del(p);
  kfree(get_memblk(p));
 }
 kfree(hdr);
}
