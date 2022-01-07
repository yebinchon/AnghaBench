
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sst_byt {int boot_complete; int boot_wait; int dev; } ;


 int dev_dbg (int ,char*,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void sst_byt_fw_ready(struct sst_byt *byt, u64 header)
{
 dev_dbg(byt->dev, "ipc: DSP is ready 0x%llX\n", header);

 byt->boot_complete = 1;
 wake_up(&byt->boot_wait);
}
