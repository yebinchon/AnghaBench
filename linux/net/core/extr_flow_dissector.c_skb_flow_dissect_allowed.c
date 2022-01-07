
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_FLOW_DISSECT_HDRS ;

__attribute__((used)) static bool skb_flow_dissect_allowed(int *num_hdrs)
{
 ++*num_hdrs;

 return (*num_hdrs <= MAX_FLOW_DISSECT_HDRS);
}
