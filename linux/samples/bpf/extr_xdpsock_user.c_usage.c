
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int XSK_UMEM__DEFAULT_FRAME_SIZE ;
 int exit (int ) ;
 int fprintf (int ,char const*,char const*,int ) ;
 int stderr ;

__attribute__((used)) static void usage(const char *prog)
{
 const char *str =
  "  Usage: %s [OPTIONS]\n"
  "  Options:\n"
  "  -r, --rxdrop		Discard all incoming packets (default)\n"
  "  -t, --txonly		Only send packets\n"
  "  -l, --l2fwd		MAC swap L2 forwarding\n"
  "  -i, --interface=n	Run on interface n\n"
  "  -q, --queue=n	Use queue n (default 0)\n"
  "  -p, --poll		Use poll syscall\n"
  "  -S, --xdp-skb=n	Use XDP skb-mod\n"
  "  -N, --xdp-native=n	Enfore XDP native mode\n"
  "  -n, --interval=n	Specify statistics update interval (default 1 sec).\n"
  "  -z, --zero-copy      Force zero-copy mode.\n"
  "  -c, --copy           Force copy mode.\n"
  "  -f, --frame-size=n   Set the frame size (must be a power of two, default is %d).\n"
  "  -m, --no-need-wakeup Turn off use of driver need wakeup flag.\n"
  "  -f, --frame-size=n   Set the frame size (must be a power of two in aligned mode, default is %d).\n"
  "  -u, --unaligned	Enable unaligned chunk placement\n"
  "\n";
 fprintf(stderr, str, prog, XSK_UMEM__DEFAULT_FRAME_SIZE);
 exit(EXIT_FAILURE);
}
