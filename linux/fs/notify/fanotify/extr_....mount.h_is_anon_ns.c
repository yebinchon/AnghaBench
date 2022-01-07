
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mnt_namespace {scalar_t__ seq; } ;



__attribute__((used)) static inline bool is_anon_ns(struct mnt_namespace *ns)
{
 return ns->seq == 0;
}
