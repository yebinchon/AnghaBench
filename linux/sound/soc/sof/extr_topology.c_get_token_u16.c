
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct snd_soc_tplg_vendor_value_elem {int value; } ;


 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static int get_token_u16(void *elem, void *object, u32 offset, u32 size)
{
 struct snd_soc_tplg_vendor_value_elem *velem = elem;
 u16 *val = (u16 *)((u8 *)object + offset);

 *val = (u16)le32_to_cpu(velem->value);
 return 0;
}
