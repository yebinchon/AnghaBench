
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dummy; } ;


 int call_int_hook (int ,int ,struct path const*,struct path const*) ;
 int move_mount ;

int security_move_mount(const struct path *from_path, const struct path *to_path)
{
 return call_int_hook(move_mount, 0, from_path, to_path);
}
