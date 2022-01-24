#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  unsigned char u8 ;
struct spi_transfer {unsigned char* tx_buf; int len; int cs_change; unsigned char* rx_buf; int /*<<< orphan*/  speed_hz; int /*<<< orphan*/  delay_usecs; } ;
struct spi_message {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nci_spi {unsigned char acknowledge_mode; int /*<<< orphan*/  spi; int /*<<< orphan*/  xfer_speed_hz; int /*<<< orphan*/  xfer_udelay; int /*<<< orphan*/  ndev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned char NCI_SPI_CRC_ENABLED ; 
 unsigned char NCI_SPI_CRC_LEN ; 
 unsigned char NCI_SPI_DIRECT_READ ; 
 unsigned char NCI_SPI_MSB_PAYLOAD_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_transfer*,int /*<<< orphan*/ ,int) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ ,unsigned short,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int) ; 
 unsigned char* FUNC4 (struct sk_buff*,unsigned short) ; 
 int /*<<< orphan*/  FUNC5 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC6 (struct spi_message*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct spi_message*) ; 

__attribute__((used)) static struct sk_buff *FUNC8(struct nci_spi *nspi)
{
	struct sk_buff *skb;
	struct spi_message m;
	unsigned char req[2], resp_hdr[2];
	struct spi_transfer tx, rx;
	unsigned short rx_len = 0;
	int ret;

	FUNC6(&m);

	FUNC1(&tx, 0, sizeof(struct spi_transfer));
	req[0] = NCI_SPI_DIRECT_READ;
	req[1] = nspi->acknowledge_mode;
	tx.tx_buf = req;
	tx.len = 2;
	tx.cs_change = 0;
	tx.speed_hz = nspi->xfer_speed_hz;
	FUNC5(&tx, &m);

	FUNC1(&rx, 0, sizeof(struct spi_transfer));
	rx.rx_buf = resp_hdr;
	rx.len = 2;
	rx.cs_change = 1;
	rx.speed_hz = nspi->xfer_speed_hz;
	FUNC5(&rx, &m);

	ret = FUNC7(nspi->spi, &m);
	if (ret)
		return NULL;

	if (nspi->acknowledge_mode == NCI_SPI_CRC_ENABLED)
		rx_len = ((resp_hdr[0] & NCI_SPI_MSB_PAYLOAD_MASK) << 8) +
				resp_hdr[1] + NCI_SPI_CRC_LEN;
	else
		rx_len = (resp_hdr[0] << 8) | resp_hdr[1];

	skb = FUNC2(nspi->ndev, rx_len, GFP_KERNEL);
	if (!skb)
		return NULL;

	FUNC6(&m);

	FUNC1(&rx, 0, sizeof(struct spi_transfer));
	rx.rx_buf = FUNC4(skb, rx_len);
	rx.len = rx_len;
	rx.cs_change = 0;
	rx.delay_usecs = nspi->xfer_udelay;
	rx.speed_hz = nspi->xfer_speed_hz;
	FUNC5(&rx, &m);

	ret = FUNC7(nspi->spi, &m);
	if (ret)
		goto receive_error;

	if (nspi->acknowledge_mode == NCI_SPI_CRC_ENABLED) {
		*(u8 *)FUNC3(skb, 1) = resp_hdr[1];
		*(u8 *)FUNC3(skb, 1) = resp_hdr[0];
	}

	return skb;

receive_error:
	FUNC0(skb);

	return NULL;
}