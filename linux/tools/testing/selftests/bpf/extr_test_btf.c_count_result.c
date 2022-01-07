
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error_cnt ;
 int fprintf (int ,char*) ;
 int pass_cnt ;
 int stderr ;

__attribute__((used)) static int count_result(int err)
{
 if (err)
  error_cnt++;
 else
  pass_cnt++;

 fprintf(stderr, "\n");
 return err;
}
