
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int D (int ) ;
 scalar_t__ EIO ;
 int HDIO_DRIVE_CMD ;
 unsigned char WIN_CHECKPOWERMODE1 ;
 unsigned char WIN_CHECKPOWERMODE2 ;
 scalar_t__ errno ;
 scalar_t__ ioctl (int,int ,unsigned char**) ;
 int printf (char*,int) ;

__attribute__((used)) static int check_powermode(int fd)
{
    unsigned char args[4] = {WIN_CHECKPOWERMODE1,0,0,0};
    int state;

    if (ioctl(fd, HDIO_DRIVE_CMD, &args)
 && (args[0] = WIN_CHECKPOWERMODE2)
 && ioctl(fd, HDIO_DRIVE_CMD, &args)) {
 if (errno != EIO || args[0] != 0 || args[1] != 0) {
     state = -1;
 } else
     state = 0;
    } else {
 state = (args[2] == 255) ? 1 : 0;
    }
    D(printf(" drive state is:  %d\n", state));

    return state;
}
