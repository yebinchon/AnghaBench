
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipc_dsp_hdr {int cmd_id; int mod_index_id; int pipe_id; int length; scalar_t__ mod_id; } ;



void sst_fill_header_dsp(struct ipc_dsp_hdr *dsp, int msg,
     int pipe_id, int len)
{
 dsp->cmd_id = msg;
 dsp->mod_index_id = 0xff;
 dsp->pipe_id = pipe_id;
 dsp->length = len;
 dsp->mod_id = 0;
}
