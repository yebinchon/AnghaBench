
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MS_BIND ;
 int do_tiocgptpeer (char*,char*) ;
 int fprintf (int ,char*) ;
 int mount (char*,char*,int *,int ,int *) ;
 int stderr ;

__attribute__((used)) static int verify_ptmx_bind_mount(void)
{
 int ret;

 ret = mount("/dev/pts/ptmx", "/dev/ptmx", ((void*)0), MS_BIND, ((void*)0));
 if (ret < 0) {
  fprintf(stderr, "Failed to bind mount \"/dev/pts/ptmx\" to "
    "\"/dev/ptmx\" mount namespace\n");
  return -1;
 }

 ret = do_tiocgptpeer("/dev/ptmx", "/dev/pts/");
 if (ret < 0)
  return -1;

 return 0;
}
