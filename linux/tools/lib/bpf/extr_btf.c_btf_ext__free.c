
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_ext {struct btf_ext* data; } ;


 int free (struct btf_ext*) ;

void btf_ext__free(struct btf_ext *btf_ext)
{
 if (!btf_ext)
  return;
 free(btf_ext->data);
 free(btf_ext);
}
