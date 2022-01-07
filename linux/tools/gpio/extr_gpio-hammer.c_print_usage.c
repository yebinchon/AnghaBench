
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int stderr ;

void print_usage(void)
{
 fprintf(stderr, "Usage: gpio-hammer [options]...\n"
  "Hammer GPIO lines, 0->1->0->1...\n"
  "  -n <name>  Hammer GPIOs on a named device (must be stated)\n"
  "  -o <n>     Offset[s] to hammer, at least one, several can be stated\n"
  " [-c <n>]    Do <n> loops (optional, infinite loop if not stated)\n"
  "  -?         This helptext\n"
  "\n"
  "Example:\n"
  "gpio-hammer -n gpiochip0 -o 4\n"
 );
}
