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
struct stat {int st_size; int /*<<< orphan*/  st_mode; } ;
struct pcap_filehdr {scalar_t__ magic; } ;

/* Variables and functions */
 int CMD_ERR ; 
 int CMD_OK ; 
 scalar_t__ MAP_FAILED ; 
 int MAP_LOCKED ; 
 int MAP_SHARED ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  PROT_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TCPDUMP_MAGIC ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (scalar_t__,struct stat*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ pcap_fd ; 
 int pcap_map_size ; 
 scalar_t__ pcap_ptr_va_start ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(const char *file)
{
	struct pcap_filehdr *hdr;
	struct stat sb;
	int ret;

	pcap_fd = FUNC3(file, O_RDONLY);
	if (pcap_fd < 0) {
		FUNC5("cannot open pcap [%s]!\n", FUNC6(errno));
		return CMD_ERR;
	}

	ret = FUNC1(pcap_fd, &sb);
	if (ret < 0) {
		FUNC5("cannot fstat pcap file!\n");
		return CMD_ERR;
	}

	if (!FUNC0(sb.st_mode)) {
		FUNC5("not a regular pcap file, duh!\n");
		return CMD_ERR;
	}

	pcap_map_size = sb.st_size;
	if (pcap_map_size <= sizeof(struct pcap_filehdr)) {
		FUNC5("pcap file too small!\n");
		return CMD_ERR;
	}

	pcap_ptr_va_start = FUNC2(NULL, pcap_map_size, PROT_READ,
				 MAP_SHARED | MAP_LOCKED, pcap_fd, 0);
	if (pcap_ptr_va_start == MAP_FAILED) {
		FUNC5("mmap of file failed!");
		return CMD_ERR;
	}

	hdr = (void *) pcap_ptr_va_start;
	if (hdr->magic != TCPDUMP_MAGIC) {
		FUNC5("wrong pcap magic!\n");
		return CMD_ERR;
	}

	FUNC4();

	return CMD_OK;

}