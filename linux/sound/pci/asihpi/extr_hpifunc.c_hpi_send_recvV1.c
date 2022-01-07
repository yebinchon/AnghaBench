
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpi_response_header {int dummy; } ;
struct hpi_response {int dummy; } ;
struct hpi_message_header {int dummy; } ;
struct hpi_message {int dummy; } ;


 int hpi_send_recv (struct hpi_message*,struct hpi_response*) ;

__attribute__((used)) static inline void hpi_send_recvV1(struct hpi_message_header *m,
 struct hpi_response_header *r)
{
 hpi_send_recv((struct hpi_message *)m, (struct hpi_response *)r);
}
