
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CAKE_FLOW_DUAL_SRC ;

__attribute__((used)) static bool cake_dsrc(int flow_mode)
{
 return (flow_mode & CAKE_FLOW_DUAL_SRC) == CAKE_FLOW_DUAL_SRC;
}
