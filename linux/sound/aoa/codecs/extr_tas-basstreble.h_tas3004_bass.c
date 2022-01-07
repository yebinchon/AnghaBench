
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__* tas3004_bass_diff_to_treble ;
 int * tas3004_treble_table ;

__attribute__((used)) static inline u8 tas3004_bass(int idx)
{
 u8 result = tas3004_treble_table[idx];

 if (idx >= 50)
  result += tas3004_bass_diff_to_treble[idx-50];
 return result;
}
