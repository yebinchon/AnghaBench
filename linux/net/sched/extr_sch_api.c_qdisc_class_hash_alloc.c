
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlist_head {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_HLIST_HEAD (struct hlist_head*) ;
 struct hlist_head* kvmalloc_array (unsigned int,int,int ) ;

__attribute__((used)) static struct hlist_head *qdisc_class_hash_alloc(unsigned int n)
{
 struct hlist_head *h;
 unsigned int i;

 h = kvmalloc_array(n, sizeof(struct hlist_head), GFP_KERNEL);

 if (h != ((void*)0)) {
  for (i = 0; i < n; i++)
   INIT_HLIST_HEAD(&h[i]);
 }
 return h;
}
