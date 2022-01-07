
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int printf (char*,char*) ;
 char* strerror (int ) ;
 scalar_t__ system (char*) ;

__attribute__((used)) static inline int generate_load(void)
{
 if (system("dd if=/dev/zero of=/dev/null count=5000k status=none") < 0) {
  printf("failed to generate some load with dd: %s\n", strerror(errno));
  return -1;
 }

 return 0;
}
