
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PROCESS_MSG ;

__attribute__((used)) static inline bool sst_is_process_reply(u32 msg_id)
{
 return ((msg_id & PROCESS_MSG) ? 1 : 0);
}
