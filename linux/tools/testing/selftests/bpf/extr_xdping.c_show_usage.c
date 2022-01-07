
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XDPING_DEFAULT_COUNT ;
 int XDPING_MAX_COUNT ;
 int fprintf (int ,char*,char const*,int,int) ;
 int stderr ;

__attribute__((used)) static void show_usage(const char *prog)
{
 fprintf(stderr,
  "usage: %s [OPTS] -I interface destination\n\n"
  "OPTS:\n"
  "    -c count		Stop after sending count requests\n"
  "			(default %d, max %d)\n"
  "    -I interface	interface name\n"
  "    -N			Run in driver mode\n"
  "    -s			Server mode\n"
  "    -S			Run in skb mode\n",
  prog, XDPING_DEFAULT_COUNT, XDPING_MAX_COUNT);
}
