
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fflush (int ) ;
 int fputs (int ,int ) ;
 int outf ;
 int outp ;
 int output_buffer ;

void flush_output_stderr(void)
{
 fputs(output_buffer, outf);
 fflush(outf);
 outp = output_buffer;
}
