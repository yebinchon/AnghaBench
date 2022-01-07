
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_tplg {int dummy; } ;


 int soc_tplg_complete (struct soc_tplg*) ;
 int soc_tplg_process_headers (struct soc_tplg*) ;

__attribute__((used)) static int soc_tplg_load(struct soc_tplg *tplg)
{
 int ret;

 ret = soc_tplg_process_headers(tplg);
 if (ret == 0)
  soc_tplg_complete(tplg);

 return ret;
}
