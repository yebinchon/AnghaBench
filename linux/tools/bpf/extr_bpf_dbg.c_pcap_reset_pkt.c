
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcap_filehdr {int dummy; } ;


 scalar_t__ pcap_ptr_va_curr ;
 scalar_t__ pcap_ptr_va_start ;

__attribute__((used)) static void pcap_reset_pkt(void)
{
 pcap_ptr_va_curr = pcap_ptr_va_start + sizeof(struct pcap_filehdr);
}
