
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sst_hsw {int dev; } ;



 int dev_dbg (int ,char*,...) ;
 int hsw_process_reply (struct sst_hsw*,int) ;
 int msg_get_module_id (int) ;
 int msg_get_module_operation (int) ;

__attribute__((used)) static int hsw_module_message(struct sst_hsw *hsw, u32 header)
{
 u32 operation, module_id;
 int handled = 0;

 operation = msg_get_module_operation(header);
 module_id = msg_get_module_id(header);
 dev_dbg(hsw->dev, "received module message header: 0x%8.8x\n",
   header);
 dev_dbg(hsw->dev, "operation: 0x%8.8x module_id: 0x%8.8x\n",
   operation, module_id);

 switch (operation) {
 case 128:
  dev_dbg(hsw->dev, "module notification received");
  handled = 1;
  break;
 default:
  handled = hsw_process_reply(hsw, header);
  break;
 }

 return handled;
}
