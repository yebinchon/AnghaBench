; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_stream.c_sst_drain_stream.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_stream.c_sst_drain_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sst_drv = type { i32 }
%struct.stream_info = type { i64, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"SST DBG:sst_drain_stream for %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@STREAM_RUNNING = common dso_local global i64 0, align 8
@STREAM_INIT = common dso_local global i64 0, align 8
@STREAM_PAUSED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"SST ERR: BADQRC for stream = %d\0A\00", align 1
@EBADRQC = common dso_local global i32 0, align 4
@IPC_CMD = common dso_local global i32 0, align 4
@IPC_IA_DRAIN_STREAM_MRFLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_drain_stream(%struct.intel_sst_drv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_sst_drv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.stream_info*, align 8
  store %struct.intel_sst_drv* %0, %struct.intel_sst_drv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %5, align 8
  %11 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @dev_dbg(i32 %12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.stream_info* @get_stream_info(%struct.intel_sst_drv* %15, i32 %16)
  store %struct.stream_info* %17, %struct.stream_info** %9, align 8
  %18 = load %struct.stream_info*, %struct.stream_info** %9, align 8
  %19 = icmp ne %struct.stream_info* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %63

23:                                               ; preds = %3
  %24 = load %struct.stream_info*, %struct.stream_info** %9, align 8
  %25 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @STREAM_RUNNING, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %23
  %30 = load %struct.stream_info*, %struct.stream_info** %9, align 8
  %31 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @STREAM_INIT, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %29
  %36 = load %struct.stream_info*, %struct.stream_info** %9, align 8
  %37 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @STREAM_PAUSED, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %35
  %42 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %5, align 8
  %43 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.stream_info*, %struct.stream_info** %9, align 8
  %46 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @dev_err(i32 %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %47)
  %49 = load i32, i32* @EBADRQC, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %63

51:                                               ; preds = %35, %29, %23
  %52 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %5, align 8
  %53 = load %struct.stream_info*, %struct.stream_info** %9, align 8
  %54 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @IPC_CMD, align 4
  %57 = load i32, i32* @IPC_IA_DRAIN_STREAM_MRFLD, align 4
  %58 = load %struct.stream_info*, %struct.stream_info** %9, align 8
  %59 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @sst_prepare_and_post_msg(%struct.intel_sst_drv* %52, i32 %55, i32 %56, i32 %57, i32 %60, i32 4, i32* %7, i32* null, i32 1, i32 1, i32 0, i32 0)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %51, %41, %20
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local %struct.stream_info* @get_stream_info(%struct.intel_sst_drv*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @sst_prepare_and_post_msg(%struct.intel_sst_drv*, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
