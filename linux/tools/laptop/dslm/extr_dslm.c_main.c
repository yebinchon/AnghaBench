
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_NONBLOCK ;
 int O_RDONLY ;
 int SIGINT ;
 int atoi (char*) ;
 int close (int) ;
 int ender ;
 int errno ;
 int exit (int) ;
 int measure (int) ;
 int open (char*,int) ;
 int printf (char*,...) ;
 int puts (char*) ;
 int signal (int ,int ) ;
 int sleep (int) ;
 char* strerror (int ) ;
 int usage () ;

int main(int argc, char **argv)
{
    int fd;
    char *disk = 0;
    int settle_time = 60;


    if (argc == 2)
 disk = argv[1];
    else if (argc == 4) {
 settle_time = atoi(argv[2]);
 disk = argv[3];
    } else
 usage();

    if (!(fd = open(disk, O_RDONLY|O_NONBLOCK))) {
 printf("Can't open %s, because: %s\n", disk, strerror(errno));
 exit(-1);
    }

    if (settle_time) {
 printf("Waiting %d seconds for the system to settle down to "
        "'normal'\n", settle_time);
 sleep(settle_time);
    } else
 puts("Not waiting for system to settle down");

    signal(SIGINT, ender);

    measure(fd);

    close(fd);

    return 0;
}
