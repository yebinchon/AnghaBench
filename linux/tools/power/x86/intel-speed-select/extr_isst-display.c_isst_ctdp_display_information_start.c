
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int format_and_print (int *,int ,char*,int *) ;
 scalar_t__ last_level ;

void isst_ctdp_display_information_start(FILE *outf)
{
 last_level = 0;
 format_and_print(outf, 0, "start", ((void*)0));
}
