
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_test {int barnum; int size; char* device; int legacyirq; int msinum; int msixnum; int irqtype; int set_irqtype; int get_irqtype; int read; int write; int copy; } ;


 int EINVAL ;
 int ENOMEM ;
 int EOF ;
 void* atoi (char*) ;
 struct pci_test* calloc (int,int) ;
 int fprintf (int ,char*,char*) ;
 int getopt (int,char**,char*) ;
 char* optarg ;
 int perror (char*) ;
 int run_test (struct pci_test*) ;
 int stderr ;
 int strtoul (char*,int *,int ) ;

int main(int argc, char **argv)
{
 int c;
 struct pci_test *test;

 test = calloc(1, sizeof(*test));
 if (!test) {
  perror("Fail to allocate memory for pci_test\n");
  return -ENOMEM;
 }


 test->barnum = -1;


 test->size = 0x19000;


 test->device = "/dev/pci-endpoint-test.0";

 while ((c = getopt(argc, argv, "D:b:m:x:i:Ilhrwcs:")) != EOF)
 switch (c) {
 case 'D':
  test->device = optarg;
  continue;
 case 'b':
  test->barnum = atoi(optarg);
  if (test->barnum < 0 || test->barnum > 5)
   goto usage;
  continue;
 case 'l':
  test->legacyirq = 1;
  continue;
 case 'm':
  test->msinum = atoi(optarg);
  if (test->msinum < 1 || test->msinum > 32)
   goto usage;
  continue;
 case 'x':
  test->msixnum = atoi(optarg);
  if (test->msixnum < 1 || test->msixnum > 2048)
   goto usage;
  continue;
 case 'i':
  test->irqtype = atoi(optarg);
  if (test->irqtype < 0 || test->irqtype > 2)
   goto usage;
  test->set_irqtype = 1;
  continue;
 case 'I':
  test->get_irqtype = 1;
  continue;
 case 'r':
  test->read = 1;
  continue;
 case 'w':
  test->write = 1;
  continue;
 case 'c':
  test->copy = 1;
  continue;
 case 's':
  test->size = strtoul(optarg, ((void*)0), 0);
  continue;
 case 'h':
 default:
usage:
  fprintf(stderr,
   "usage: %s [options]\n"
   "Options:\n"
   "\t-D <dev>		PCI endpoint test device {default: /dev/pci-endpoint-test.0}\n"
   "\t-b <bar num>		BAR test (bar number between 0..5)\n"
   "\t-m <msi num>		MSI test (msi number between 1..32)\n"
   "\t-x <msix num>	\tMSI-X test (msix number between 1..2048)\n"
   "\t-i <irq type>	\tSet IRQ type (0 - Legacy, 1 - MSI, 2 - MSI-X)\n"
   "\t-I			Get current IRQ type configured\n"
   "\t-l			Legacy IRQ test\n"
   "\t-r			Read buffer test\n"
   "\t-w			Write buffer test\n"
   "\t-c			Copy buffer test\n"
   "\t-s <size>		Size of buffer {default: 100KB}\n"
   "\t-h			Print this help message\n",
   argv[0]);
  return -EINVAL;
 }

 return run_test(test);
}
