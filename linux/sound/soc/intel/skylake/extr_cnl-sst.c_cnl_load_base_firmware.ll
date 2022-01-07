; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_cnl-sst.c_cnl_load_base_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_cnl-sst.c_cnl_load_base_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { %struct.TYPE_4__*, i32, i32, %struct.skl_dev* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.skl_dev = type { i32, i32, i32, i64 }
%struct.firmware = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"request firmware failed: %d\0A\00", align 1
@CNL_ADSP_FW_HDR_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"prepare firmware failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"transfer firmware failed: %d\0A\00", align 1
@SKL_DSP_CORE0_MASK = common dso_local global i32 0, align 4
@SKL_IPC_BOOT_MSECS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"FW ready timed-out\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sst_dsp*)* @cnl_load_base_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnl_load_base_firmware(%struct.sst_dsp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sst_dsp*, align 8
  %4 = alloca %struct.firmware, align 4
  %5 = alloca %struct.skl_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.sst_dsp* %0, %struct.sst_dsp** %3, align 8
  %7 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %8 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %7, i32 0, i32 3
  %9 = load %struct.skl_dev*, %struct.skl_dev** %8, align 8
  store %struct.skl_dev* %9, %struct.skl_dev** %5, align 8
  %10 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %11 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %33, label %14

14:                                               ; preds = %1
  %15 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %16 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %15, i32 0, i32 0
  %17 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %18 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %21 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @request_firmware(%struct.TYPE_4__** %16, i32 %19, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %14
  %27 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %28 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 (i32, i8*, ...) @dev_err(i32 %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %116

32:                                               ; preds = %14
  br label %33

33:                                               ; preds = %32, %1
  %34 = load %struct.skl_dev*, %struct.skl_dev** %5, align 8
  %35 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %40 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %41 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i32, i32* @CNL_ADSP_FW_HDR_OFFSET, align 4
  %44 = call i32 @snd_skl_parse_uuids(%struct.sst_dsp* %39, %struct.TYPE_4__* %42, i32 %43, i32 0)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %116

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48, %33
  %50 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %51 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.firmware, %struct.firmware* %4, i32 0, i32 1
  store i32 %54, i32* %55, align 4
  %56 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %57 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.firmware, %struct.firmware* %4, i32 0, i32 0
  store i32 %60, i32* %61, align 4
  %62 = call i32 @skl_dsp_strip_extended_manifest(%struct.firmware* %4)
  %63 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %64 = getelementptr inbounds %struct.firmware, %struct.firmware* %4, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.firmware, %struct.firmware* %4, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @cnl_prepare_fw(%struct.sst_dsp* %63, i32 %65, i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %49
  %72 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %73 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32 (i32, i8*, ...) @dev_err(i32 %74, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  br label %116

77:                                               ; preds = %49
  %78 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %79 = call i32 @sst_transfer_fw_host_dma(%struct.sst_dsp* %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %77
  %83 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %84 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call i32 (i32, i8*, ...) @dev_err(i32 %85, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  %88 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %89 = load i32, i32* @SKL_DSP_CORE0_MASK, align 4
  %90 = call i32 @cnl_dsp_disable_core(%struct.sst_dsp* %88, i32 %89)
  br label %116

91:                                               ; preds = %77
  %92 = load %struct.skl_dev*, %struct.skl_dev** %5, align 8
  %93 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.skl_dev*, %struct.skl_dev** %5, align 8
  %96 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @SKL_IPC_BOOT_MSECS, align 4
  %99 = call i32 @msecs_to_jiffies(i32 %98)
  %100 = call i32 @wait_event_timeout(i32 %94, i32 %97, i32 %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %91
  %104 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %105 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 (i32, i8*, ...) @dev_err(i32 %106, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %108 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %109 = load i32, i32* @SKL_DSP_CORE0_MASK, align 4
  %110 = call i32 @cnl_dsp_disable_core(%struct.sst_dsp* %108, i32 %109)
  %111 = load i32, i32* @EIO, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %6, align 4
  br label %116

113:                                              ; preds = %91
  %114 = load %struct.skl_dev*, %struct.skl_dev** %5, align 8
  %115 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %114, i32 0, i32 0
  store i32 1, i32* %115, align 8
  store i32 0, i32* %2, align 4
  br label %124

116:                                              ; preds = %103, %82, %71, %47, %26
  %117 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %118 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %117, i32 0, i32 0
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = call i32 @release_firmware(%struct.TYPE_4__* %119)
  %121 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %122 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %121, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %122, align 8
  %123 = load i32, i32* %6, align 4
  store i32 %123, i32* %2, align 4
  br label %124

124:                                              ; preds = %116, %113
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local i32 @request_firmware(%struct.TYPE_4__**, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @snd_skl_parse_uuids(%struct.sst_dsp*, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @skl_dsp_strip_extended_manifest(%struct.firmware*) #1

declare dso_local i32 @cnl_prepare_fw(%struct.sst_dsp*, i32, i32) #1

declare dso_local i32 @sst_transfer_fw_host_dma(%struct.sst_dsp*) #1

declare dso_local i32 @cnl_dsp_disable_core(%struct.sst_dsp*, i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @release_firmware(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
