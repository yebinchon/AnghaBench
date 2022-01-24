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
struct snd_info_entry {struct snd_bebob* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct snd_bebob {int /*<<< orphan*/  unit; } ;
struct hw_info {char* protocol_ver; char* bld_ver; char* model_id; char* model_rev; char* fw_id; char* fw_ver; char* base_addr; char* max_size; int /*<<< orphan*/  bld_time; int /*<<< orphan*/  bld_date; int /*<<< orphan*/  fw_time; int /*<<< orphan*/  fw_date; int /*<<< orphan*/ * guid; int /*<<< orphan*/  manufacturer; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct hw_info*) ; 
 struct hw_info* FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hw_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_info_buffer*,char*,char*,...) ; 

__attribute__((used)) static void
FUNC4(struct snd_info_entry *entry,
		  struct snd_info_buffer *buffer)
{
	struct snd_bebob *bebob = entry->private_data;
	struct hw_info *info;

	info = FUNC1(sizeof(struct hw_info), GFP_KERNEL);
	if (info == NULL)
		return;

	if (FUNC2(bebob->unit, 0,
				   info, sizeof(struct hw_info)) < 0)
		goto end;

	FUNC3(buffer, "Manufacturer:\t%.8s\n",
		    (char *)&info->manufacturer);
	FUNC3(buffer, "Protocol Ver:\t%d\n", info->protocol_ver);
	FUNC3(buffer, "Build Ver:\t%d\n", info->bld_ver);
	FUNC3(buffer, "GUID:\t\t0x%.8X%.8X\n",
		    info->guid[0], info->guid[1]);
	FUNC3(buffer, "Model ID:\t0x%02X\n", info->model_id);
	FUNC3(buffer, "Model Rev:\t%d\n", info->model_rev);
	FUNC3(buffer, "Firmware Date:\t%.8s\n", (char *)&info->fw_date);
	FUNC3(buffer, "Firmware Time:\t%.8s\n", (char *)&info->fw_time);
	FUNC3(buffer, "Firmware ID:\t0x%X\n", info->fw_id);
	FUNC3(buffer, "Firmware Ver:\t%d\n", info->fw_ver);
	FUNC3(buffer, "Base Addr:\t0x%X\n", info->base_addr);
	FUNC3(buffer, "Max Size:\t%d\n", info->max_size);
	FUNC3(buffer, "Loader Date:\t%.8s\n", (char *)&info->bld_date);
	FUNC3(buffer, "Loader Time:\t%.8s\n", (char *)&info->bld_time);

end:
	FUNC0(info);
}