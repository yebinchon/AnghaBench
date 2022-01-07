
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct tipc_media {int name; } ;


 struct tipc_media** media_info_array ;
 int strcmp (int ,char const*) ;

struct tipc_media *tipc_media_find(const char *name)
{
 u32 i;

 for (i = 0; media_info_array[i] != ((void*)0); i++) {
  if (!strcmp(media_info_array[i]->name, name))
   break;
 }
 return media_info_array[i];
}
