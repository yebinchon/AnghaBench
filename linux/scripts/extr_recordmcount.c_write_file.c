
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t st_size; int st_mode; } ;


 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int close (scalar_t__) ;
 scalar_t__ fd_map ;
 int file_append ;
 size_t file_append_size ;
 int file_map ;
 int file_updated ;
 scalar_t__ open (char*,int,int ) ;
 int perror (char const*) ;
 scalar_t__ rename (char*,char const*) ;
 TYPE_1__ sb ;
 int sprintf (char*,char*,char const*) ;
 int strlen (char const*) ;
 size_t write (scalar_t__,int ,size_t) ;

__attribute__((used)) static int write_file(const char *fname)
{
 char tmp_file[strlen(fname) + 4];
 size_t n;

 if (!file_updated)
  return 0;

 sprintf(tmp_file, "%s.rc", fname);






 fd_map = open(tmp_file, O_WRONLY | O_TRUNC | O_CREAT, sb.st_mode);
 if (fd_map < 0) {
  perror(fname);
  return -1;
 }
 n = write(fd_map, file_map, sb.st_size);
 if (n != sb.st_size) {
  perror("write");
  close(fd_map);
  return -1;
 }
 if (file_append_size) {
  n = write(fd_map, file_append, file_append_size);
  if (n != file_append_size) {
   perror("write");
   close(fd_map);
   return -1;
  }
 }
 close(fd_map);
 if (rename(tmp_file, fname) < 0) {
  perror(fname);
  return -1;
 }
 return 0;
}
