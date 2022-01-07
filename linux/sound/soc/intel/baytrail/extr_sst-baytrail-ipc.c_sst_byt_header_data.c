
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;


 int IPC_HEADER_DATA_MASK ;
 int IPC_HEADER_DATA_SHIFT ;

__attribute__((used)) static inline u16 sst_byt_header_data(u64 header)
{
 return (header >> IPC_HEADER_DATA_SHIFT) & IPC_HEADER_DATA_MASK;
}
