
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int b ;


 scalar_t__ CHECK_FAIL (int) ;
 int perror (char*) ;
 int write (int,char*,int) ;

__attribute__((used)) static void send_byte(int fd)
{
 char b = 0x55;

 if (CHECK_FAIL(write(fd, &b, sizeof(b)) != 1))
  perror("Failed to send single byte");
}
