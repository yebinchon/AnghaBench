; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/xilinx/extr_xlnx_formatter_pcm.c_xlnx_formatter_pcm_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/xilinx/extr_xlnx_formatter_pcm.c_xlnx_formatter_pcm_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.xlnx_pcm_drv_data = type { i32, i64, i64, i64 }

@XLNX_S2MM_OFFSET = common dso_local global i64 0, align 8
@XLNX_MM2S_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"audio formatter reset failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xlnx_formatter_pcm_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlnx_formatter_pcm_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.xlnx_pcm_drv_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = call %struct.xlnx_pcm_drv_data* @dev_get_drvdata(i32* %6)
  store %struct.xlnx_pcm_drv_data* %7, %struct.xlnx_pcm_drv_data** %4, align 8
  %8 = load %struct.xlnx_pcm_drv_data*, %struct.xlnx_pcm_drv_data** %4, align 8
  %9 = getelementptr inbounds %struct.xlnx_pcm_drv_data, %struct.xlnx_pcm_drv_data* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.xlnx_pcm_drv_data*, %struct.xlnx_pcm_drv_data** %4, align 8
  %14 = getelementptr inbounds %struct.xlnx_pcm_drv_data, %struct.xlnx_pcm_drv_data* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @XLNX_S2MM_OFFSET, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @xlnx_formatter_pcm_reset(i64 %17)
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %12, %1
  %20 = load %struct.xlnx_pcm_drv_data*, %struct.xlnx_pcm_drv_data** %4, align 8
  %21 = getelementptr inbounds %struct.xlnx_pcm_drv_data, %struct.xlnx_pcm_drv_data* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.xlnx_pcm_drv_data*, %struct.xlnx_pcm_drv_data** %4, align 8
  %26 = getelementptr inbounds %struct.xlnx_pcm_drv_data, %struct.xlnx_pcm_drv_data* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @XLNX_MM2S_OFFSET, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @xlnx_formatter_pcm_reset(i64 %29)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %24, %19
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %34, %31
  %39 = load %struct.xlnx_pcm_drv_data*, %struct.xlnx_pcm_drv_data** %4, align 8
  %40 = getelementptr inbounds %struct.xlnx_pcm_drv_data, %struct.xlnx_pcm_drv_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @clk_disable_unprepare(i32 %41)
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.xlnx_pcm_drv_data* @dev_get_drvdata(i32*) #1

declare dso_local i32 @xlnx_formatter_pcm_reset(i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
