
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpacket_hdr {int tp_status; } ;


 int TP_STATUS_USER ;

__attribute__((used)) static inline int __v1_rx_kernel_ready(struct tpacket_hdr *hdr)
{
 return ((hdr->tp_status & TP_STATUS_USER) == TP_STATUS_USER);
}
