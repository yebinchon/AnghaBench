
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fflush (int *) ;
 int fputs (int ,int *) ;
 scalar_t__ outf ;
 int outp ;
 int output_buffer ;
 scalar_t__ stderr ;
 int * stdout ;

void flush_output_stdout(void)
{
 FILE *filep;

 if (outf == stderr)
  filep = stdout;
 else
  filep = outf;

 fputs(output_buffer, filep);
 fflush(filep);

 outp = output_buffer;
}
