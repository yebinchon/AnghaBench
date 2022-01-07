
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mic_info {int name; } ;
typedef scalar_t__ off_t ;


 char* MAP_FAILED ;
 int MAP_PRIVATE ;
 int O_RDONLY ;
 int PROT_READ ;
 int SEEK_END ;
 int close (int) ;
 char* errno ;
 scalar_t__ lseek (int,int ,int ) ;
 char* mmap (int *,scalar_t__,int ,int ,int,int ) ;
 int mpsslog (char*,int ,char*) ;
 int munmap (char*,scalar_t__) ;
 int open (char*,int ) ;
 int setsysfs (int ,char*,char*) ;
 int strncpy (char*,char*,int) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static void
set_log_buf_info(struct mic_info *mic)
{
 int fd;
 off_t len;
 char system_map[] = "/lib/firmware/mic/System.map";
 char *map, *temp, log_buf[17] = {'\0'};

 fd = open(system_map, O_RDONLY);
 if (fd < 0) {
  mpsslog("%s: Opening System.map failed: %d\n",
   mic->name, errno);
  return;
 }
 len = lseek(fd, 0, SEEK_END);
 if (len < 0) {
  mpsslog("%s: Reading System.map size failed: %d\n",
   mic->name, errno);
  close(fd);
  return;
 }
 map = mmap(((void*)0), len, PROT_READ, MAP_PRIVATE, fd, 0);
 if (map == MAP_FAILED) {
  mpsslog("%s: mmap of System.map failed: %d\n",
   mic->name, errno);
  close(fd);
  return;
 }
 temp = strstr(map, "__log_buf");
 if (!temp) {
  mpsslog("%s: __log_buf not found: %d\n", mic->name, errno);
  munmap(map, len);
  close(fd);
  return;
 }
 strncpy(log_buf, temp - 19, 16);
 setsysfs(mic->name, "log_buf_addr", log_buf);
 mpsslog("%s: log_buf_addr: %s\n", mic->name, log_buf);
 temp = strstr(map, "log_buf_len");
 if (!temp) {
  mpsslog("%s: log_buf_len not found: %d\n", mic->name, errno);
  munmap(map, len);
  close(fd);
  return;
 }
 strncpy(log_buf, temp - 19, 16);
 setsysfs(mic->name, "log_buf_len", log_buf);
 mpsslog("%s: log_buf_len: %s\n", mic->name, log_buf);
 munmap(map, len);
 close(fd);
}
