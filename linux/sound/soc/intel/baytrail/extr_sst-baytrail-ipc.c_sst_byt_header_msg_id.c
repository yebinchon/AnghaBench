
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;


 int IPC_HEADER_MSG_ID_MASK ;

__attribute__((used)) static inline u16 sst_byt_header_msg_id(u64 header)
{
 return header & IPC_HEADER_MSG_ID_MASK;
}
