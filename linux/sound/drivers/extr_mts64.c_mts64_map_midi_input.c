
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static u8 mts64_map_midi_input(u8 c)
{
 static u8 map[] = { 0, 1, 4, 2, 3 };

 return map[c];
}
