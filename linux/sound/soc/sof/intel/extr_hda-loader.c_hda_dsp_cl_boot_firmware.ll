; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-loader.c_hda_dsp_cl_boot_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-loader.c_hda_dsp_cl_boot_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32, i32, %struct.TYPE_5__, i32, %struct.snd_sof_pdata* }
%struct.TYPE_5__ = type { i32 }
%struct.snd_sof_pdata = type { %struct.TYPE_4__*, %struct.sof_dev_desc* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sof_dev_desc = type { %struct.sof_intel_dsp_desc* }
%struct.sof_intel_dsp_desc = type { i32 }
%struct.hdac_ext_stream = type { i32 }
%struct.firmware = type { i32, i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"error: dma prepare for fw loading err: %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"error: could not get stream with stream tag %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@HDA_FW_BOOT_ATTEMPTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"error: Error code=0x%x: FW status=0x%x\0A\00", align 1
@HDA_DSP_BAR = common dso_local global i32 0, align 4
@HDA_DSP_SRAM_REG_ROM_ERROR = common dso_local global i32 0, align 4
@HDA_DSP_SRAM_REG_ROM_STATUS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"error: iteration %d of Core En/ROM load failed: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"error: dsp init failed after %d attempts with err: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Firmware download successful, booting...\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"error: load fw failed ret: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"error: Code loader DSP cleanup failed\0A\00", align 1
@SOF_DBG_REGS = common dso_local global i32 0, align 4
@SOF_DBG_PCI = common dso_local global i32 0, align 4
@SOF_DBG_MBOX = common dso_local global i32 0, align 4
@HDA_DSP_PP_BAR = common dso_local global i32 0, align 4
@SOF_HDA_REG_PP_PPCTL = common dso_local global i32 0, align 4
@SOF_HDA_PPCTL_GPROCEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hda_dsp_cl_boot_firmware(%struct.snd_sof_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_sof_dev*, align 8
  %4 = alloca %struct.snd_sof_pdata*, align 8
  %5 = alloca %struct.sof_dev_desc*, align 8
  %6 = alloca %struct.sof_intel_dsp_desc*, align 8
  %7 = alloca %struct.hdac_ext_stream*, align 8
  %8 = alloca %struct.firmware, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %3, align 8
  %13 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %14 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %13, i32 0, i32 4
  %15 = load %struct.snd_sof_pdata*, %struct.snd_sof_pdata** %14, align 8
  store %struct.snd_sof_pdata* %15, %struct.snd_sof_pdata** %4, align 8
  %16 = load %struct.snd_sof_pdata*, %struct.snd_sof_pdata** %4, align 8
  %17 = getelementptr inbounds %struct.snd_sof_pdata, %struct.snd_sof_pdata* %16, i32 0, i32 1
  %18 = load %struct.sof_dev_desc*, %struct.sof_dev_desc** %17, align 8
  store %struct.sof_dev_desc* %18, %struct.sof_dev_desc** %5, align 8
  %19 = load %struct.sof_dev_desc*, %struct.sof_dev_desc** %5, align 8
  %20 = getelementptr inbounds %struct.sof_dev_desc, %struct.sof_dev_desc* %19, i32 0, i32 0
  %21 = load %struct.sof_intel_dsp_desc*, %struct.sof_intel_dsp_desc** %20, align 8
  store %struct.sof_intel_dsp_desc* %21, %struct.sof_intel_dsp_desc** %6, align 8
  %22 = load %struct.snd_sof_pdata*, %struct.snd_sof_pdata** %4, align 8
  %23 = getelementptr inbounds %struct.snd_sof_pdata, %struct.snd_sof_pdata* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.firmware, %struct.firmware* %8, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load %struct.snd_sof_pdata*, %struct.snd_sof_pdata** %4, align 8
  %29 = getelementptr inbounds %struct.snd_sof_pdata, %struct.snd_sof_pdata* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.firmware, %struct.firmware* %8, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %35 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %34, i32 0, i32 3
  %36 = call i32 @init_waitqueue_head(i32* %35)
  %37 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %38 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  %39 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %40 = getelementptr inbounds %struct.firmware, %struct.firmware* %8, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %43 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %42, i32 0, i32 2
  %44 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %45 = call i32 @cl_stream_prepare(%struct.snd_sof_dev* %39, i32 64, i32 %41, %struct.TYPE_5__* %43, i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %1
  %49 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %50 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 (i32, i8*, ...) @dev_err(i32 %51, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %2, align 4
  br label %181

55:                                               ; preds = %1
  %56 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call %struct.hdac_ext_stream* @get_stream_with_tag(%struct.snd_sof_dev* %56, i32 %57)
  store %struct.hdac_ext_stream* %58, %struct.hdac_ext_stream** %7, align 8
  %59 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %7, align 8
  %60 = icmp ne %struct.hdac_ext_stream* %59, null
  br i1 %60, label %69, label %61

61:                                               ; preds = %55
  %62 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %63 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i32 (i32, i8*, ...) @dev_err(i32 %64, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @ENODEV, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %9, align 4
  br label %167

69:                                               ; preds = %55
  %70 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %71 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = getelementptr inbounds %struct.firmware, %struct.firmware* %8, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.firmware, %struct.firmware* %8, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @memcpy(i32 %73, i32 %75, i32 %77)
  store i32 0, i32* %12, align 4
  br label %79

79:                                               ; preds = %113, %69
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* @HDA_FW_BOOT_ATTEMPTS, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %116

83:                                               ; preds = %79
  %84 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %85 = getelementptr inbounds %struct.firmware, %struct.firmware* %8, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.firmware, %struct.firmware* %8, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @cl_dsp_init(%struct.snd_sof_dev* %84, i32 %86, i32 %88, i32 %89)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %83
  br label %116

94:                                               ; preds = %83
  %95 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %96 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %99 = load i32, i32* @HDA_DSP_BAR, align 4
  %100 = load i32, i32* @HDA_DSP_SRAM_REG_ROM_ERROR, align 4
  %101 = call i32 @snd_sof_dsp_read(%struct.snd_sof_dev* %98, i32 %99, i32 %100)
  %102 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %103 = load i32, i32* @HDA_DSP_BAR, align 4
  %104 = load i32, i32* @HDA_DSP_SRAM_REG_ROM_STATUS, align 4
  %105 = call i32 @snd_sof_dsp_read(%struct.snd_sof_dev* %102, i32 %103, i32 %104)
  %106 = call i32 (i32, i8*, ...) @dev_err(i32 %97, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %101, i32 %105)
  %107 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %108 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %9, align 4
  %112 = call i32 (i32, i8*, ...) @dev_err(i32 %109, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %94
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %12, align 4
  br label %79

116:                                              ; preds = %93, %79
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* @HDA_FW_BOOT_ATTEMPTS, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %116
  %121 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %122 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* %9, align 4
  %126 = call i32 (i32, i8*, ...) @dev_err(i32 %123, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i32 %124, i32 %125)
  br label %145

127:                                              ; preds = %116
  %128 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %129 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %7, align 8
  %130 = call i32 @cl_copy_fw(%struct.snd_sof_dev* %128, %struct.hdac_ext_stream* %129)
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %9, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %127
  %134 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %135 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @dev_dbg(i32 %136, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  br label %144

138:                                              ; preds = %127
  %139 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %140 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %9, align 4
  %143 = call i32 (i32, i8*, ...) @dev_err(i32 %141, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %142)
  br label %144

144:                                              ; preds = %138, %133
  br label %145

145:                                              ; preds = %144, %120
  %146 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %147 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %148 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %147, i32 0, i32 2
  %149 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %7, align 8
  %150 = call i32 @cl_cleanup(%struct.snd_sof_dev* %146, %struct.TYPE_5__* %148, %struct.hdac_ext_stream* %149)
  store i32 %150, i32* %10, align 4
  %151 = load i32, i32* %10, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %145
  %154 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %155 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (i32, i8*, ...) @dev_err(i32 %156, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  %158 = load i32, i32* %10, align 4
  store i32 %158, i32* %9, align 4
  br label %159

159:                                              ; preds = %153, %145
  %160 = load i32, i32* %9, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %159
  %163 = load %struct.sof_intel_dsp_desc*, %struct.sof_intel_dsp_desc** %6, align 8
  %164 = getelementptr inbounds %struct.sof_intel_dsp_desc, %struct.sof_intel_dsp_desc* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  store i32 %165, i32* %2, align 4
  br label %181

166:                                              ; preds = %159
  br label %167

167:                                              ; preds = %166, %61
  %168 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %169 = load i32, i32* @SOF_DBG_REGS, align 4
  %170 = load i32, i32* @SOF_DBG_PCI, align 4
  %171 = or i32 %169, %170
  %172 = load i32, i32* @SOF_DBG_MBOX, align 4
  %173 = or i32 %171, %172
  %174 = call i32 @hda_dsp_dump(%struct.snd_sof_dev* %168, i32 %173)
  %175 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %176 = load i32, i32* @HDA_DSP_PP_BAR, align 4
  %177 = load i32, i32* @SOF_HDA_REG_PP_PPCTL, align 4
  %178 = load i32, i32* @SOF_HDA_PPCTL_GPROCEN, align 4
  %179 = call i32 @snd_sof_dsp_update_bits(%struct.snd_sof_dev* %175, i32 %176, i32 %177, i32 %178, i32 0)
  %180 = load i32, i32* %9, align 4
  store i32 %180, i32* %2, align 4
  br label %181

181:                                              ; preds = %167, %162, %48
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @cl_stream_prepare(%struct.snd_sof_dev*, i32, i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local %struct.hdac_ext_stream* @get_stream_with_tag(%struct.snd_sof_dev*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @cl_dsp_init(%struct.snd_sof_dev*, i32, i32, i32) #1

declare dso_local i32 @snd_sof_dsp_read(%struct.snd_sof_dev*, i32, i32) #1

declare dso_local i32 @cl_copy_fw(%struct.snd_sof_dev*, %struct.hdac_ext_stream*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @cl_cleanup(%struct.snd_sof_dev*, %struct.TYPE_5__*, %struct.hdac_ext_stream*) #1

declare dso_local i32 @hda_dsp_dump(%struct.snd_sof_dev*, i32) #1

declare dso_local i32 @snd_sof_dsp_update_bits(%struct.snd_sof_dev*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
