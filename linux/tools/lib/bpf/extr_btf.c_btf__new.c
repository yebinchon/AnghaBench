
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf {int fd; int data_size; int data; } ;
typedef int __u8 ;
typedef int __u32 ;


 int ENOMEM ;
 struct btf* ERR_PTR (int) ;
 int btf__free (struct btf*) ;
 int btf_parse_hdr (struct btf*) ;
 int btf_parse_str_sec (struct btf*) ;
 int btf_parse_type_sec (struct btf*) ;
 struct btf* calloc (int,int) ;
 int malloc (int ) ;
 int memcpy (int ,int *,int ) ;

struct btf *btf__new(__u8 *data, __u32 size)
{
 struct btf *btf;
 int err;

 btf = calloc(1, sizeof(struct btf));
 if (!btf)
  return ERR_PTR(-ENOMEM);

 btf->fd = -1;

 btf->data = malloc(size);
 if (!btf->data) {
  err = -ENOMEM;
  goto done;
 }

 memcpy(btf->data, data, size);
 btf->data_size = size;

 err = btf_parse_hdr(btf);
 if (err)
  goto done;

 err = btf_parse_str_sec(btf);
 if (err)
  goto done;

 err = btf_parse_type_sec(btf);

done:
 if (err) {
  btf__free(btf);
  return ERR_PTR(err);
 }

 return btf;
}
