
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union bpf_attr {int btf_log_size; int btf_log_buf; int btf_log_level; int btf_size; int btf; } ;
struct btf {int dummy; } ;


 scalar_t__ IS_ERR (struct btf*) ;
 int PTR_ERR (struct btf*) ;
 int __btf_new_fd (struct btf*) ;
 int btf_alloc_id (struct btf*) ;
 int btf_free (struct btf*) ;
 struct btf* btf_parse (int ,int ,int ,int ,int ) ;
 int btf_put (struct btf*) ;
 int u64_to_user_ptr (int ) ;

int btf_new_fd(const union bpf_attr *attr)
{
 struct btf *btf;
 int ret;

 btf = btf_parse(u64_to_user_ptr(attr->btf),
   attr->btf_size, attr->btf_log_level,
   u64_to_user_ptr(attr->btf_log_buf),
   attr->btf_log_size);
 if (IS_ERR(btf))
  return PTR_ERR(btf);

 ret = btf_alloc_id(btf);
 if (ret) {
  btf_free(btf);
  return ret;
 }







 ret = __btf_new_fd(btf);
 if (ret < 0)
  btf_put(btf);

 return ret;
}
