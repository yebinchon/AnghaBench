
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ pcap_fd ;
 int rl_printf (char*) ;

__attribute__((used)) static bool pcap_loaded(void)
{
 if (pcap_fd < 0)
  rl_printf("no pcap file loaded!\n");

 return pcap_fd >= 0;
}
