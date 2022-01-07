
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_buffer {int dummy; } ;
typedef scalar_t__ __be32 ;
typedef scalar_t__ __be16 ;


 int audit_log_format (struct audit_buffer*,char*,char*,scalar_t__*) ;
 scalar_t__* ntohs (scalar_t__) ;

__attribute__((used)) static inline void print_ipv4_addr(struct audit_buffer *ab, __be32 addr,
       __be16 port, char *name1, char *name2)
{
 if (addr)
  audit_log_format(ab, " %s=%pI4", name1, &addr);
 if (port)
  audit_log_format(ab, " %s=%d", name2, ntohs(port));
}
