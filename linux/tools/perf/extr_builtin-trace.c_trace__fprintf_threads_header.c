
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 size_t fprintf (int *,char*) ;

__attribute__((used)) static size_t trace__fprintf_threads_header(FILE *fp)
{
 size_t printed;

 printed = fprintf(fp, "\n Summary of events:\n\n");

 return printed;
}
