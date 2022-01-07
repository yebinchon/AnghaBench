
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct map {struct dso* dso; } ;
struct dso {int dummy; } ;
typedef enum match_result { ____Placeholder_match_result } match_result ;


 int MATCH_EQ ;
 int MATCH_GT ;
 int MATCH_LT ;

__attribute__((used)) static enum match_result match_chain_dso_addresses(struct map *left_map, u64 left_ip,
         struct map *right_map, u64 right_ip)
{
 struct dso *left_dso = left_map ? left_map->dso : ((void*)0);
 struct dso *right_dso = right_map ? right_map->dso : ((void*)0);

 if (left_dso != right_dso)
  return left_dso < right_dso ? MATCH_LT : MATCH_GT;

 if (left_ip != right_ip)
   return left_ip < right_ip ? MATCH_LT : MATCH_GT;

 return MATCH_EQ;
}
