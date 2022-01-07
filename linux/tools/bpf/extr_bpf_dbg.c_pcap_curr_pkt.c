
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void pcap_pkthdr ;


 scalar_t__ pcap_ptr_va_curr ;

__attribute__((used)) static struct pcap_pkthdr *pcap_curr_pkt(void)
{
 return (void *) pcap_ptr_va_curr;
}
