; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_stream.c_sst_free_stream.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_stream.c_sst_free_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sst_drv = type { i64, i32, i32 }
%struct.stream_info = type { i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"SST DBG:sst_free_stream for %d\0A\00", align 1
@SST_RESET = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@STREAM_UN_INIT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Free for str %d pipe %#x\0A\00", align 1
@IPC_CMD = common dso_local global i32 0, align 4
@IPC_IA_FREE_STREAM_MRFLD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"sst: wait for free returned %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"SST DBG:Stream freed\0A\00", align 1
@EBADRQC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"SST DBG:BADQRC for stream\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_free_stream(%struct.intel_sst_drv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_sst_drv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.stream_info*, align 8
  store %struct.intel_sst_drv* %0, %struct.intel_sst_drv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %9 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 (i32, i8*, ...) @dev_dbg(i32 %10, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %14 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %13, i32 0, i32 2
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %17 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SST_RESET, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %23 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %22, i32 0, i32 2
  %24 = call i32 @mutex_unlock(i32* %23)
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %107

27:                                               ; preds = %2
  %28 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %29 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %28, i32 0, i32 2
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call %struct.stream_info* @get_stream_info(%struct.intel_sst_drv* %31, i32 %32)
  store %struct.stream_info* %33, %struct.stream_info** %7, align 8
  %34 = load %struct.stream_info*, %struct.stream_info** %7, align 8
  %35 = icmp ne %struct.stream_info* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %27
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %107

39:                                               ; preds = %27
  %40 = load %struct.stream_info*, %struct.stream_info** %7, align 8
  %41 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %40, i32 0, i32 2
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.stream_info*, %struct.stream_info** %7, align 8
  %44 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @STREAM_UN_INIT, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %95

48:                                               ; preds = %39
  %49 = load %struct.stream_info*, %struct.stream_info** %7, align 8
  %50 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.stream_info*, %struct.stream_info** %7, align 8
  %53 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load i64, i64* @STREAM_UN_INIT, align 8
  %55 = load %struct.stream_info*, %struct.stream_info** %7, align 8
  %56 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.stream_info*, %struct.stream_info** %7, align 8
  %58 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %57, i32 0, i32 2
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %61 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.stream_info*, %struct.stream_info** %7, align 8
  %65 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i32, i8*, ...) @dev_dbg(i32 %62, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %66)
  %68 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %69 = load %struct.stream_info*, %struct.stream_info** %7, align 8
  %70 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @IPC_CMD, align 4
  %73 = load i32, i32* @IPC_IA_FREE_STREAM_MRFLD, align 4
  %74 = load %struct.stream_info*, %struct.stream_info** %7, align 8
  %75 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @sst_prepare_and_post_msg(%struct.intel_sst_drv* %68, i32 %71, i32 %72, i32 %73, i32 %76, i32 0, i32* null, i32* null, i32 1, i32 1, i32 0, i32 1)
  store i32 %77, i32* %6, align 4
  %78 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %79 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 (i32, i8*, ...) @dev_dbg(i32 %80, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  %83 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %84 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %83, i32 0, i32 2
  %85 = call i32 @mutex_lock(i32* %84)
  %86 = load %struct.stream_info*, %struct.stream_info** %7, align 8
  %87 = call i32 @sst_clean_stream(%struct.stream_info* %86)
  %88 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %89 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %88, i32 0, i32 2
  %90 = call i32 @mutex_unlock(i32* %89)
  %91 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %92 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i32 (i32, i8*, ...) @dev_dbg(i32 %93, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %105

95:                                               ; preds = %39
  %96 = load %struct.stream_info*, %struct.stream_info** %7, align 8
  %97 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %96, i32 0, i32 2
  %98 = call i32 @mutex_unlock(i32* %97)
  %99 = load i32, i32* @EBADRQC, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %6, align 4
  %101 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %102 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i32 (i32, i8*, ...) @dev_dbg(i32 %103, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %105

105:                                              ; preds = %95, %48
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %105, %36, %21
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.stream_info* @get_stream_info(%struct.intel_sst_drv*, i32) #1

declare dso_local i32 @sst_prepare_and_post_msg(%struct.intel_sst_drv*, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sst_clean_stream(%struct.stream_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
