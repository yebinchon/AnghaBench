
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpacket3_hdr {int tp_status; } ;


 int TP_STATUS_SENDING ;
 int TP_STATUS_SEND_REQUEST ;

__attribute__((used)) static inline int __v3_tx_kernel_ready(struct tpacket3_hdr *hdr)
{
 return !(hdr->tp_status & (TP_STATUS_SEND_REQUEST | TP_STATUS_SENDING));
}
