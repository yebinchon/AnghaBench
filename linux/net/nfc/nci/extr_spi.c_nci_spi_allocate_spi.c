
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dev; } ;
struct nci_spi {unsigned int xfer_udelay; int req_completion; struct nci_dev* ndev; struct spi_device* spi; scalar_t__ xfer_speed_hz; int acknowledge_mode; } ;
struct nci_dev {int dummy; } ;


 int GFP_KERNEL ;
 struct nci_spi* devm_kzalloc (int *,int,int ) ;
 int init_completion (int *) ;

struct nci_spi *nci_spi_allocate_spi(struct spi_device *spi,
         u8 acknowledge_mode, unsigned int delay,
         struct nci_dev *ndev)
{
 struct nci_spi *nspi;

 nspi = devm_kzalloc(&spi->dev, sizeof(struct nci_spi), GFP_KERNEL);
 if (!nspi)
  return ((void*)0);

 nspi->acknowledge_mode = acknowledge_mode;
 nspi->xfer_udelay = delay;

 nspi->xfer_speed_hz = 0;
 nspi->spi = spi;
 nspi->ndev = ndev;
 init_completion(&nspi->req_completion);

 return nspi;
}
