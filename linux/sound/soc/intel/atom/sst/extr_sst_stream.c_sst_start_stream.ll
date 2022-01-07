; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_stream.c_sst_start_stream.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_stream.c_sst_start_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sst_drv = type { i32 }
%struct.stream_info = type { i64, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"sst_start_stream for %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@STREAM_RUNNING = common dso_local global i64 0, align 8
@EBADRQC = common dso_local global i32 0, align 4
@IPC_CMD = common dso_local global i32 0, align 4
@IPC_IA_START_STREAM_MRFLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_start_stream(%struct.intel_sst_drv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_sst_drv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.stream_info*, align 8
  %8 = alloca i32, align 4
  store %struct.intel_sst_drv* %0, %struct.intel_sst_drv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %10 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @dev_dbg(i32 %11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.stream_info* @get_stream_info(%struct.intel_sst_drv* %14, i32 %15)
  store %struct.stream_info* %16, %struct.stream_info** %7, align 8
  %17 = load %struct.stream_info*, %struct.stream_info** %7, align 8
  %18 = icmp ne %struct.stream_info* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %43

22:                                               ; preds = %2
  %23 = load %struct.stream_info*, %struct.stream_info** %7, align 8
  %24 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @STREAM_RUNNING, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @EBADRQC, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %43

31:                                               ; preds = %22
  %32 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %33 = load %struct.stream_info*, %struct.stream_info** %7, align 8
  %34 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @IPC_CMD, align 4
  %37 = load i32, i32* @IPC_IA_START_STREAM_MRFLD, align 4
  %38 = load %struct.stream_info*, %struct.stream_info** %7, align 8
  %39 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @sst_prepare_and_post_msg(%struct.intel_sst_drv* %32, i32 %35, i32 %36, i32 %37, i32 %40, i32 4, i32* %8, i32* null, i32 1, i32 1, i32 1, i32 0)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %31, %28, %19
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local %struct.stream_info* @get_stream_info(%struct.intel_sst_drv*, i32) #1

declare dso_local i32 @sst_prepare_and_post_msg(%struct.intel_sst_drv*, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
