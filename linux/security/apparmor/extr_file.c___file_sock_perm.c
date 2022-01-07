
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct socket {int dummy; } ;
struct file {scalar_t__ private_data; } ;
struct aa_label {int dummy; } ;


 int AA_BUG (int) ;
 scalar_t__ aa_label_is_subset (struct aa_label*,struct aa_label*) ;
 int aa_sock_file_perm (struct aa_label*,char const*,scalar_t__,struct socket*) ;
 int file_ctx (struct file*) ;
 int last_error (int,int) ;
 int update_file_ctx (int ,struct aa_label*,scalar_t__) ;

__attribute__((used)) static int __file_sock_perm(const char *op, struct aa_label *label,
       struct aa_label *flabel, struct file *file,
       u32 request, u32 denied)
{
 struct socket *sock = (struct socket *) file->private_data;
 int error;

 AA_BUG(!sock);


 if (!denied && aa_label_is_subset(flabel, label))
  return 0;


 error = aa_sock_file_perm(label, op, request, sock);
 if (denied) {


  last_error(error, aa_sock_file_perm(flabel, op, request, sock));
 }
 if (!error)
  update_file_ctx(file_ctx(file), label, request);

 return error;
}
