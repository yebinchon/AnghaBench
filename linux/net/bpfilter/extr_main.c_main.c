
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int ) ;
 int debug_fd ;
 int dprintf (int ,char*) ;
 int loop () ;
 int open (char*,int) ;

int main(void)
{
 debug_fd = open("/dev/kmsg", 00000002);
 dprintf(debug_fd, "Started bpfilter\n");
 loop();
 close(debug_fd);
 return 0;
}
