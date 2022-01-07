
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcpy (char*,char*) ;
 int strncmp (char*,char*,int) ;

void fix_up_intel_idle_driver_name(char *tmp, int num)
{

 if (!strncmp(tmp, "NHM-", 4)) {
  switch (num) {
  case 1:
   strcpy(tmp, "C1");
   break;
  case 2:
   strcpy(tmp, "C3");
   break;
  case 3:
   strcpy(tmp, "C6");
   break;
  }
 } else if (!strncmp(tmp, "SNB-", 4)) {
  switch (num) {
  case 1:
   strcpy(tmp, "C1");
   break;
  case 2:
   strcpy(tmp, "C3");
   break;
  case 3:
   strcpy(tmp, "C6");
   break;
  case 4:
   strcpy(tmp, "C7");
   break;
  }
 } else if (!strncmp(tmp, "ATM-", 4)) {
  switch (num) {
  case 1:
   strcpy(tmp, "C1");
   break;
  case 2:
   strcpy(tmp, "C2");
   break;
  case 3:
   strcpy(tmp, "C4");
   break;
  case 4:
   strcpy(tmp, "C6");
   break;
  }
 }
}
