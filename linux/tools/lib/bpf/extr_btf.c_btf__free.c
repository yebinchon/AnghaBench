
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf {int fd; struct btf* types; struct btf* data; } ;


 int close (int) ;
 int free (struct btf*) ;

void btf__free(struct btf *btf)
{
 if (!btf)
  return;

 if (btf->fd != -1)
  close(btf->fd);

 free(btf->data);
 free(btf->types);
 free(btf);
}
