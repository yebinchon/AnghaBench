; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_stream.c_sst_pause_stream.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_stream.c_sst_pause_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sst_drv = type { i32, i32 }
%struct.stream_info = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"SST DBG:sst_pause_stream for %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@STREAM_PAUSED = common dso_local global i64 0, align 8
@STREAM_RUNNING = common dso_local global i64 0, align 8
@STREAM_INIT = common dso_local global i64 0, align 8
@STREAM_UN_INIT = common dso_local global i64 0, align 8
@EBADRQC = common dso_local global i32 0, align 4
@IPC_CMD = common dso_local global i32 0, align 4
@IPC_IA_PAUSE_STREAM_MRFLD = common dso_local global i32 0, align 4
@SST_ERR_INVALID_STREAM_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"SST DBG:BADRQC for stream\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_pause_stream(%struct.intel_sst_drv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_sst_drv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.stream_info*, align 8
  store %struct.intel_sst_drv* %0, %struct.intel_sst_drv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %9 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 (i32, i8*, ...) @dev_dbg(i32 %10, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.stream_info* @get_stream_info(%struct.intel_sst_drv* %13, i32 %14)
  store %struct.stream_info* %15, %struct.stream_info** %7, align 8
  %16 = load %struct.stream_info*, %struct.stream_info** %7, align 8
  %17 = icmp ne %struct.stream_info* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %98

21:                                               ; preds = %2
  %22 = load %struct.stream_info*, %struct.stream_info** %7, align 8
  %23 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @STREAM_PAUSED, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %98

28:                                               ; preds = %21
  %29 = load %struct.stream_info*, %struct.stream_info** %7, align 8
  %30 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @STREAM_RUNNING, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.stream_info*, %struct.stream_info** %7, align 8
  %36 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @STREAM_INIT, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %89

40:                                               ; preds = %34, %28
  %41 = load %struct.stream_info*, %struct.stream_info** %7, align 8
  %42 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @STREAM_UN_INIT, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @EBADRQC, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %98

49:                                               ; preds = %40
  %50 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %51 = load %struct.stream_info*, %struct.stream_info** %7, align 8
  %52 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @IPC_CMD, align 4
  %55 = load i32, i32* @IPC_IA_PAUSE_STREAM_MRFLD, align 4
  %56 = load %struct.stream_info*, %struct.stream_info** %7, align 8
  %57 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @sst_prepare_and_post_msg(%struct.intel_sst_drv* %50, i32 %53, i32 %54, i32 %55, i32 %58, i32 0, i32* null, i32* null, i32 1, i32 1, i32 0, i32 1)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %49
  %63 = load %struct.stream_info*, %struct.stream_info** %7, align 8
  %64 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.stream_info*, %struct.stream_info** %7, align 8
  %67 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  %68 = load i64, i64* @STREAM_PAUSED, align 8
  %69 = load %struct.stream_info*, %struct.stream_info** %7, align 8
  %70 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  br label %88

71:                                               ; preds = %49
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @SST_ERR_INVALID_STREAM_ID, align 4
  %74 = sub nsw i32 0, %73
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %71
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %6, align 4
  %79 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %80 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %79, i32 0, i32 1
  %81 = call i32 @mutex_lock(i32* %80)
  %82 = load %struct.stream_info*, %struct.stream_info** %7, align 8
  %83 = call i32 @sst_clean_stream(%struct.stream_info* %82)
  %84 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %85 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %84, i32 0, i32 1
  %86 = call i32 @mutex_unlock(i32* %85)
  br label %87

87:                                               ; preds = %76, %71
  br label %88

88:                                               ; preds = %87, %62
  br label %96

89:                                               ; preds = %34
  %90 = load i32, i32* @EBADRQC, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %6, align 4
  %92 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %93 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i32, i8*, ...) @dev_dbg(i32 %94, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %96

96:                                               ; preds = %89, %88
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %96, %46, %27, %18
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local %struct.stream_info* @get_stream_info(%struct.intel_sst_drv*, i32) #1

declare dso_local i32 @sst_prepare_and_post_msg(%struct.intel_sst_drv*, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sst_clean_stream(%struct.stream_info*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
