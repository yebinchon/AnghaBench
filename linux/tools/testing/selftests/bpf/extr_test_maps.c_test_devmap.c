
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef int key ;
typedef int __u32 ;


 int BPF_MAP_TYPE_DEVMAP ;
 int bpf_create_map (int ,int,int,int,int ) ;
 int close (int) ;
 int errno ;
 int exit (int) ;
 int printf (char*,char*) ;
 char* strerror (int ) ;

__attribute__((used)) static void test_devmap(unsigned int task, void *data)
{
 int fd;
 __u32 key, value;

 fd = bpf_create_map(BPF_MAP_TYPE_DEVMAP, sizeof(key), sizeof(value),
       2, 0);
 if (fd < 0) {
  printf("Failed to create devmap '%s'!\n", strerror(errno));
  exit(1);
 }

 close(fd);
}
