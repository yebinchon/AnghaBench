
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sparsebit {int dummy; } ;


 int abort () ;
 struct sparsebit* calloc (int,int) ;
 int perror (char*) ;

struct sparsebit *sparsebit_alloc(void)
{
 struct sparsebit *s;


 s = calloc(1, sizeof(*s));
 if (!s) {
  perror("calloc");
  abort();
 }

 return s;
}
