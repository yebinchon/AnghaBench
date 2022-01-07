
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fclose (int *) ;
 int fscanf (int *,char*,int*) ;
 int * popen (char*,char*) ;

int get_warnings_count(void)
{
 int warnings;
 FILE *f;

 f = popen("dmesg | grep \"WARNING:\" | wc -l", "r");
 fscanf(f, "%d", &warnings);
 fclose(f);

 return warnings;
}
