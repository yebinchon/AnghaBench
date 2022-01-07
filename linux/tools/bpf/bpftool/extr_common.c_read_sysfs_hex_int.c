
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vendor_id_buf ;


 int O_RDONLY ;
 int close (int) ;
 int errno ;
 int open (char*,int ) ;
 int p_err (char*,char*,...) ;
 int read (int,char*,int) ;
 int strerror (int ) ;
 int strtol (char*,int *,int ) ;

__attribute__((used)) static int read_sysfs_hex_int(char *path)
{
 char vendor_id_buf[8];
 int len;
 int fd;

 fd = open(path, O_RDONLY);
 if (fd < 0) {
  p_err("Can't open %s: %s", path, strerror(errno));
  return -1;
 }

 len = read(fd, vendor_id_buf, sizeof(vendor_id_buf));
 close(fd);
 if (len < 0) {
  p_err("Can't read %s: %s", path, strerror(errno));
  return -1;
 }
 if (len >= (int)sizeof(vendor_id_buf)) {
  p_err("Value in %s too long", path);
  return -1;
 }

 vendor_id_buf[len] = 0;

 return strtol(vendor_id_buf, ((void*)0), 0);
}
