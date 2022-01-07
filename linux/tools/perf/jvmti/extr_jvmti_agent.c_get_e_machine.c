
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct jitheader {int elf_mach; } ;
typedef int ssize_t ;
typedef int info ;
typedef int id ;


 int O_RDONLY ;
 int close (int) ;
 int open (char*,int ) ;
 int read (int,...) ;

__attribute__((used)) static int get_e_machine(struct jitheader *hdr)
{
 ssize_t sret;
 char id[16];
 int fd, ret = -1;
 struct {
  uint16_t e_type;
  uint16_t e_machine;
 } info;

 fd = open("/proc/self/exe", O_RDONLY);
 if (fd == -1)
  return -1;

 sret = read(fd, id, sizeof(id));
 if (sret != sizeof(id))
  goto error;


 if (id[0] != 0x7f || id[1] != 'E' || id[2] != 'L' || id[3] != 'F')
  goto error;

 sret = read(fd, &info, sizeof(info));
 if (sret != sizeof(info))
  goto error;

 hdr->elf_mach = info.e_machine;
 ret = 0;
error:
 close(fd);
 return ret;
}
