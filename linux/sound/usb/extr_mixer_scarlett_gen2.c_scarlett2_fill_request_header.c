
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct scarlett2_usb_packet {scalar_t__ pad; scalar_t__ error; void* seq; void* size; int cmd; } ;
struct scarlett2_mixer_data {int scarlett2_seq; } ;


 void* cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static void scarlett2_fill_request_header(struct scarlett2_mixer_data *private,
       struct scarlett2_usb_packet *req,
       u32 cmd, u16 req_size)
{

 u16 seq = private->scarlett2_seq++;

 req->cmd = cpu_to_le32(cmd);
 req->size = cpu_to_le16(req_size);
 req->seq = cpu_to_le16(seq);
 req->error = 0;
 req->pad = 0;
}
