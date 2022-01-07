; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_drv_interface.c_sst_close_pcm_stream.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_drv_interface.c_sst_close_pcm_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.stream_info = type { i32*, i32, i32* }
%struct.intel_sst_drv = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"stream info is NULL for str %d!!!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@STREAM_UN_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"free stream returned err %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @sst_close_pcm_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_close_pcm_stream(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stream_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.intel_sst_drv*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.intel_sst_drv* @dev_get_drvdata(%struct.device* %9)
  store %struct.intel_sst_drv* %10, %struct.intel_sst_drv** %8, align 8
  %11 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.stream_info* @get_stream_info(%struct.intel_sst_drv* %11, i32 %12)
  store %struct.stream_info* %13, %struct.stream_info** %6, align 8
  %14 = load %struct.stream_info*, %struct.stream_info** %6, align 8
  %15 = icmp ne %struct.stream_info* %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %2
  %17 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %8, align 8
  %18 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %52

24:                                               ; preds = %2
  %25 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %8, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @free_stream_context(%struct.intel_sst_drv* %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load %struct.stream_info*, %struct.stream_info** %6, align 8
  %29 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %28, i32 0, i32 2
  store i32* null, i32** %29, align 8
  %30 = load i32, i32* @STREAM_UN_INIT, align 4
  %31 = load %struct.stream_info*, %struct.stream_info** %6, align 8
  %32 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load %struct.stream_info*, %struct.stream_info** %6, align 8
  %34 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  %35 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %8, align 8
  %36 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %24
  %42 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %8, align 8
  %43 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @dev_err(i32 %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %41, %24
  %48 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %8, align 8
  %49 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dev_dbg(i32 %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %47, %16
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.intel_sst_drv* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.stream_info* @get_stream_info(%struct.intel_sst_drv*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @free_stream_context(%struct.intel_sst_drv*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
