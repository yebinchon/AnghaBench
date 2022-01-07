
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_hook_ops {int priority; } ;
struct nf_hook_entries {size_t num_hook_entries; } ;


 int INT_MIN ;
 int WARN_ON (int) ;
 struct nf_hook_ops dummy_ops ;
 struct nf_hook_ops** nf_hook_entries_get_hook_ops (struct nf_hook_entries const*) ;

__attribute__((used)) static void hooks_validate(const struct nf_hook_entries *hooks)
{
}
