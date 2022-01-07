
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int map_mem (char*,int,int,int) ;
 int scan_rom (char*,char*) ;
 int scan_tree (char*,char*,int,int,int) ;
 int stderr ;

int main(void)
{
 int rc;

 if (map_mem("/dev/mem", 0, 0xA0000, 1) == 0)
  fprintf(stderr, "PASS: /dev/mem 0x0-0xa0000 is readable\n");
 else
  fprintf(stderr, "FAIL: /dev/mem 0x0-0xa0000 not accessible\n");
 if (map_mem("/dev/mem", 0xA0000, 0x20000, 0) == 0)
  fprintf(stderr, "PASS: /dev/mem 0xa0000-0xc0000 is mappable\n");
 else
  fprintf(stderr, "FAIL: /dev/mem 0xa0000-0xc0000 not accessible\n");

 if (map_mem("/dev/mem", 0xC0000, 0x40000, 1) == 0)
  fprintf(stderr, "PASS: /dev/mem 0xc0000-0x100000 is readable\n");
 else
  fprintf(stderr, "FAIL: /dev/mem 0xc0000-0x100000 not accessible\n");
 rc = map_mem("/dev/mem", 0, 1024*1024, 0);
 if (rc == 0)
  fprintf(stderr, "PASS: /dev/mem 0x0-0x100000 is mappable\n");
 else if (rc > 0)
  fprintf(stderr, "PASS: /dev/mem 0x0-0x100000 not mappable\n");
 else
  fprintf(stderr, "FAIL: /dev/mem 0x0-0x100000 not accessible\n");

 scan_tree("/sys/class/pci_bus", "legacy_mem", 0, 0xA0000, 1);
 scan_tree("/sys/class/pci_bus", "legacy_mem", 0xA0000, 0x20000, 0);
 scan_tree("/sys/class/pci_bus", "legacy_mem", 0xC0000, 0x40000, 1);
 scan_tree("/sys/class/pci_bus", "legacy_mem", 0, 1024*1024, 0);

 scan_rom("/sys/devices", "rom");

 scan_tree("/proc/bus/pci", "??.?", 0, 0xA0000, 1);
 scan_tree("/proc/bus/pci", "??.?", 0xA0000, 0x20000, 0);
 scan_tree("/proc/bus/pci", "??.?", 0xC0000, 0x40000, 1);
 scan_tree("/proc/bus/pci", "??.?", 0, 1024*1024, 0);

 return rc;
}
