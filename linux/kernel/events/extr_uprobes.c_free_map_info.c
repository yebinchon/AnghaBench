
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_info {struct map_info* next; } ;


 int kfree (struct map_info*) ;

__attribute__((used)) static inline struct map_info *free_map_info(struct map_info *info)
{
 struct map_info *next = info->next;
 kfree(info);
 return next;
}
