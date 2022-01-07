
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fd {TYPE_1__* file; } ;
struct bpf_map {int frozen; } ;
typedef int fmode_t ;
struct TYPE_2__ {int f_mode; } ;


 int FMODE_CAN_WRITE ;
 scalar_t__ READ_ONCE (int ) ;

__attribute__((used)) static fmode_t map_get_sys_perms(struct bpf_map *map, struct fd f)
{
 fmode_t mode = f.file->f_mode;




 if (READ_ONCE(map->frozen))
  mode &= ~FMODE_CAN_WRITE;
 return mode;
}
