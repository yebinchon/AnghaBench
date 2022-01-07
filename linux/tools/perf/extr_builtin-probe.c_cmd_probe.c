
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __cmd_probe (int,char const**) ;
 int cleanup_params () ;
 int init_params () ;

int cmd_probe(int argc, const char **argv)
{
 int ret;

 ret = init_params();
 if (!ret) {
  ret = __cmd_probe(argc, argv);
  cleanup_params();
 }

 return ret < 0 ? ret : 0;
}
