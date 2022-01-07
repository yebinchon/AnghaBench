
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;
 int munmap (int ,scalar_t__) ;
 int pcap_fd ;
 scalar_t__ pcap_map_size ;
 scalar_t__ pcap_packet ;
 int * pcap_ptr_va_curr ;
 int pcap_ptr_va_start ;

__attribute__((used)) static void try_close_pcap(void)
{
 if (pcap_fd >= 0) {
  munmap(pcap_ptr_va_start, pcap_map_size);
  close(pcap_fd);

  pcap_ptr_va_start = pcap_ptr_va_curr = ((void*)0);
  pcap_map_size = 0;
  pcap_packet = 0;
  pcap_fd = -1;
 }
}
