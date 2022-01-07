
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int batadv_tt_len (int) ;

__attribute__((used)) static u16 batadv_tt_entries(u16 tt_len)
{
 return tt_len / batadv_tt_len(1);
}
