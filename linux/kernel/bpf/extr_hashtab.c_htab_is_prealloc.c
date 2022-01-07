
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int map_flags; } ;
struct bpf_htab {TYPE_1__ map; } ;


 int BPF_F_NO_PREALLOC ;

__attribute__((used)) static bool htab_is_prealloc(const struct bpf_htab *htab)
{
 return !(htab->map.map_flags & BPF_F_NO_PREALLOC);
}
