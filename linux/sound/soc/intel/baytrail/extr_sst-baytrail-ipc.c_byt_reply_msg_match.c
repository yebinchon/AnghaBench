
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int IPC_HEADER_MSG_ID_MASK ;
 int IPC_HEADER_STR_ID_MASK ;
 int IPC_HEADER_STR_ID_SHIFT ;

__attribute__((used)) static u64 byt_reply_msg_match(u64 header, u64 *mask)
{

 *mask = IPC_HEADER_MSG_ID_MASK |
        IPC_HEADER_STR_ID_MASK << IPC_HEADER_STR_ID_SHIFT;
 header &= *mask;

 return header;
}
