; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_bxt-sst.c_bxt_load_library.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_bxt-sst.c_bxt_load_library.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { i32, %struct.TYPE_2__, %struct.skl_dev* }
%struct.TYPE_2__ = type { i32 (i32, i32, i32, %struct.snd_dma_buffer*)*, i32 (i32, %struct.snd_dma_buffer.0*, i32)*, i32 (i32, i32, i32)* }
%struct.snd_dma_buffer = type opaque
%struct.snd_dma_buffer.0 = type opaque
%struct.skl_dev = type { i32, i32* }
%struct.skl_lib_info = type { i32 }
%struct.snd_dma_buffer.1 = type { i32 }
%struct.firmware = type { i32, i32 }

@BXT_ADSP_FW_BIN_HDR_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Lib prepare DMA err: %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"IPC Load Lib for %s fail: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sst_dsp*, %struct.skl_lib_info*, i32)* @bxt_load_library to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxt_load_library(%struct.sst_dsp* %0, %struct.skl_lib_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sst_dsp*, align 8
  %6 = alloca %struct.skl_lib_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_dma_buffer.1, align 4
  %9 = alloca %struct.skl_dev*, align 8
  %10 = alloca %struct.firmware, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sst_dsp* %0, %struct.sst_dsp** %5, align 8
  store %struct.skl_lib_info* %1, %struct.skl_lib_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %16 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %15, i32 0, i32 2
  %17 = load %struct.skl_dev*, %struct.skl_dev** %16, align 8
  store %struct.skl_dev* %17, %struct.skl_dev** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %18

18:                                               ; preds = %115, %3
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %118

22:                                               ; preds = %18
  %23 = load %struct.skl_dev*, %struct.skl_dev** %9, align 8
  %24 = load %struct.skl_dev*, %struct.skl_dev** %9, align 8
  %25 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* @BXT_ADSP_FW_BIN_HDR_OFFSET, align 4
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @skl_prepare_lib_load(%struct.skl_dev* %23, i32* %29, %struct.firmware* %10, i32 %30, i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  br label %120

36:                                               ; preds = %22
  %37 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %38 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (i32, i32, i32, %struct.snd_dma_buffer*)*, i32 (i32, i32, i32, %struct.snd_dma_buffer*)** %39, align 8
  %41 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %42 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.firmware, %struct.firmware* %10, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = bitcast %struct.snd_dma_buffer.1* %8 to %struct.snd_dma_buffer*
  %47 = call i32 %40(i32 %43, i32 64, i32 %45, %struct.snd_dma_buffer* %46)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp sle i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %36
  %51 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %52 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %14, align 4
  %55 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %14, align 4
  store i32 %56, i32* %11, align 4
  br label %120

57:                                               ; preds = %36
  %58 = load i32, i32* %14, align 4
  %59 = sub nsw i32 %58, 1
  store i32 %59, i32* %13, align 4
  %60 = getelementptr inbounds %struct.snd_dma_buffer.1, %struct.snd_dma_buffer.1* %8, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.firmware, %struct.firmware* %10, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.firmware, %struct.firmware* %10, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @memcpy(i32 %61, i32 %63, i32 %65)
  %67 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %68 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  %70 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %69, align 8
  %71 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %72 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %14, align 4
  %75 = call i32 %70(i32 %73, i32 1, i32 %74)
  %76 = load %struct.skl_dev*, %struct.skl_dev** %9, align 8
  %77 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %76, i32 0, i32 0
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @skl_sst_ipc_load_library(i32* %77, i32 %78, i32 %79, i32 1)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %57
  %84 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %85 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.skl_lib_info*, %struct.skl_lib_info** %6, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.skl_lib_info, %struct.skl_lib_info* %87, i64 %89
  %91 = getelementptr inbounds %struct.skl_lib_info, %struct.skl_lib_info* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %11, align 4
  %94 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %86, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %83, %57
  %96 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %97 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 2
  %99 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %98, align 8
  %100 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %101 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %14, align 4
  %104 = call i32 %99(i32 %102, i32 0, i32 %103)
  %105 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %106 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i32 (i32, %struct.snd_dma_buffer.0*, i32)*, i32 (i32, %struct.snd_dma_buffer.0*, i32)** %107, align 8
  %109 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %110 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = bitcast %struct.snd_dma_buffer.1* %8 to %struct.snd_dma_buffer.0*
  %113 = load i32, i32* %14, align 4
  %114 = call i32 %108(i32 %111, %struct.snd_dma_buffer.0* %112, i32 %113)
  br label %115

115:                                              ; preds = %95
  %116 = load i32, i32* %12, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %12, align 4
  br label %18

118:                                              ; preds = %18
  %119 = load i32, i32* %11, align 4
  store i32 %119, i32* %4, align 4
  br label %125

120:                                              ; preds = %50, %35
  %121 = load %struct.skl_lib_info*, %struct.skl_lib_info** %6, align 8
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @skl_release_library(%struct.skl_lib_info* %121, i32 %122)
  %124 = load i32, i32* %11, align 4
  store i32 %124, i32* %4, align 4
  br label %125

125:                                              ; preds = %120, %118
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i32 @skl_prepare_lib_load(%struct.skl_dev*, i32*, %struct.firmware*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @skl_sst_ipc_load_library(i32*, i32, i32, i32) #1

declare dso_local i32 @skl_release_library(%struct.skl_lib_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
