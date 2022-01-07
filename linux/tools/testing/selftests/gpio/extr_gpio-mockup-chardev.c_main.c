
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpiochip_info {int lines; } ;


 int EINVAL ;
 int EXIT_FAILURE ;
 int exit (int ) ;
 int fprintf (int ,char*,char*) ;
 int free (struct gpiochip_info*) ;
 int gpio_pin_tests (struct gpiochip_info*,int) ;
 struct gpiochip_info* list_gpiochip (char*,int*) ;
 int printf (char*,...) ;
 int random () ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;

int main(int argc, char *argv[])
{
 char *prefix;
 int valid;
 struct gpiochip_info *cinfo;
 struct gpiochip_info *current;
 int i;
 int ret;

 if (argc < 3) {
  printf("Usage: %s prefix is_valid", argv[0]);
  exit(EXIT_FAILURE);
 }

 prefix = argv[1];
 valid = strcmp(argv[2], "true") == 0 ? 1 : 0;

 printf("Test gpiochip %s: ", prefix);
 cinfo = list_gpiochip(prefix, &ret);
 if (!cinfo) {
  if (!valid && ret == 0) {
   printf("Invalid test successful\n");
   ret = 0;
   goto out;
  } else {
   ret = -EINVAL;
   goto out;
  }
 } else if (cinfo && !valid) {
  ret = -EINVAL;
  goto out;
 }
 current = cinfo;
 for (i = 0; i < ret; i++) {
  gpio_pin_tests(current, 0);
  gpio_pin_tests(current, current->lines - 1);
  gpio_pin_tests(current, random() % current->lines);
  current++;
 }
 ret = 0;
 printf("successful\n");

out:
 if (ret)
  fprintf(stderr, "gpio<%s> test failed\n", prefix);

 if (cinfo)
  free(cinfo);

 if (ret)
  exit(EXIT_FAILURE);

 return ret;
}
