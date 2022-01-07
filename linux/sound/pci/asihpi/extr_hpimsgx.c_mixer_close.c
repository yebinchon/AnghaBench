
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpi_response {int dummy; } ;
struct hpi_message {int dummy; } ;


 int HPI_MIXER_CLOSE ;
 int HPI_OBJ_MIXER ;
 int hpi_init_response (struct hpi_response*,int ,int ,int ) ;

__attribute__((used)) static void mixer_close(struct hpi_message *phm, struct hpi_response *phr)
{
 hpi_init_response(phr, HPI_OBJ_MIXER, HPI_MIXER_CLOSE, 0);
}
