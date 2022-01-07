; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_intel.c_azx_first_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_intel.c_azx_first_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.azx = type { i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.snd_card*, i64, %struct.pci_dev*, i64 }
%struct.snd_card = type { i8*, i32, i32, i32 }
%struct.pci_dev = type { i32, i64, i32, i32 }
%struct.hdac_bus = type { i32, i32, i32, i64, i32* }

@PCI_BASE_ADDRESS_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"ICH HD audio\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"ioremap error\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@AZX_DRIVER_SKL = common dso_local global i32 0, align 4
@AZX_DCAPS_NO_MSI64 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Disabling 64bit MSI\0A\00", align 1
@GCAP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"chipset global capabilities = 0x%x\0A\00", align 1
@PCI_VENDOR_ID_AMD = common dso_local global i64 0, align 8
@PCI_VENDOR_ID_ATI = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_ATI_SBX00_SMBUS = common dso_local global i32 0, align 4
@AZX_GCAP_64OK = common dso_local global i16 0, align 2
@PCI_VENDOR_ID_NVIDIA = common dso_local global i64 0, align 8
@AZX_DCAPS_NO_64BIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Disabling 64bit DMA\0A\00", align 1
@align_buffer_size = common dso_local global i64 0, align 8
@AZX_DCAPS_NO_ALIGN_BUFSIZE = common dso_local global i32 0, align 4
@ULI_NUM_PLAYBACK = common dso_local global i16 0, align 2
@ULI_NUM_CAPTURE = common dso_local global i16 0, align 2
@ATIHDMI_NUM_PLAYBACK = common dso_local global i16 0, align 2
@ATIHDMI_NUM_CAPTURE = common dso_local global i16 0, align 2
@ICH6_NUM_PLAYBACK = common dso_local global i16 0, align 2
@ICH6_NUM_CAPTURE = common dso_local global i16 0, align 2
@AZX_DCAPS_SEPARATE_STREAM_TAG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [58 x i8] c"number of I/O streams is %d, forcing separate stream tags\00", align 1
@probe_only = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [18 x i8] c"no codecs found!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"HDA-Intel\00", align 1
@driver_short_names = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [19 x i8] c"%s at 0x%lx irq %i\00", align 1
@X86_FEATURE_ART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.azx*)* @azx_first_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @azx_first_init(%struct.azx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.azx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.snd_card*, align 8
  %7 = alloca %struct.hdac_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pci_dev*, align 8
  store %struct.azx* %0, %struct.azx** %3, align 8
  %13 = load %struct.azx*, %struct.azx** %3, align 8
  %14 = getelementptr inbounds %struct.azx, %struct.azx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %4, align 4
  %16 = load %struct.azx*, %struct.azx** %3, align 8
  %17 = getelementptr inbounds %struct.azx, %struct.azx* %16, i32 0, i32 12
  %18 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  store %struct.pci_dev* %18, %struct.pci_dev** %5, align 8
  %19 = load %struct.azx*, %struct.azx** %3, align 8
  %20 = getelementptr inbounds %struct.azx, %struct.azx* %19, i32 0, i32 10
  %21 = load %struct.snd_card*, %struct.snd_card** %20, align 8
  store %struct.snd_card* %21, %struct.snd_card** %6, align 8
  %22 = load %struct.azx*, %struct.azx** %3, align 8
  %23 = call %struct.hdac_bus* @azx_bus(%struct.azx* %22)
  store %struct.hdac_bus* %23, %struct.hdac_bus** %7, align 8
  store i32 64, i32* %10, align 4
  %24 = load %struct.azx*, %struct.azx** %3, align 8
  %25 = getelementptr inbounds %struct.azx, %struct.azx* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 128
  br i1 %27, label %28, label %38

28:                                               ; preds = %1
  %29 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %30 = call i32 @pci_read_config_word(%struct.pci_dev* %29, i32 64, i32* %11)
  %31 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %32 = load i32, i32* %11, align 4
  %33 = or i32 %32, 16
  %34 = call i32 @pci_write_config_word(%struct.pci_dev* %31, i32 64, i32 %33)
  %35 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %36 = load i32, i32* @PCI_BASE_ADDRESS_1, align 4
  %37 = call i32 @pci_write_config_dword(%struct.pci_dev* %35, i32 %36, i32 0)
  br label %38

38:                                               ; preds = %28, %1
  %39 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %40 = call i32 @pci_request_regions(%struct.pci_dev* %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %2, align 4
  br label %419

45:                                               ; preds = %38
  %46 = load %struct.azx*, %struct.azx** %3, align 8
  %47 = getelementptr inbounds %struct.azx, %struct.azx* %46, i32 0, i32 2
  store i32 1, i32* %47, align 8
  %48 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %49 = call i32 @pci_resource_start(%struct.pci_dev* %48, i32 0)
  %50 = load %struct.hdac_bus*, %struct.hdac_bus** %7, align 8
  %51 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %53 = call i32* @pci_ioremap_bar(%struct.pci_dev* %52, i32 0)
  %54 = load %struct.hdac_bus*, %struct.hdac_bus** %7, align 8
  %55 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %54, i32 0, i32 4
  store i32* %53, i32** %55, align 8
  %56 = load %struct.hdac_bus*, %struct.hdac_bus** %7, align 8
  %57 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %56, i32 0, i32 4
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %45
  %61 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %62 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @dev_err(i32 %63, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* @ENXIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %419

67:                                               ; preds = %45
  %68 = load %struct.azx*, %struct.azx** %3, align 8
  %69 = getelementptr inbounds %struct.azx, %struct.azx* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @AZX_DRIVER_SKL, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load %struct.hdac_bus*, %struct.hdac_bus** %7, align 8
  %75 = call i32 @snd_hdac_bus_parse_capabilities(%struct.hdac_bus* %74)
  br label %76

76:                                               ; preds = %73, %67
  %77 = load %struct.azx*, %struct.azx** %3, align 8
  %78 = getelementptr inbounds %struct.azx, %struct.azx* %77, i32 0, i32 3
  store i32 0, i32* %78, align 4
  %79 = load %struct.azx*, %struct.azx** %3, align 8
  %80 = getelementptr inbounds %struct.azx, %struct.azx* %79, i32 0, i32 13
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %105

83:                                               ; preds = %76
  %84 = load %struct.azx*, %struct.azx** %3, align 8
  %85 = getelementptr inbounds %struct.azx, %struct.azx* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @AZX_DCAPS_NO_MSI64, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %83
  %91 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %92 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = call i32 (i32, i8*, ...) @dev_dbg(i32 %93, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %95 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %96 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %95, i32 0, i32 0
  store i32 1, i32* %96, align 8
  br label %97

97:                                               ; preds = %90, %83
  %98 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %99 = call i64 @pci_enable_msi(%struct.pci_dev* %98)
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load %struct.azx*, %struct.azx** %3, align 8
  %103 = getelementptr inbounds %struct.azx, %struct.azx* %102, i32 0, i32 13
  store i64 0, i64* %103, align 8
  br label %104

104:                                              ; preds = %101, %97
  br label %105

105:                                              ; preds = %104, %76
  %106 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %107 = call i32 @pci_set_master(%struct.pci_dev* %106)
  %108 = load %struct.hdac_bus*, %struct.hdac_bus** %7, align 8
  %109 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @synchronize_irq(i32 %110)
  %112 = load %struct.azx*, %struct.azx** %3, align 8
  %113 = load i32, i32* @GCAP, align 4
  %114 = call zeroext i16 @azx_readw(%struct.azx* %112, i32 %113)
  store i16 %114, i16* %9, align 2
  %115 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %116 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = load i16, i16* %9, align 2
  %119 = zext i16 %118 to i32
  %120 = call i32 (i32, i8*, ...) @dev_dbg(i32 %117, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %119)
  %121 = load %struct.azx*, %struct.azx** %3, align 8
  %122 = getelementptr inbounds %struct.azx, %struct.azx* %121, i32 0, i32 12
  %123 = load %struct.pci_dev*, %struct.pci_dev** %122, align 8
  %124 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @PCI_VENDOR_ID_AMD, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %105
  store i32 40, i32* %10, align 4
  br label %129

129:                                              ; preds = %128, %105
  %130 = load %struct.azx*, %struct.azx** %3, align 8
  %131 = getelementptr inbounds %struct.azx, %struct.azx* %130, i32 0, i32 12
  %132 = load %struct.pci_dev*, %struct.pci_dev** %131, align 8
  %133 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @PCI_VENDOR_ID_ATI, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %160

137:                                              ; preds = %129
  store i32 40, i32* %10, align 4
  %138 = load i64, i64* @PCI_VENDOR_ID_ATI, align 8
  %139 = load i32, i32* @PCI_DEVICE_ID_ATI_SBX00_SMBUS, align 4
  %140 = call %struct.pci_dev* @pci_get_device(i64 %138, i32 %139, i32* null)
  store %struct.pci_dev* %140, %struct.pci_dev** %12, align 8
  %141 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %142 = icmp ne %struct.pci_dev* %141, null
  br i1 %142, label %143, label %159

143:                                              ; preds = %137
  %144 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %145 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = icmp slt i32 %146, 48
  br i1 %147, label %148, label %156

148:                                              ; preds = %143
  %149 = load i16, i16* @AZX_GCAP_64OK, align 2
  %150 = zext i16 %149 to i32
  %151 = xor i32 %150, -1
  %152 = load i16, i16* %9, align 2
  %153 = zext i16 %152 to i32
  %154 = and i32 %153, %151
  %155 = trunc i32 %154 to i16
  store i16 %155, i16* %9, align 2
  br label %156

156:                                              ; preds = %148, %143
  %157 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %158 = call i32 @pci_dev_put(%struct.pci_dev* %157)
  br label %159

159:                                              ; preds = %156, %137
  br label %160

160:                                              ; preds = %159, %129
  %161 = load %struct.azx*, %struct.azx** %3, align 8
  %162 = getelementptr inbounds %struct.azx, %struct.azx* %161, i32 0, i32 12
  %163 = load %struct.pci_dev*, %struct.pci_dev** %162, align 8
  %164 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @PCI_VENDOR_ID_NVIDIA, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %160
  store i32 40, i32* %10, align 4
  br label %169

169:                                              ; preds = %168, %160
  %170 = load %struct.azx*, %struct.azx** %3, align 8
  %171 = getelementptr inbounds %struct.azx, %struct.azx* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @AZX_DCAPS_NO_64BIT, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %188

176:                                              ; preds = %169
  %177 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %178 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 8
  %180 = call i32 (i32, i8*, ...) @dev_dbg(i32 %179, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %181 = load i16, i16* @AZX_GCAP_64OK, align 2
  %182 = zext i16 %181 to i32
  %183 = xor i32 %182, -1
  %184 = load i16, i16* %9, align 2
  %185 = zext i16 %184 to i32
  %186 = and i32 %185, %183
  %187 = trunc i32 %186 to i16
  store i16 %187, i16* %9, align 2
  br label %188

188:                                              ; preds = %176, %169
  %189 = load i64, i64* @align_buffer_size, align 8
  %190 = icmp sge i64 %189, 0
  br i1 %190, label %191, label %199

191:                                              ; preds = %188
  %192 = load i64, i64* @align_buffer_size, align 8
  %193 = icmp ne i64 %192, 0
  %194 = xor i1 %193, true
  %195 = xor i1 %194, true
  %196 = zext i1 %195 to i32
  %197 = load %struct.azx*, %struct.azx** %3, align 8
  %198 = getelementptr inbounds %struct.azx, %struct.azx* %197, i32 0, i32 5
  store i32 %196, i32* %198, align 4
  br label %213

199:                                              ; preds = %188
  %200 = load %struct.azx*, %struct.azx** %3, align 8
  %201 = getelementptr inbounds %struct.azx, %struct.azx* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @AZX_DCAPS_NO_ALIGN_BUFSIZE, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %199
  %207 = load %struct.azx*, %struct.azx** %3, align 8
  %208 = getelementptr inbounds %struct.azx, %struct.azx* %207, i32 0, i32 5
  store i32 0, i32* %208, align 4
  br label %212

209:                                              ; preds = %199
  %210 = load %struct.azx*, %struct.azx** %3, align 8
  %211 = getelementptr inbounds %struct.azx, %struct.azx* %210, i32 0, i32 5
  store i32 1, i32* %211, align 4
  br label %212

212:                                              ; preds = %209, %206
  br label %213

213:                                              ; preds = %212, %191
  %214 = load i16, i16* %9, align 2
  %215 = zext i16 %214 to i32
  %216 = load i16, i16* @AZX_GCAP_64OK, align 2
  %217 = zext i16 %216 to i32
  %218 = and i32 %215, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %221, label %220

220:                                              ; preds = %213
  store i32 32, i32* %10, align 4
  br label %221

221:                                              ; preds = %220, %213
  %222 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %223 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %222, i32 0, i32 3
  %224 = load i32, i32* %10, align 4
  %225 = call i32 @DMA_BIT_MASK(i32 %224)
  %226 = call i32 @dma_set_mask(i32* %223, i32 %225)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %234, label %228

228:                                              ; preds = %221
  %229 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %230 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %229, i32 0, i32 3
  %231 = load i32, i32* %10, align 4
  %232 = call i32 @DMA_BIT_MASK(i32 %231)
  %233 = call i32 @dma_set_coherent_mask(i32* %230, i32 %232)
  br label %243

234:                                              ; preds = %221
  %235 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %236 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %235, i32 0, i32 3
  %237 = call i32 @DMA_BIT_MASK(i32 32)
  %238 = call i32 @dma_set_mask(i32* %236, i32 %237)
  %239 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %240 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %239, i32 0, i32 3
  %241 = call i32 @DMA_BIT_MASK(i32 32)
  %242 = call i32 @dma_set_coherent_mask(i32* %240, i32 %241)
  br label %243

243:                                              ; preds = %234, %228
  %244 = load i16, i16* %9, align 2
  %245 = zext i16 %244 to i32
  %246 = ashr i32 %245, 8
  %247 = and i32 %246, 15
  %248 = trunc i32 %247 to i16
  %249 = load %struct.azx*, %struct.azx** %3, align 8
  %250 = getelementptr inbounds %struct.azx, %struct.azx* %249, i32 0, i32 6
  store i16 %248, i16* %250, align 8
  %251 = load i16, i16* %9, align 2
  %252 = zext i16 %251 to i32
  %253 = ashr i32 %252, 12
  %254 = and i32 %253, 15
  %255 = trunc i32 %254 to i16
  %256 = load %struct.azx*, %struct.azx** %3, align 8
  %257 = getelementptr inbounds %struct.azx, %struct.azx* %256, i32 0, i32 7
  store i16 %255, i16* %257, align 2
  %258 = load %struct.azx*, %struct.azx** %3, align 8
  %259 = getelementptr inbounds %struct.azx, %struct.azx* %258, i32 0, i32 7
  %260 = load i16, i16* %259, align 2
  %261 = icmp ne i16 %260, 0
  br i1 %261, label %294, label %262

262:                                              ; preds = %243
  %263 = load %struct.azx*, %struct.azx** %3, align 8
  %264 = getelementptr inbounds %struct.azx, %struct.azx* %263, i32 0, i32 6
  %265 = load i16, i16* %264, align 8
  %266 = icmp ne i16 %265, 0
  br i1 %266, label %294, label %267

267:                                              ; preds = %262
  %268 = load %struct.azx*, %struct.azx** %3, align 8
  %269 = getelementptr inbounds %struct.azx, %struct.azx* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  switch i32 %270, label %286 [
    i32 128, label %271
    i32 131, label %278
    i32 130, label %278
    i32 129, label %285
  ]

271:                                              ; preds = %267
  %272 = load i16, i16* @ULI_NUM_PLAYBACK, align 2
  %273 = load %struct.azx*, %struct.azx** %3, align 8
  %274 = getelementptr inbounds %struct.azx, %struct.azx* %273, i32 0, i32 7
  store i16 %272, i16* %274, align 2
  %275 = load i16, i16* @ULI_NUM_CAPTURE, align 2
  %276 = load %struct.azx*, %struct.azx** %3, align 8
  %277 = getelementptr inbounds %struct.azx, %struct.azx* %276, i32 0, i32 6
  store i16 %275, i16* %277, align 8
  br label %293

278:                                              ; preds = %267, %267
  %279 = load i16, i16* @ATIHDMI_NUM_PLAYBACK, align 2
  %280 = load %struct.azx*, %struct.azx** %3, align 8
  %281 = getelementptr inbounds %struct.azx, %struct.azx* %280, i32 0, i32 7
  store i16 %279, i16* %281, align 2
  %282 = load i16, i16* @ATIHDMI_NUM_CAPTURE, align 2
  %283 = load %struct.azx*, %struct.azx** %3, align 8
  %284 = getelementptr inbounds %struct.azx, %struct.azx* %283, i32 0, i32 6
  store i16 %282, i16* %284, align 8
  br label %293

285:                                              ; preds = %267
  br label %286

286:                                              ; preds = %267, %285
  %287 = load i16, i16* @ICH6_NUM_PLAYBACK, align 2
  %288 = load %struct.azx*, %struct.azx** %3, align 8
  %289 = getelementptr inbounds %struct.azx, %struct.azx* %288, i32 0, i32 7
  store i16 %287, i16* %289, align 2
  %290 = load i16, i16* @ICH6_NUM_CAPTURE, align 2
  %291 = load %struct.azx*, %struct.azx** %3, align 8
  %292 = getelementptr inbounds %struct.azx, %struct.azx* %291, i32 0, i32 6
  store i16 %290, i16* %292, align 8
  br label %293

293:                                              ; preds = %286, %278, %271
  br label %294

294:                                              ; preds = %293, %262, %243
  %295 = load %struct.azx*, %struct.azx** %3, align 8
  %296 = getelementptr inbounds %struct.azx, %struct.azx* %295, i32 0, i32 11
  store i64 0, i64* %296, align 8
  %297 = load %struct.azx*, %struct.azx** %3, align 8
  %298 = getelementptr inbounds %struct.azx, %struct.azx* %297, i32 0, i32 6
  %299 = load i16, i16* %298, align 8
  %300 = load %struct.azx*, %struct.azx** %3, align 8
  %301 = getelementptr inbounds %struct.azx, %struct.azx* %300, i32 0, i32 8
  store i16 %299, i16* %301, align 4
  %302 = load %struct.azx*, %struct.azx** %3, align 8
  %303 = getelementptr inbounds %struct.azx, %struct.azx* %302, i32 0, i32 7
  %304 = load i16, i16* %303, align 2
  %305 = zext i16 %304 to i32
  %306 = load %struct.azx*, %struct.azx** %3, align 8
  %307 = getelementptr inbounds %struct.azx, %struct.azx* %306, i32 0, i32 6
  %308 = load i16, i16* %307, align 8
  %309 = zext i16 %308 to i32
  %310 = add nsw i32 %305, %309
  %311 = trunc i32 %310 to i16
  %312 = load %struct.azx*, %struct.azx** %3, align 8
  %313 = getelementptr inbounds %struct.azx, %struct.azx* %312, i32 0, i32 9
  store i16 %311, i16* %313, align 2
  %314 = load %struct.azx*, %struct.azx** %3, align 8
  %315 = getelementptr inbounds %struct.azx, %struct.azx* %314, i32 0, i32 9
  %316 = load i16, i16* %315, align 2
  %317 = zext i16 %316 to i32
  %318 = icmp sgt i32 %317, 15
  br i1 %318, label %319, label %342

319:                                              ; preds = %294
  %320 = load %struct.azx*, %struct.azx** %3, align 8
  %321 = getelementptr inbounds %struct.azx, %struct.azx* %320, i32 0, i32 4
  %322 = load i32, i32* %321, align 8
  %323 = load i32, i32* @AZX_DCAPS_SEPARATE_STREAM_TAG, align 4
  %324 = and i32 %322, %323
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %326, label %342

326:                                              ; preds = %319
  %327 = load %struct.azx*, %struct.azx** %3, align 8
  %328 = getelementptr inbounds %struct.azx, %struct.azx* %327, i32 0, i32 10
  %329 = load %struct.snd_card*, %struct.snd_card** %328, align 8
  %330 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %329, i32 0, i32 3
  %331 = load i32, i32* %330, align 8
  %332 = load %struct.azx*, %struct.azx** %3, align 8
  %333 = getelementptr inbounds %struct.azx, %struct.azx* %332, i32 0, i32 9
  %334 = load i16, i16* %333, align 2
  %335 = zext i16 %334 to i32
  %336 = call i32 @dev_warn(i32 %331, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i32 %335)
  %337 = load i32, i32* @AZX_DCAPS_SEPARATE_STREAM_TAG, align 4
  %338 = load %struct.azx*, %struct.azx** %3, align 8
  %339 = getelementptr inbounds %struct.azx, %struct.azx* %338, i32 0, i32 4
  %340 = load i32, i32* %339, align 8
  %341 = or i32 %340, %337
  store i32 %341, i32* %339, align 8
  br label %342

342:                                              ; preds = %326, %319, %294
  %343 = load %struct.azx*, %struct.azx** %3, align 8
  %344 = call i32 @azx_init_streams(%struct.azx* %343)
  store i32 %344, i32* %8, align 4
  %345 = load i32, i32* %8, align 4
  %346 = icmp slt i32 %345, 0
  br i1 %346, label %347, label %349

347:                                              ; preds = %342
  %348 = load i32, i32* %8, align 4
  store i32 %348, i32* %2, align 4
  br label %419

349:                                              ; preds = %342
  %350 = load %struct.azx*, %struct.azx** %3, align 8
  %351 = call i32 @azx_alloc_stream_pages(%struct.azx* %350)
  store i32 %351, i32* %8, align 4
  %352 = load i32, i32* %8, align 4
  %353 = icmp slt i32 %352, 0
  br i1 %353, label %354, label %356

354:                                              ; preds = %349
  %355 = load i32, i32* %8, align 4
  store i32 %355, i32* %2, align 4
  br label %419

356:                                              ; preds = %349
  %357 = load %struct.azx*, %struct.azx** %3, align 8
  %358 = call i32 @azx_init_pci(%struct.azx* %357)
  %359 = load %struct.hdac_bus*, %struct.hdac_bus** %7, align 8
  %360 = call i32 @snd_hdac_i915_set_bclk(%struct.hdac_bus* %359)
  %361 = load %struct.azx*, %struct.azx** %3, align 8
  %362 = load i32*, i32** @probe_only, align 8
  %363 = load i32, i32* %4, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i32, i32* %362, i64 %364
  %366 = load i32, i32* %365, align 4
  %367 = and i32 %366, 2
  %368 = icmp eq i32 %367, 0
  %369 = zext i1 %368 to i32
  %370 = call i32 @hda_intel_init_chip(%struct.azx* %361, i32 %369)
  %371 = load %struct.azx*, %struct.azx** %3, align 8
  %372 = call %struct.hdac_bus* @azx_bus(%struct.azx* %371)
  %373 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %372, i32 0, i32 2
  %374 = load i32, i32* %373, align 8
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %383, label %376

376:                                              ; preds = %356
  %377 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %378 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %377, i32 0, i32 3
  %379 = load i32, i32* %378, align 8
  %380 = call i32 @dev_err(i32 %379, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %381 = load i32, i32* @ENODEV, align 4
  %382 = sub nsw i32 0, %381
  store i32 %382, i32* %2, align 4
  br label %419

383:                                              ; preds = %356
  %384 = load %struct.azx*, %struct.azx** %3, align 8
  %385 = call i64 @azx_acquire_irq(%struct.azx* %384, i32 0)
  %386 = icmp slt i64 %385, 0
  br i1 %386, label %387, label %390

387:                                              ; preds = %383
  %388 = load i32, i32* @EBUSY, align 4
  %389 = sub nsw i32 0, %388
  store i32 %389, i32* %2, align 4
  br label %419

390:                                              ; preds = %383
  %391 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %392 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %391, i32 0, i32 2
  %393 = load i32, i32* %392, align 4
  %394 = call i32 @strcpy(i32 %393, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %395 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %396 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %395, i32 0, i32 0
  %397 = load i8*, i8** %396, align 8
  %398 = load i32*, i32** @driver_short_names, align 8
  %399 = load %struct.azx*, %struct.azx** %3, align 8
  %400 = getelementptr inbounds %struct.azx, %struct.azx* %399, i32 0, i32 1
  %401 = load i32, i32* %400, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i32, i32* %398, i64 %402
  %404 = load i32, i32* %403, align 4
  %405 = call i32 @strlcpy(i8* %397, i32 %404, i32 8)
  %406 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %407 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %406, i32 0, i32 1
  %408 = load i32, i32* %407, align 8
  %409 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %410 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %409, i32 0, i32 0
  %411 = load i8*, i8** %410, align 8
  %412 = load %struct.hdac_bus*, %struct.hdac_bus** %7, align 8
  %413 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %412, i32 0, i32 1
  %414 = load i32, i32* %413, align 4
  %415 = load %struct.hdac_bus*, %struct.hdac_bus** %7, align 8
  %416 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 8
  %418 = call i32 @snprintf(i32 %408, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* %411, i32 %414, i32 %417)
  store i32 0, i32* %2, align 4
  br label %419

419:                                              ; preds = %390, %387, %376, %354, %347, %60, %43
  %420 = load i32, i32* %2, align 4
  ret i32 %420
}

declare dso_local %struct.hdac_bus* @azx_bus(%struct.azx*) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i8*) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32* @pci_ioremap_bar(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_hdac_bus_parse_capabilities(%struct.hdac_bus*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i64 @pci_enable_msi(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local zeroext i16 @azx_readw(%struct.azx*, i32) #1

declare dso_local %struct.pci_dev* @pci_get_device(i64, i32, i32*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local i32 @dma_set_mask(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dma_set_coherent_mask(i32*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @azx_init_streams(%struct.azx*) #1

declare dso_local i32 @azx_alloc_stream_pages(%struct.azx*) #1

declare dso_local i32 @azx_init_pci(%struct.azx*) #1

declare dso_local i32 @snd_hdac_i915_set_bclk(%struct.hdac_bus*) #1

declare dso_local i32 @hda_intel_init_chip(%struct.azx*, i32) #1

declare dso_local i64 @azx_acquire_irq(%struct.azx*, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
