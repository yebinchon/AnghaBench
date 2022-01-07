
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int jffs2_rubinmips_comp ;
 int jffs2_unregister_compressor (int *) ;

void jffs2_rubinmips_exit(void)
{
 jffs2_unregister_compressor(&jffs2_rubinmips_comp);
}
