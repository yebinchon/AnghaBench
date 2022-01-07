
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
typedef int u32 ;
struct sst_hsw_ipc_fw_ready {int fw_info_size; scalar_t__* fw_info; int outbox_size; int outbox_offset; int inbox_size; int inbox_offset; } ;
struct sst_hsw {int boot_complete; int dev; int boot_wait; int dsp; } ;
typedef int fw_ready ;


 int ARRAY_SIZE (char**) ;
 int IPC_MAX_MAILBOX_BYTES ;
 int dev_dbg (int ,char*,int,...) ;
 int dev_info (int ,char*,char*,char*,char*,char*,char*) ;
 int memcpy (char*,scalar_t__*,size_t) ;
 int sst_dsp_mailbox_init (int ,int ,int ,int ,int ) ;
 int sst_dsp_read (int ,struct sst_hsw_ipc_fw_ready*,int,int) ;
 char* strsep (char**,char*) ;
 int wake_up (int *) ;

__attribute__((used)) static void hsw_fw_ready(struct sst_hsw *hsw, u32 header)
{
 struct sst_hsw_ipc_fw_ready fw_ready;
 u32 offset;
 u8 fw_info[IPC_MAX_MAILBOX_BYTES - 5 * sizeof(u32)];
 char *tmp[5], *pinfo;
 int i = 0;

 offset = (header & 0x1FFFFFFF) << 3;

 dev_dbg(hsw->dev, "ipc: DSP is ready 0x%8.8x offset %d\n",
  header, offset);


 sst_dsp_read(hsw->dsp, &fw_ready, offset, sizeof(fw_ready));

 sst_dsp_mailbox_init(hsw->dsp, fw_ready.inbox_offset,
  fw_ready.inbox_size, fw_ready.outbox_offset,
  fw_ready.outbox_size);

 hsw->boot_complete = 1;
 wake_up(&hsw->boot_wait);

 dev_dbg(hsw->dev, " mailbox upstream 0x%x - size 0x%x\n",
  fw_ready.inbox_offset, fw_ready.inbox_size);
 dev_dbg(hsw->dev, " mailbox downstream 0x%x - size 0x%x\n",
  fw_ready.outbox_offset, fw_ready.outbox_size);
 if (fw_ready.fw_info_size < sizeof(fw_ready.fw_info)) {
  fw_ready.fw_info[fw_ready.fw_info_size] = 0;
  dev_dbg(hsw->dev, " Firmware info: %s \n", fw_ready.fw_info);


  memcpy(fw_info, fw_ready.fw_info, fw_ready.fw_info_size);
  pinfo = &fw_info[0];
  for (i = 0; i < ARRAY_SIZE(tmp); i++)
   tmp[i] = strsep(&pinfo, " ");
  dev_info(hsw->dev, "FW loaded, mailbox readback FW info: type %s, - "
   "version: %s.%s, build %s, source commit id: %s\n",
   tmp[0], tmp[1], tmp[2], tmp[3], tmp[4]);
 }
}
