
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum bpf_prog_type { ____Placeholder_bpf_prog_type } bpf_prog_type ;


 int BPF_ANY ;
 int BPF_MAP_TYPE_PROG_ARRAY ;
 int bpf_create_map (int ,int,int,int ,int ) ;
 scalar_t__ bpf_map_update_elem (int,int*,int*,int ) ;
 int close (int) ;
 int create_prog_dummy1 (int) ;
 int create_prog_dummy2 (int,int,int) ;
 int errno ;
 int printf (char*,char*) ;
 scalar_t__ skip_unsupported_map (int ) ;
 char* strerror (int ) ;

__attribute__((used)) static int create_prog_array(enum bpf_prog_type prog_type, uint32_t max_elem,
        int p1key)
{
 int p2key = 1;
 int mfd, p1fd, p2fd;

 mfd = bpf_create_map(BPF_MAP_TYPE_PROG_ARRAY, sizeof(int),
        sizeof(int), max_elem, 0);
 if (mfd < 0) {
  if (skip_unsupported_map(BPF_MAP_TYPE_PROG_ARRAY))
   return -1;
  printf("Failed to create prog array '%s'!\n", strerror(errno));
  return -1;
 }

 p1fd = create_prog_dummy1(prog_type);
 p2fd = create_prog_dummy2(prog_type, mfd, p2key);
 if (p1fd < 0 || p2fd < 0)
  goto out;
 if (bpf_map_update_elem(mfd, &p1key, &p1fd, BPF_ANY) < 0)
  goto out;
 if (bpf_map_update_elem(mfd, &p2key, &p2fd, BPF_ANY) < 0)
  goto out;
 close(p2fd);
 close(p1fd);

 return mfd;
out:
 close(p2fd);
 close(p1fd);
 close(mfd);
 return -1;
}
