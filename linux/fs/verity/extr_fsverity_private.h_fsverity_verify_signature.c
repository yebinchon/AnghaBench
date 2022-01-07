
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsverity_info {int dummy; } ;
struct fsverity_descriptor {int dummy; } ;



__attribute__((used)) static inline int
fsverity_verify_signature(const struct fsverity_info *vi,
     const struct fsverity_descriptor *desc,
     size_t desc_size)
{
 return 0;
}
