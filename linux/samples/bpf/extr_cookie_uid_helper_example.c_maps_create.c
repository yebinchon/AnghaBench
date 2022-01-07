
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct stats {int dummy; } ;


 int BPF_MAP_TYPE_HASH ;
 scalar_t__ bpf_create_map (int ,int,int,int,int ) ;
 int errno ;
 int error (int,int ,char*) ;
 scalar_t__ map_fd ;

__attribute__((used)) static void maps_create(void)
{
 map_fd = bpf_create_map(BPF_MAP_TYPE_HASH, sizeof(uint32_t),
    sizeof(struct stats), 100, 0);
 if (map_fd < 0)
  error(1, errno, "map create failed!\n");
}
