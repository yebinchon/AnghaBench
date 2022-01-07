
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lpm_mt_test_info {int iter; int map_fd; TYPE_1__* key; } ;
struct TYPE_2__ {int prefixlen; int data; } ;


 int AF_INET ;
 int inet_pton (int ,char*,int *) ;

__attribute__((used)) static void setup_lpm_mt_test_info(struct lpm_mt_test_info *info, int map_fd)
{
 info->iter = 2000;
 info->map_fd = map_fd;
 info->key[0].prefixlen = 16;
 inet_pton(AF_INET, "192.168.0.0", &info->key[0].data);
 info->key[1].prefixlen = 24;
 inet_pton(AF_INET, "192.168.0.0", &info->key[1].data);
 info->key[2].prefixlen = 24;
 inet_pton(AF_INET, "192.168.128.0", &info->key[2].data);
 info->key[3].prefixlen = 24;
 inet_pton(AF_INET, "192.168.1.0", &info->key[3].data);
}
