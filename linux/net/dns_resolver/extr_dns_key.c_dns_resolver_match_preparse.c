
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_match_data {int cmp; int lookup_type; } ;


 int KEYRING_SEARCH_LOOKUP_ITERATE ;
 int dns_resolver_cmp ;

__attribute__((used)) static int dns_resolver_match_preparse(struct key_match_data *match_data)
{
 match_data->lookup_type = KEYRING_SEARCH_LOOKUP_ITERATE;
 match_data->cmp = dns_resolver_cmp;
 return 0;
}
