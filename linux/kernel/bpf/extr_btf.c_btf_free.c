
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf {int data; int resolved_ids; int resolved_sizes; int types; } ;


 int kfree (struct btf*) ;
 int kvfree (int ) ;

__attribute__((used)) static void btf_free(struct btf *btf)
{
 kvfree(btf->types);
 kvfree(btf->resolved_sizes);
 kvfree(btf->resolved_ids);
 kvfree(btf->data);
 kfree(btf);
}
