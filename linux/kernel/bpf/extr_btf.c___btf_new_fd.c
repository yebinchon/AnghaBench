
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf {int dummy; } ;


 int O_CLOEXEC ;
 int O_RDONLY ;
 int anon_inode_getfd (char*,int *,struct btf*,int) ;
 int btf_fops ;

__attribute__((used)) static int __btf_new_fd(struct btf *btf)
{
 return anon_inode_getfd("btf", &btf_fops, btf, O_RDONLY | O_CLOEXEC);
}
