
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_xattr_info {int xi_value_len; int xi_name_len; } ;


 int namevalue_size (int ,int ) ;

__attribute__((used)) static int namevalue_size_xi(struct ocfs2_xattr_info *xi)
{
 return namevalue_size(xi->xi_name_len, xi->xi_value_len);
}
