
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tomoyo_request_info {int mode; int type; int profile; struct tomoyo_domain_info* domain; } ;
struct tomoyo_domain_info {int ns; int profile; } ;


 int memset (struct tomoyo_request_info*,int ,int) ;
 struct tomoyo_domain_info* tomoyo_domain () ;
 int tomoyo_get_mode (int ,int ,int const) ;

int tomoyo_init_request_info(struct tomoyo_request_info *r,
        struct tomoyo_domain_info *domain, const u8 index)
{
 u8 profile;

 memset(r, 0, sizeof(*r));
 if (!domain)
  domain = tomoyo_domain();
 r->domain = domain;
 profile = domain->profile;
 r->profile = profile;
 r->type = index;
 r->mode = tomoyo_get_mode(domain->ns, profile, index);
 return r->mode;
}
