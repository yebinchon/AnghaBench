
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int * popen (char*,char*) ;
 int test_sock () ;

int main(void)
{
 FILE *f;

 f = popen("ping -4 -c5 localhost", "r");
 (void)f;

 return test_sock();
}
