
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_match_data {int raw_data; } ;
struct key {int description; } ;


 scalar_t__ strcmp (int ,int ) ;

bool key_default_cmp(const struct key *key,
       const struct key_match_data *match_data)
{
 return strcmp(key->description, match_data->raw_data) == 0;
}
