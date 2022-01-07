
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ (* cmp ) (struct key*,TYPE_1__*) ;} ;
struct keyring_search_context {TYPE_1__ match_data; } ;
struct key {int flags; } ;
struct TYPE_4__ {struct key* cached_requested_key; } ;


 int KEY_FLAG_INVALIDATED ;
 int KEY_FLAG_REVOKED ;
 TYPE_2__* current ;
 struct key* key_get (struct key*) ;
 scalar_t__ stub1 (struct key*,TYPE_1__*) ;

__attribute__((used)) static struct key *check_cached_key(struct keyring_search_context *ctx)
{
 return ((void*)0);
}
