
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct snd_soc_tplg_vendor_string_elem {int string; } ;


 int find_dai (int ) ;

__attribute__((used)) static int get_token_dai_type(void *elem, void *object, u32 offset, u32 size)
{
 struct snd_soc_tplg_vendor_string_elem *velem = elem;
 u32 *val = (u32 *)((u8 *)object + offset);

 *val = find_dai(velem->string);
 return 0;
}
