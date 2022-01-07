
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int EXIT_FAILURE ;
 int SEEK_SET ;
 int err (int ,char*,int,...) ;
 int lseek (int,int,int ) ;
 int write (int,int *,int) ;

void write_ec_val(int fd, int byte_offset, uint8_t value)
{
 int error;

 error = lseek(fd, byte_offset, SEEK_SET);
 if (error != byte_offset)
  err(EXIT_FAILURE, "Cannot set offset to 0x%.2x", byte_offset);

 error = write(fd, &value, 1);
 if (error != 1)
  err(EXIT_FAILURE, "Cannot write value 0x%.2x to offset 0x%.2x",
      value, byte_offset);
}
