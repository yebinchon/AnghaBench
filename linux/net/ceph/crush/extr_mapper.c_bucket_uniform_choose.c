
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crush_work_bucket {int dummy; } ;
struct crush_bucket_uniform {int h; } ;


 int bucket_perm_choose (int *,struct crush_work_bucket*,int,int) ;

__attribute__((used)) static int bucket_uniform_choose(const struct crush_bucket_uniform *bucket,
     struct crush_work_bucket *work, int x, int r)
{
 return bucket_perm_choose(&bucket->h, work, x, r);
}
