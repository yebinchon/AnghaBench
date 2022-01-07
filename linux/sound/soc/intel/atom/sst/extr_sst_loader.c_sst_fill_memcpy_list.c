
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sst_memcpy_list {int is_io; int memcpylist; int size; void const* src; void* dstn; } ;
struct list_head {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct sst_memcpy_list* kzalloc (int,int ) ;
 int list_add_tail (int *,struct list_head*) ;

__attribute__((used)) static int sst_fill_memcpy_list(struct list_head *memcpy_list,
   void *destn, const void *src, u32 size, bool is_io)
{
 struct sst_memcpy_list *listnode;

 listnode = kzalloc(sizeof(*listnode), GFP_KERNEL);
 if (listnode == ((void*)0))
  return -ENOMEM;
 listnode->dstn = destn;
 listnode->src = src;
 listnode->size = size;
 listnode->is_io = is_io;
 list_add_tail(&listnode->memcpylist, memcpy_list);

 return 0;
}
