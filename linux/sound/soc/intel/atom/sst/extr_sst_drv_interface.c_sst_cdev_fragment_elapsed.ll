; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_drv_interface.c_sst_cdev_fragment_elapsed.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_drv_interface.c_sst_cdev_fragment_elapsed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sst_drv = type { %struct.stream_info*, i32 }
%struct.stream_info = type { i32, i32 (i32)* }

@.str = private unnamed_addr constant [46 x i8] c"fragment elapsed from firmware for str_id %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sst_cdev_fragment_elapsed(%struct.intel_sst_drv* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_sst_drv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stream_info*, align 8
  store %struct.intel_sst_drv* %0, %struct.intel_sst_drv** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %7 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @dev_dbg(i32 %8, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %12 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %11, i32 0, i32 0
  %13 = load %struct.stream_info*, %struct.stream_info** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %13, i64 %15
  store %struct.stream_info* %16, %struct.stream_info** %5, align 8
  %17 = load %struct.stream_info*, %struct.stream_info** %5, align 8
  %18 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %17, i32 0, i32 1
  %19 = load i32 (i32)*, i32 (i32)** %18, align 8
  %20 = icmp ne i32 (i32)* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.stream_info*, %struct.stream_info** %5, align 8
  %23 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %22, i32 0, i32 1
  %24 = load i32 (i32)*, i32 (i32)** %23, align 8
  %25 = load %struct.stream_info*, %struct.stream_info** %5, align 8
  %26 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 %24(i32 %27)
  br label %29

29:                                               ; preds = %21, %2
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
