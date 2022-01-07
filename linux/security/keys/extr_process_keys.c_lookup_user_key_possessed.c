
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_match_data {struct key const* raw_data; } ;
struct key {int dummy; } ;



bool lookup_user_key_possessed(const struct key *key,
          const struct key_match_data *match_data)
{
 return key == match_data->raw_data;
}
