
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EC_SPACE_SIZE ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int O_RDONLY ;
 int O_WRONLY ;
 int SYSFS_PATH ;
 int close (int) ;
 int dump_ec (int) ;
 int err (int ,char*,int ) ;
 int exit (int ) ;
 int open (int ,int) ;
 int parse_opts (int,char**) ;
 int read_byte_offset ;
 int read_ec_val (int,int) ;
 int read_mode ;
 int usage (char*,int ) ;
 int write_byte_offset ;
 int write_ec_val (int,int ,int ) ;
 int write_value ;

int main(int argc, char *argv[])
{
 int file_mode = O_RDONLY;
 int fd;

 parse_opts(argc, argv);

 if (read_mode == 0)
  file_mode = O_WRONLY;
 else if (read_mode == 1)
  file_mode = O_RDONLY;
 else
  usage(argv[0], EXIT_FAILURE);

 fd = open(SYSFS_PATH, file_mode);
 if (fd == -1)
  err(EXIT_FAILURE, "%s", SYSFS_PATH);

 if (read_mode)
  if (read_byte_offset == -1)
   dump_ec(fd);
  else if (read_byte_offset < 0 ||
    read_byte_offset >= EC_SPACE_SIZE)
   usage(argv[0], EXIT_FAILURE);
  else
   read_ec_val(fd, read_byte_offset);
 else
  write_ec_val(fd, write_byte_offset, write_value);
 close(fd);

 exit(EXIT_SUCCESS);
}
