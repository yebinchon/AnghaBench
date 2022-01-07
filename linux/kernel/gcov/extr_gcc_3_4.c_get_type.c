
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type_info {int dummy; } ;
struct gcov_iterator {size_t type; struct type_info* type_info; } ;



__attribute__((used)) static struct type_info *get_type(struct gcov_iterator *iter)
{
 return &iter->type_info[iter->type];
}
