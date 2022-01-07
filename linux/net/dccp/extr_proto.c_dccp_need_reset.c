
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DCCP_CLOSED ;
 int DCCP_LISTEN ;
 int DCCP_REQUESTING ;

__attribute__((used)) static inline int dccp_need_reset(int state)
{
 return state != DCCP_CLOSED && state != DCCP_LISTEN &&
        state != DCCP_REQUESTING;
}
