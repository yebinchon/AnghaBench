
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;


 int memset (struct scatterlist*,int ,int) ;
 int sg_init_marker (struct scatterlist*,unsigned int) ;

void sg_init_table(struct scatterlist *sgl, unsigned int nents)
{
 memset(sgl, 0, sizeof(*sgl) * nents);
 sg_init_marker(sgl, nents);
}
