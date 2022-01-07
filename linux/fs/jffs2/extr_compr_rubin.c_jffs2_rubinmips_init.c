
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int jffs2_register_compressor (int *) ;
 int jffs2_rubinmips_comp ;

int jffs2_rubinmips_init(void)
{
 return jffs2_register_compressor(&jffs2_rubinmips_comp);
}
