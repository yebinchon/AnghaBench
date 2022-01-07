
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_4__ {size_t protocol; size_t operation; int port; int address; int is_ipv6; } ;
struct TYPE_5__ {TYPE_1__ inet_network; } ;
struct tomoyo_request_info {TYPE_2__ param; int param_type; } ;
struct TYPE_6__ {int port; int address; int is_ipv6; } ;
struct tomoyo_addr_info {size_t protocol; size_t operation; TYPE_3__ inet; } ;


 scalar_t__ TOMOYO_CONFIG_DISABLED ;
 int TOMOYO_RETRY_REQUEST ;
 int TOMOYO_TYPE_INET_ACL ;
 int ntohs (int ) ;
 int tomoyo_audit_inet_log (struct tomoyo_request_info*) ;
 int tomoyo_check_acl (struct tomoyo_request_info*,int ) ;
 int tomoyo_check_inet_acl ;
 scalar_t__** tomoyo_inet2mac ;
 scalar_t__ tomoyo_init_request_info (struct tomoyo_request_info*,int *,scalar_t__ const) ;
 int tomoyo_read_lock () ;
 int tomoyo_read_unlock (int const) ;

__attribute__((used)) static int tomoyo_inet_entry(const struct tomoyo_addr_info *address)
{
 const int idx = tomoyo_read_lock();
 struct tomoyo_request_info r;
 int error = 0;
 const u8 type = tomoyo_inet2mac[address->protocol][address->operation];

 if (type && tomoyo_init_request_info(&r, ((void*)0), type)
     != TOMOYO_CONFIG_DISABLED) {
  r.param_type = TOMOYO_TYPE_INET_ACL;
  r.param.inet_network.protocol = address->protocol;
  r.param.inet_network.operation = address->operation;
  r.param.inet_network.is_ipv6 = address->inet.is_ipv6;
  r.param.inet_network.address = address->inet.address;
  r.param.inet_network.port = ntohs(address->inet.port);
  do {
   tomoyo_check_acl(&r, tomoyo_check_inet_acl);
   error = tomoyo_audit_inet_log(&r);
  } while (error == TOMOYO_RETRY_REQUEST);
 }
 tomoyo_read_unlock(idx);
 return error;
}
