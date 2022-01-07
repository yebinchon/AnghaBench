
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct tomoyo_request_info {int dummy; } ;


 int * tomoyo_proto_keyword ;
 int * tomoyo_socket_keyword ;
 int tomoyo_supervisor (struct tomoyo_request_info*,char*,char const*,int ,int ,char const*) ;

__attribute__((used)) static int tomoyo_audit_net_log(struct tomoyo_request_info *r,
    const char *family, const u8 protocol,
    const u8 operation, const char *address)
{
 return tomoyo_supervisor(r, "network %s %s %s %s\n", family,
     tomoyo_proto_keyword[protocol],
     tomoyo_socket_keyword[operation], address);
}
