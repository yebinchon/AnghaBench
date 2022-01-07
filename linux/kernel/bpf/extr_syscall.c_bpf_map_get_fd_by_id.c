
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union bpf_attr {int open_flags; int map_id; } ;
typedef int u32 ;
struct bpf_map {int dummy; } ;


 int BPF_MAP_GET_FD_BY_ID ;
 int BPF_OBJ_FLAG_MASK ;
 int CAP_SYS_ADMIN ;
 scalar_t__ CHECK_ATTR (int ) ;
 int EINVAL ;
 int ENOENT ;
 int EPERM ;
 struct bpf_map* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct bpf_map*) ;
 int PTR_ERR (struct bpf_map*) ;
 struct bpf_map* __bpf_map_inc_not_zero (struct bpf_map*,int) ;
 int bpf_get_file_flag (int) ;
 int bpf_map_new_fd (struct bpf_map*,int) ;
 int bpf_map_put_with_uref (struct bpf_map*) ;
 int capable (int ) ;
 struct bpf_map* idr_find (int *,int ) ;
 int map_idr ;
 int map_idr_lock ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int bpf_map_get_fd_by_id(const union bpf_attr *attr)
{
 struct bpf_map *map;
 u32 id = attr->map_id;
 int f_flags;
 int fd;

 if (CHECK_ATTR(BPF_MAP_GET_FD_BY_ID) ||
     attr->open_flags & ~BPF_OBJ_FLAG_MASK)
  return -EINVAL;

 if (!capable(CAP_SYS_ADMIN))
  return -EPERM;

 f_flags = bpf_get_file_flag(attr->open_flags);
 if (f_flags < 0)
  return f_flags;

 spin_lock_bh(&map_idr_lock);
 map = idr_find(&map_idr, id);
 if (map)
  map = __bpf_map_inc_not_zero(map, 1);
 else
  map = ERR_PTR(-ENOENT);
 spin_unlock_bh(&map_idr_lock);

 if (IS_ERR(map))
  return PTR_ERR(map);

 fd = bpf_map_new_fd(map, f_flags);
 if (fd < 0)
  bpf_map_put_with_uref(map);

 return fd;
}
