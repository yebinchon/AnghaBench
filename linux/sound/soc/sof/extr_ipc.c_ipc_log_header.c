
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct device {int dummy; } ;


 int SOF_GLB_TYPE_MASK ;
 int SOF_IPC_GLB_TRACE_MSG ;
 int dev_dbg (struct device*,char*,int *,int) ;

__attribute__((used)) static inline void ipc_log_header(struct device *dev, u8 *text, u32 cmd)
{
 if ((cmd & SOF_GLB_TYPE_MASK) != SOF_IPC_GLB_TRACE_MSG)
  dev_dbg(dev, "%s: 0x%x\n", text, cmd);
}
