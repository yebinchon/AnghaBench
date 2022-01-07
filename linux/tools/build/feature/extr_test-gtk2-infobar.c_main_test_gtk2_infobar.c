
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gtk_info_bar_new () ;
 int gtk_init (int*,char***) ;

int main(int argc, char *argv[])
{
 gtk_init(&argc, &argv);
 gtk_info_bar_new();

 return 0;
}
