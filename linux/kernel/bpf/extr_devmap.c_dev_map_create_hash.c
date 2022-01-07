
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlist_head {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_HLIST_HEAD (struct hlist_head*) ;
 struct hlist_head* kmalloc_array (unsigned int,int,int ) ;

__attribute__((used)) static struct hlist_head *dev_map_create_hash(unsigned int entries)
{
 int i;
 struct hlist_head *hash;

 hash = kmalloc_array(entries, sizeof(*hash), GFP_KERNEL);
 if (hash != ((void*)0))
  for (i = 0; i < entries; i++)
   INIT_HLIST_HEAD(&hash[i]);

 return hash;
}
