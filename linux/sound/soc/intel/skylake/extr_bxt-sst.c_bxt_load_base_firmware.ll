; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_bxt-sst.c_bxt_load_base_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_bxt-sst.c_bxt_load_base_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { %struct.TYPE_4__*, i32, i32, %struct.skl_dev* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.skl_dev = type { i32, i32, i32, i64 }
%struct.firmware = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Request firmware failed %d\0A\00", align 1
@BXT_ADSP_FW_BIN_HDR_OFFSET = common dso_local global i32 0, align 4
@BXT_FW_ROM_INIT_RETRY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Error code=0x%x: FW status=0x%x\0A\00", align 1
@BXT_ADSP_ERROR_CODE = common dso_local global i32 0, align 4
@BXT_ADSP_FW_STATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Core En/ROM load fail:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Transfer firmware failed %d\0A\00", align 1
@SKL_DSP_CORE0_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"Firmware download successful\0A\00", align 1
@SKL_IPC_BOOT_MSECS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"DSP boot fail, FW Ready timeout\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sst_dsp*)* @bxt_load_base_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxt_load_base_firmware(%struct.sst_dsp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sst_dsp*, align 8
  %4 = alloca %struct.firmware, align 4
  %5 = alloca %struct.skl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sst_dsp* %0, %struct.sst_dsp** %3, align 8
  %8 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %9 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %8, i32 0, i32 3
  %10 = load %struct.skl_dev*, %struct.skl_dev** %9, align 8
  store %struct.skl_dev* %10, %struct.skl_dev** %5, align 8
  %11 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %12 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = icmp eq %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %35

15:                                               ; preds = %1
  %16 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %17 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %16, i32 0, i32 0
  %18 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %19 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %22 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @request_firmware(%struct.TYPE_4__** %17, i32 %20, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %15
  %28 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %29 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 (i32, i8*, ...) @dev_err(i32 %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %166

34:                                               ; preds = %15
  br label %35

35:                                               ; preds = %34, %1
  %36 = load %struct.skl_dev*, %struct.skl_dev** %5, align 8
  %37 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %42 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %43 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i32, i32* @BXT_ADSP_FW_BIN_HDR_OFFSET, align 4
  %46 = call i32 @snd_skl_parse_uuids(%struct.sst_dsp* %41, %struct.TYPE_4__* %44, i32 %45, i32 0)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %158

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50, %35
  %52 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %53 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.firmware, %struct.firmware* %4, i32 0, i32 1
  store i32 %56, i32* %57, align 4
  %58 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %59 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.firmware, %struct.firmware* %4, i32 0, i32 0
  store i32 %62, i32* %63, align 4
  %64 = call i32 @skl_dsp_strip_extended_manifest(%struct.firmware* %4)
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %80, %51
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @BXT_FW_ROM_INIT_RETRY, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %65
  %70 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %71 = getelementptr inbounds %struct.firmware, %struct.firmware* %4, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.firmware, %struct.firmware* %4, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @sst_bxt_prepare_fw(%struct.sst_dsp* %70, i32 %72, i32 %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  br label %83

79:                                               ; preds = %69
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %7, align 4
  br label %65

83:                                               ; preds = %78, %65
  %84 = load i32, i32* %6, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %83
  %87 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %88 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %91 = load i32, i32* @BXT_ADSP_ERROR_CODE, align 4
  %92 = call i32 @sst_dsp_shim_read(%struct.sst_dsp* %90, i32 %91)
  %93 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %94 = load i32, i32* @BXT_ADSP_FW_STATUS, align 4
  %95 = call i32 @sst_dsp_shim_read(%struct.sst_dsp* %93, i32 %94)
  %96 = call i32 (i32, i8*, ...) @dev_err(i32 %89, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %92, i32 %95)
  %97 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %98 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = call i32 (i32, i8*, ...) @dev_err(i32 %99, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  br label %158

102:                                              ; preds = %83
  %103 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %104 = call i32 @sst_transfer_fw_host_dma(%struct.sst_dsp* %103)
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %126

107:                                              ; preds = %102
  %108 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %109 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = call i32 (i32, i8*, ...) @dev_err(i32 %110, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %111)
  %113 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %114 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %117 = load i32, i32* @BXT_ADSP_ERROR_CODE, align 4
  %118 = call i32 @sst_dsp_shim_read(%struct.sst_dsp* %116, i32 %117)
  %119 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %120 = load i32, i32* @BXT_ADSP_FW_STATUS, align 4
  %121 = call i32 @sst_dsp_shim_read(%struct.sst_dsp* %119, i32 %120)
  %122 = call i32 @dev_info(i32 %115, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %118, i32 %121)
  %123 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %124 = load i32, i32* @SKL_DSP_CORE0_MASK, align 4
  %125 = call i32 @skl_dsp_disable_core(%struct.sst_dsp* %123, i32 %124)
  br label %156

126:                                              ; preds = %102
  %127 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %128 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @dev_dbg(i32 %129, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %131 = load %struct.skl_dev*, %struct.skl_dev** %5, align 8
  %132 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.skl_dev*, %struct.skl_dev** %5, align 8
  %135 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @SKL_IPC_BOOT_MSECS, align 4
  %138 = call i32 @msecs_to_jiffies(i32 %137)
  %139 = call i32 @wait_event_timeout(i32 %133, i32 %136, i32 %138)
  store i32 %139, i32* %6, align 4
  %140 = load i32, i32* %6, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %152

142:                                              ; preds = %126
  %143 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %144 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = call i32 (i32, i8*, ...) @dev_err(i32 %145, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %147 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %148 = load i32, i32* @SKL_DSP_CORE0_MASK, align 4
  %149 = call i32 @skl_dsp_disable_core(%struct.sst_dsp* %147, i32 %148)
  %150 = load i32, i32* @EIO, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %6, align 4
  br label %155

152:                                              ; preds = %126
  store i32 0, i32* %6, align 4
  %153 = load %struct.skl_dev*, %struct.skl_dev** %5, align 8
  %154 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %153, i32 0, i32 0
  store i32 1, i32* %154, align 8
  br label %155

155:                                              ; preds = %152, %142
  br label %156

156:                                              ; preds = %155, %107
  %157 = load i32, i32* %6, align 4
  store i32 %157, i32* %2, align 4
  br label %166

158:                                              ; preds = %86, %49
  %159 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %160 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %159, i32 0, i32 0
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = call i32 @release_firmware(%struct.TYPE_4__* %161)
  %163 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %164 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %163, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %164, align 8
  %165 = load i32, i32* %6, align 4
  store i32 %165, i32* %2, align 4
  br label %166

166:                                              ; preds = %158, %156, %27
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local i32 @request_firmware(%struct.TYPE_4__**, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @snd_skl_parse_uuids(%struct.sst_dsp*, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @skl_dsp_strip_extended_manifest(%struct.firmware*) #1

declare dso_local i32 @sst_bxt_prepare_fw(%struct.sst_dsp*, i32, i32) #1

declare dso_local i32 @sst_dsp_shim_read(%struct.sst_dsp*, i32) #1

declare dso_local i32 @sst_transfer_fw_host_dma(%struct.sst_dsp*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #1

declare dso_local i32 @skl_dsp_disable_core(%struct.sst_dsp*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @release_firmware(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
