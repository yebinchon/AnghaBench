
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_ERR ;
 char* strtok_r (char*,char*,char**) ;
 int try_close_pcap () ;
 int try_load_pcap (char*) ;

__attribute__((used)) static int cmd_load_pcap(char *file)
{
 char *file_trim, *tmp;

 file_trim = strtok_r(file, " ", &tmp);
 if (file_trim == ((void*)0))
  return CMD_ERR;

 try_close_pcap();

 return try_load_pcap(file_trim);
}
