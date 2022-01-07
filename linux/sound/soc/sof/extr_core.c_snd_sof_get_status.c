
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sof_ipc_panic_info {int filename; int linenum; } ;
struct snd_sof_dev {int dev; } ;
struct TYPE_3__ {int id; int msg; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int SOF_IPC_PANIC_CODE_MASK ;
 int SOF_IPC_PANIC_MAGIC ;
 int SOF_IPC_PANIC_MAGIC_MASK ;
 int dev_err (int ,char*,int,...) ;
 TYPE_1__* panic_msg ;
 int sof_oops (struct snd_sof_dev*,void*) ;
 int sof_stack (struct snd_sof_dev*,void*,void*,size_t) ;

void snd_sof_get_status(struct snd_sof_dev *sdev, u32 panic_code,
   u32 tracep_code, void *oops,
   struct sof_ipc_panic_info *panic_info,
   void *stack, size_t stack_words)
{
 u32 code;
 int i;


 if ((panic_code & SOF_IPC_PANIC_MAGIC_MASK) != SOF_IPC_PANIC_MAGIC) {
  dev_err(sdev->dev, "error: unexpected fault 0x%8.8x trace 0x%8.8x\n",
   panic_code, tracep_code);
  return;
 }

 code = panic_code & (SOF_IPC_PANIC_MAGIC_MASK | SOF_IPC_PANIC_CODE_MASK);

 for (i = 0; i < ARRAY_SIZE(panic_msg); i++) {
  if (panic_msg[i].id == code) {
   dev_err(sdev->dev, "error: %s\n", panic_msg[i].msg);
   dev_err(sdev->dev, "error: trace point %8.8x\n",
    tracep_code);
   goto out;
  }
 }


 dev_err(sdev->dev, "error: unknown reason %8.8x\n", panic_code);
 dev_err(sdev->dev, "error: trace point %8.8x\n", tracep_code);

out:
 dev_err(sdev->dev, "error: panic at %s:%d\n",
  panic_info->filename, panic_info->linenum);
 sof_oops(sdev, oops);
 sof_stack(sdev, oops, stack, stack_words);
}
