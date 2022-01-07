
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_link {int (* destroy ) (struct bpf_link*) ;} ;


 int free (struct bpf_link*) ;
 int stub1 (struct bpf_link*) ;

int bpf_link__destroy(struct bpf_link *link)
{
 int err;

 if (!link)
  return 0;

 err = link->destroy(link);
 free(link);

 return err;
}
