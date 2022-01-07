
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * rodata; int * data; } ;
struct bpf_object {TYPE_1__ sections; } ;
struct bpf_map {scalar_t__ libbpf_type; int name; int fd; } ;
typedef int errmsg ;
typedef int __u8 ;


 scalar_t__ LIBBPF_MAP_BSS ;
 scalar_t__ LIBBPF_MAP_DATA ;
 scalar_t__ LIBBPF_MAP_RODATA ;
 int STRERR_BUFSIZE ;
 int bpf_map_freeze (int ) ;
 int bpf_map_update_elem (int ,int*,int *,int ) ;
 int errno ;
 char* libbpf_strerror_r (int ,char*,int) ;
 int pr_warning (char*,int ,char*) ;

__attribute__((used)) static int
bpf_object__populate_internal_map(struct bpf_object *obj, struct bpf_map *map)
{
 char *cp, errmsg[STRERR_BUFSIZE];
 int err, zero = 0;
 __u8 *data;


 if (map->libbpf_type == LIBBPF_MAP_BSS)
  return 0;

 data = map->libbpf_type == LIBBPF_MAP_DATA ?
        obj->sections.data : obj->sections.rodata;

 err = bpf_map_update_elem(map->fd, &zero, data, 0);

 if (!err && map->libbpf_type == LIBBPF_MAP_RODATA) {
  err = bpf_map_freeze(map->fd);
  if (err) {
   cp = libbpf_strerror_r(errno, errmsg, sizeof(errmsg));
   pr_warning("Error freezing map(%s) as read-only: %s\n",
       map->name, cp);
   err = 0;
  }
 }
 return err;
}
