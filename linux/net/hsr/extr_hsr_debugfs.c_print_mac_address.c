
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int seq_printf (struct seq_file*,char*,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char) ;

__attribute__((used)) static void print_mac_address(struct seq_file *sfp, unsigned char *mac)
{
 seq_printf(sfp, "%02x:%02x:%02x:%02x:%02x:%02x:",
     mac[0], mac[1], mac[2], mac[3], mac[4], mac[5]);
}
