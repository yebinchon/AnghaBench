#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wmfw_region {int /*<<< orphan*/  len; int /*<<< orphan*/  data; int /*<<< orphan*/  type; int /*<<< orphan*/  offset; } ;
struct wmfw_header {int /*<<< orphan*/  len; int /*<<< orphan*/  core; int /*<<< orphan*/  ver; int /*<<< orphan*/ * magic; } ;
struct wmfw_footer {int /*<<< orphan*/  timestamp; } ;
struct wmfw_adsp1_sizes {int dummy; } ;
struct wm_adsp_region {int dummy; } ;
struct wm_adsp_buf {int /*<<< orphan*/  buf; } ;
struct wm_adsp {char* part; char* fwf_name; size_t fw; TYPE_1__* ops; int /*<<< orphan*/  type; int /*<<< orphan*/  fw_ver; int /*<<< orphan*/  dev; struct regmap* regmap; } ;
struct regmap {int dummy; } ;
struct firmware {unsigned int size; int /*<<< orphan*/ * data; } ;
struct TYPE_4__ {char* file; } ;
struct TYPE_3__ {unsigned int (* parse_sizes ) (struct wm_adsp*,char*,unsigned int,struct firmware const*) ;unsigned int (* region_to_reg ) (struct wm_adsp_region const*,int) ;int /*<<< orphan*/  (* validate_version ) (struct wm_adsp*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int PAGE_SIZE ; 
#define  WMFW_ABSOLUTE 139 
#define  WMFW_ADSP1_DM 138 
#define  WMFW_ADSP1_PM 137 
#define  WMFW_ADSP1_ZM 136 
#define  WMFW_ADSP2_XM 135 
#define  WMFW_ADSP2_YM 134 
#define  WMFW_ALGORITHM_DATA 133 
#define  WMFW_HALO_PM_PACKED 132 
#define  WMFW_HALO_XM_PACKED 131 
#define  WMFW_HALO_YM_PACKED 130 
#define  WMFW_INFO_TEXT 129 
#define  WMFW_NAME_TEXT 128 
 int /*<<< orphan*/  FUNC1 (struct wm_adsp*,char*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (struct wm_adsp*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct wm_adsp*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct wm_adsp*,char*,char*,int,unsigned int,...) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  buf_list ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (struct regmap*) ; 
 int FUNC13 (struct regmap*,unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct firmware const*) ; 
 int FUNC15 (struct firmware const**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,int,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (struct wm_adsp*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC18 (struct wm_adsp*,char*,unsigned int,struct firmware const*) ; 
 unsigned int FUNC19 (struct wm_adsp_region const*,int) ; 
 struct wm_adsp_buf* FUNC20 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (struct wm_adsp*,char*) ; 
 struct wm_adsp_region* FUNC23 (struct wm_adsp*,int) ; 
 TYPE_2__* wm_adsp_fw ; 
 char* FUNC24 (int) ; 
 int FUNC25 (struct wm_adsp*,struct wmfw_region const*) ; 

__attribute__((used)) static int FUNC26(struct wm_adsp *dsp)
{
	FUNC0(buf_list);
	const struct firmware *firmware;
	struct regmap *regmap = dsp->regmap;
	unsigned int pos = 0;
	const struct wmfw_header *header;
	const struct wmfw_adsp1_sizes *adsp1_sizes;
	const struct wmfw_footer *footer;
	const struct wmfw_region *region;
	const struct wm_adsp_region *mem;
	const char *region_name;
	char *file, *text = NULL;
	struct wm_adsp_buf *buf;
	unsigned int reg;
	int regions = 0;
	int ret, offset, type;

	file = FUNC7(PAGE_SIZE, GFP_KERNEL);
	if (file == NULL)
		return -ENOMEM;

	FUNC16(file, PAGE_SIZE, "%s-%s-%s.wmfw", dsp->part, dsp->fwf_name,
		 wm_adsp_fw[dsp->fw].file);
	file[PAGE_SIZE - 1] = '\0';

	ret = FUNC15(&firmware, file, dsp->dev);
	if (ret != 0) {
		FUNC2(dsp, "Failed to request '%s'\n", file);
		goto out;
	}
	ret = -EINVAL;

	pos = sizeof(*header) + sizeof(*adsp1_sizes) + sizeof(*footer);
	if (pos >= firmware->size) {
		FUNC2(dsp, "%s: file too short, %zu bytes\n",
			 file, firmware->size);
		goto out_fw;
	}

	header = (void *)&firmware->data[0];

	if (FUNC10(&header->magic[0], "WMFW", 4) != 0) {
		FUNC2(dsp, "%s: invalid magic\n", file);
		goto out_fw;
	}

	if (!dsp->ops->validate_version(dsp, header->ver)) {
		FUNC2(dsp, "%s: unknown file format %d\n",
			 file, header->ver);
		goto out_fw;
	}

	FUNC3(dsp, "Firmware version: %d\n", header->ver);
	dsp->fw_ver = header->ver;

	if (header->core != dsp->type) {
		FUNC2(dsp, "%s: invalid core %d != %d\n",
			 file, header->core, dsp->type);
		goto out_fw;
	}

	pos = sizeof(*header);
	pos = dsp->ops->parse_sizes(dsp, file, pos, firmware);

	footer = (void *)&firmware->data[pos];
	pos += sizeof(*footer);

	if (FUNC8(header->len) != pos) {
		FUNC2(dsp, "%s: unexpected header length %d\n",
			 file, FUNC8(header->len));
		goto out_fw;
	}

	FUNC1(dsp, "%s: timestamp %llu\n", file,
		 FUNC9(footer->timestamp));

	while (pos < firmware->size &&
	       sizeof(*region) < firmware->size - pos) {
		region = (void *)&(firmware->data[pos]);
		region_name = "Unknown";
		reg = 0;
		text = NULL;
		offset = FUNC8(region->offset) & 0xffffff;
		type = FUNC5(region->type) & 0xff;

		switch (type) {
		case WMFW_NAME_TEXT:
			region_name = "Firmware name";
			text = FUNC7(FUNC8(region->len) + 1,
				       GFP_KERNEL);
			break;
		case WMFW_ALGORITHM_DATA:
			region_name = "Algorithm";
			ret = FUNC25(dsp, region);
			if (ret != 0)
				goto out_fw;
			break;
		case WMFW_INFO_TEXT:
			region_name = "Information";
			text = FUNC7(FUNC8(region->len) + 1,
				       GFP_KERNEL);
			break;
		case WMFW_ABSOLUTE:
			region_name = "Absolute";
			reg = offset;
			break;
		case WMFW_ADSP1_PM:
		case WMFW_ADSP1_DM:
		case WMFW_ADSP2_XM:
		case WMFW_ADSP2_YM:
		case WMFW_ADSP1_ZM:
		case WMFW_HALO_PM_PACKED:
		case WMFW_HALO_XM_PACKED:
		case WMFW_HALO_YM_PACKED:
			mem = FUNC23(dsp, type);
			if (!mem) {
				FUNC2(dsp, "No region of type: %x\n", type);
				goto out_fw;
			}

			region_name = FUNC24(type);
			reg = dsp->ops->region_to_reg(mem, offset);
			break;
		default:
			FUNC4(dsp,
				  "%s.%d: Unknown region type %x at %d(%x)\n",
				  file, regions, type, pos, pos);
			break;
		}

		FUNC1(dsp, "%s.%d: %d bytes at %d in %s\n", file,
			 regions, FUNC8(region->len), offset,
			 region_name);

		if (FUNC8(region->len) >
		    firmware->size - pos - sizeof(*region)) {
			FUNC2(dsp,
				 "%s.%d: %s region len %d bytes exceeds file length %zu\n",
				 file, regions, region_name,
				 FUNC8(region->len), firmware->size);
			ret = -EINVAL;
			goto out_fw;
		}

		if (text) {
			FUNC11(text, region->data, FUNC8(region->len));
			FUNC3(dsp, "%s: %s\n", file, text);
			FUNC6(text);
			text = NULL;
		}

		if (reg) {
			buf = FUNC20(region->data,
						FUNC8(region->len),
						&buf_list);
			if (!buf) {
				FUNC2(dsp, "Out of memory\n");
				ret = -ENOMEM;
				goto out_fw;
			}

			ret = FUNC13(regmap, reg, buf->buf,
						     FUNC8(region->len));
			if (ret != 0) {
				FUNC2(dsp,
					"%s.%d: Failed to write %d bytes at %d in %s: %d\n",
					file, regions,
					FUNC8(region->len), offset,
					region_name, ret);
				goto out_fw;
			}
		}

		pos += FUNC8(region->len) + sizeof(*region);
		regions++;
	}

	ret = FUNC12(regmap);
	if (ret != 0) {
		FUNC2(dsp, "Failed to complete async write: %d\n", ret);
		goto out_fw;
	}

	if (pos > firmware->size)
		FUNC4(dsp, "%s.%d: %zu bytes at end of file\n",
			  file, regions, pos - firmware->size);

	FUNC22(dsp, file);

out_fw:
	FUNC12(regmap);
	FUNC21(&buf_list);
	FUNC14(firmware);
	FUNC6(text);
out:
	FUNC6(file);

	return ret;
}