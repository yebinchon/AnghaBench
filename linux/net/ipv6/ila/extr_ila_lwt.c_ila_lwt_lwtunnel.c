
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwtunnel_state {scalar_t__ data; } ;
struct ila_lwt {int dummy; } ;



__attribute__((used)) static inline struct ila_lwt *ila_lwt_lwtunnel(
 struct lwtunnel_state *lwt)
{
 return (struct ila_lwt *)lwt->data;
}
