
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcxhr_rmh {unsigned int* cmd; int cmd_len; } ;
struct pcxhr_mgr {unsigned int io_num_reg_cont; int msg_lock; TYPE_1__* pci; } ;
struct TYPE_2__ {int dev; } ;


 int CMD_ACCESS_IO_WRITE ;
 unsigned int IO_NUM_REG_CONT ;
 int dev_dbg (int *,char*,unsigned int,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pcxhr_init_rmh (struct pcxhr_rmh*,int ) ;
 int pcxhr_send_msg_nolock (struct pcxhr_mgr*,struct pcxhr_rmh*) ;

int pcxhr_write_io_num_reg_cont(struct pcxhr_mgr *mgr, unsigned int mask,
    unsigned int value, int *changed)
{
 struct pcxhr_rmh rmh;
 int err;

 mutex_lock(&mgr->msg_lock);
 if ((mgr->io_num_reg_cont & mask) == value) {
  dev_dbg(&mgr->pci->dev,
   "IO_NUM_REG_CONT mask %x already is set to %x\n",
       mask, value);
  if (changed)
   *changed = 0;
  mutex_unlock(&mgr->msg_lock);
  return 0;
 }
 pcxhr_init_rmh(&rmh, CMD_ACCESS_IO_WRITE);
 rmh.cmd[0] |= IO_NUM_REG_CONT;
 rmh.cmd[1] = mask;
 rmh.cmd[2] = value;
 rmh.cmd_len = 3;
 err = pcxhr_send_msg_nolock(mgr, &rmh);
 if (err == 0) {
  mgr->io_num_reg_cont &= ~mask;
  mgr->io_num_reg_cont |= value;
  if (changed)
   *changed = 1;
 }
 mutex_unlock(&mgr->msg_lock);
 return err;
}
