
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int IPC_GLB_REPLY_MASK ;
 int IPC_STATUS_MASK ;

__attribute__((used)) static u64 hsw_reply_msg_match(u64 header, u64 *mask)
{

 header &= ~(IPC_STATUS_MASK | IPC_GLB_REPLY_MASK);
 *mask = (u64)-1;

 return header;
}
