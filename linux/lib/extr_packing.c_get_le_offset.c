
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int get_le_offset(int offset)
{
 int closest_multiple_of_4;

 closest_multiple_of_4 = (offset / 4) * 4;
 offset -= closest_multiple_of_4;
 return closest_multiple_of_4 + (3 - offset);
}
