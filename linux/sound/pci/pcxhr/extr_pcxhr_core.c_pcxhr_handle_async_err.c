
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pcxhr_mgr {int async_err_other_last; int async_err_pipe_xrun; int async_err_stream_xrun; TYPE_1__* pci; } ;
typedef enum pcxhr_async_err_src { ____Placeholder_pcxhr_async_err_src } pcxhr_async_err_src ;
struct TYPE_2__ {int dev; } ;





 int dev_dbg (int *,char*,char*,char*,int,int) ;

__attribute__((used)) static int pcxhr_handle_async_err(struct pcxhr_mgr *mgr, u32 err,
      enum pcxhr_async_err_src err_src, int pipe,
      int is_capture)
{
 static char* err_src_name[] = {
  [129] = "Pipe",
  [128] = "Stream",
  [130] = "Audio"
 };

 if (err & 0xfff)
  err &= 0xfff;
 else
  err = ((err >> 12) & 0xfff);
 if (!err)
  return 0;
 dev_dbg(&mgr->pci->dev, "CMD_ASYNC : Error %s %s Pipe %d err=%x\n",
      err_src_name[err_src],
      is_capture ? "Record" : "Play", pipe, err);
 if (err == 0xe01)
  mgr->async_err_stream_xrun++;
 else if (err == 0xe10)
  mgr->async_err_pipe_xrun++;
 else
  mgr->async_err_other_last = (int)err;
 return 1;
}
