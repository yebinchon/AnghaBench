
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int stderr ;

void print_usage(void)
{
 fprintf(stderr, "Usage: gpio-event-mon [options]...\n"
  "Listen to events on GPIO lines, 0->1 1->0\n"
  "  -n <name>  Listen on GPIOs on a named device (must be stated)\n"
  "  -o <n>     Offset to monitor\n"
  "  -d         Set line as open drain\n"
  "  -s         Set line as open source\n"
  "  -r         Listen for rising edges\n"
  "  -f         Listen for falling edges\n"
  " [-c <n>]    Do <n> loops (optional, infinite loop if not stated)\n"
  "  -?         This helptext\n"
  "\n"
  "Example:\n"
  "gpio-event-mon -n gpiochip0 -o 4 -r -f\n"
 );
}
