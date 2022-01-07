
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; int st_mode; } ;
struct pcap_filehdr {scalar_t__ magic; } ;


 int CMD_ERR ;
 int CMD_OK ;
 scalar_t__ MAP_FAILED ;
 int MAP_LOCKED ;
 int MAP_SHARED ;
 int O_RDONLY ;
 int PROT_READ ;
 int S_ISREG (int ) ;
 scalar_t__ TCPDUMP_MAGIC ;
 int errno ;
 int fstat (scalar_t__,struct stat*) ;
 scalar_t__ mmap (int *,int,int ,int,scalar_t__,int ) ;
 scalar_t__ open (char const*,int ) ;
 scalar_t__ pcap_fd ;
 int pcap_map_size ;
 scalar_t__ pcap_ptr_va_start ;
 int pcap_reset_pkt () ;
 int rl_printf (char*,...) ;
 int strerror (int ) ;

__attribute__((used)) static int try_load_pcap(const char *file)
{
 struct pcap_filehdr *hdr;
 struct stat sb;
 int ret;

 pcap_fd = open(file, O_RDONLY);
 if (pcap_fd < 0) {
  rl_printf("cannot open pcap [%s]!\n", strerror(errno));
  return CMD_ERR;
 }

 ret = fstat(pcap_fd, &sb);
 if (ret < 0) {
  rl_printf("cannot fstat pcap file!\n");
  return CMD_ERR;
 }

 if (!S_ISREG(sb.st_mode)) {
  rl_printf("not a regular pcap file, duh!\n");
  return CMD_ERR;
 }

 pcap_map_size = sb.st_size;
 if (pcap_map_size <= sizeof(struct pcap_filehdr)) {
  rl_printf("pcap file too small!\n");
  return CMD_ERR;
 }

 pcap_ptr_va_start = mmap(((void*)0), pcap_map_size, PROT_READ,
     MAP_SHARED | MAP_LOCKED, pcap_fd, 0);
 if (pcap_ptr_va_start == MAP_FAILED) {
  rl_printf("mmap of file failed!");
  return CMD_ERR;
 }

 hdr = (void *) pcap_ptr_va_start;
 if (hdr->magic != TCPDUMP_MAGIC) {
  rl_printf("wrong pcap magic!\n");
  return CMD_ERR;
 }

 pcap_reset_pkt();

 return CMD_OK;

}
