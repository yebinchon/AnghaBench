; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_drv_interface.c_sst_cdev_stream_start.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_drv_interface.c_sst_cdev_stream_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.stream_info = type { i32, i32 }
%struct.intel_sst_drv = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@STREAM_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @sst_cdev_stream_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_cdev_stream_start(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stream_info*, align 8
  %7 = alloca %struct.intel_sst_drv*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.intel_sst_drv* @dev_get_drvdata(%struct.device* %8)
  store %struct.intel_sst_drv* %9, %struct.intel_sst_drv** %7, align 8
  %10 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.stream_info* @get_stream_info(%struct.intel_sst_drv* %10, i32 %11)
  store %struct.stream_info* %12, %struct.stream_info** %6, align 8
  %13 = load %struct.stream_info*, %struct.stream_info** %6, align 8
  %14 = icmp ne %struct.stream_info* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %30

18:                                               ; preds = %2
  %19 = load %struct.stream_info*, %struct.stream_info** %6, align 8
  %20 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.stream_info*, %struct.stream_info** %6, align 8
  %23 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @STREAM_RUNNING, align 4
  %25 = load %struct.stream_info*, %struct.stream_info** %6, align 8
  %26 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %7, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @sst_start_stream(%struct.intel_sst_drv* %27, i32 %28)
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %18, %15
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.intel_sst_drv* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.stream_info* @get_stream_info(%struct.intel_sst_drv*, i32) #1

declare dso_local i32 @sst_start_stream(%struct.intel_sst_drv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
