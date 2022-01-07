
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u16 ;
typedef int type ;
typedef int data ;


 int put_unaligned_le16 (size_t,int*) ;

__attribute__((used)) static inline u16 eir_append_le16(u8 *eir, u16 eir_len, u8 type, u16 data)
{
 eir[eir_len++] = sizeof(type) + sizeof(data);
 eir[eir_len++] = type;
 put_unaligned_le16(data, &eir[eir_len]);
 eir_len += sizeof(data);

 return eir_len;
}
