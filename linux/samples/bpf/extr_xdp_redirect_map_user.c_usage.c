
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char const*) ;
 int stderr ;

__attribute__((used)) static void usage(const char *prog)
{
 fprintf(stderr,
  "usage: %s [OPTS] <IFNAME|IFINDEX>_IN <IFNAME|IFINDEX>_OUT\n\n"
  "OPTS:\n"
  "    -S    use skb-mode\n"
  "    -N    enforce native mode\n"
  "    -F    force loading prog\n",
  prog);
}
