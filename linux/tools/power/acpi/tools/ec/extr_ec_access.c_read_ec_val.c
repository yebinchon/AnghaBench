
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int EXIT_FAILURE ;
 int SEEK_SET ;
 int SYSFS_PATH ;
 int err (int ,char*,int,...) ;
 int lseek (int,int,int ) ;
 int printf (char*,int) ;
 int read (int,int*,int) ;

void read_ec_val(int fd, int byte_offset)
{
 uint8_t buf;
 int error;

 error = lseek(fd, byte_offset, SEEK_SET);
 if (error != byte_offset)
  err(EXIT_FAILURE, "Cannot set offset to 0x%.2x", byte_offset);

 error = read(fd, &buf, 1);
 if (error != 1)
  err(EXIT_FAILURE, "Could not read byte 0x%.2x from %s\n",
      byte_offset, SYSFS_PATH);
 printf("0x%.2x\n", buf);
 return;
}
