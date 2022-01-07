
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int diff ;
typedef int __wsum ;
typedef int const __be32 ;


 int csum_partial (int const*,int,int ) ;

__attribute__((used)) static inline __wsum compute_csum_diff8(const __be32 *from, const __be32 *to)
{
 __be32 diff[] = {
  ~from[0], ~from[1], to[0], to[1],
 };

 return csum_partial(diff, sizeof(diff), 0);
}
