
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_root {int dummy; } ;
struct comm_str {int dummy; } ;


 struct comm_str* __comm_str__findnew (char const*,struct rb_root*) ;
 int comm_str_lock ;
 int down_write (int *) ;
 int up_write (int *) ;

__attribute__((used)) static struct comm_str *comm_str__findnew(const char *str, struct rb_root *root)
{
 struct comm_str *cs;

 down_write(&comm_str_lock);
 cs = __comm_str__findnew(str, root);
 up_write(&comm_str_lock);

 return cs;
}
