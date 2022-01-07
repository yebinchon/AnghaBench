
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kgid_t ;


 int gid_gt (int ,int ) ;
 int gid_lt (int ,int ) ;

__attribute__((used)) static int gid_cmp(const void *_a, const void *_b)
{
 kgid_t a = *(kgid_t *)_a;
 kgid_t b = *(kgid_t *)_b;

 return gid_gt(a, b) - gid_lt(a, b);
}
