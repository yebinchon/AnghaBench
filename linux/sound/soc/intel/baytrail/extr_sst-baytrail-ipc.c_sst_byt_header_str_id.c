
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;


 int IPC_HEADER_STR_ID_MASK ;
 int IPC_HEADER_STR_ID_SHIFT ;

__attribute__((used)) static inline u8 sst_byt_header_str_id(u64 header)
{
 return (header >> IPC_HEADER_STR_ID_SHIFT) & IPC_HEADER_STR_ID_MASK;
}
