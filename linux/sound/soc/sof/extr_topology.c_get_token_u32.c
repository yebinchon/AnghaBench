
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct snd_soc_tplg_vendor_value_elem {int value; } ;


 int le32_to_cpu (int ) ;

__attribute__((used)) static int get_token_u32(void *elem, void *object, u32 offset, u32 size)
{
 struct snd_soc_tplg_vendor_value_elem *velem = elem;
 u32 *val = (u32 *)((u8 *)object + offset);

 *val = le32_to_cpu(velem->value);
 return 0;
}
