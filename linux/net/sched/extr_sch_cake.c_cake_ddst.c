
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CAKE_FLOW_DUAL_DST ;

__attribute__((used)) static bool cake_ddst(int flow_mode)
{
 return (flow_mode & CAKE_FLOW_DUAL_DST) == CAKE_FLOW_DUAL_DST;
}
