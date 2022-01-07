; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_stream.c_sst_resume_stream.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_stream.c_sst_resume_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sst_drv = type { i32, i32 }
%struct.stream_info = type { i64, i64, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"SST DBG:sst_resume_stream for %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@STREAM_RUNNING = common dso_local global i64 0, align 8
@STREAM_PAUSED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"restart recreated stream after resume\0A\00", align 1
@STREAM_UN_INIT = common dso_local global i8* null, align 8
@STREAM_INIT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"leaving recreated stream idle after resume\0A\00", align 1
@IPC_CMD = common dso_local global i32 0, align 4
@IPC_IA_RESUME_STREAM_MRFLD = common dso_local global i32 0, align 4
@SST_ERR_INVALID_STREAM_ID = common dso_local global i32 0, align 4
@EBADRQC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"SST ERR: BADQRC for stream\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_resume_stream(%struct.intel_sst_drv* %0, i32 %1) #0 {
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
  %12 = call i32 (i32, i8*, ...) @dev_dbg(i32 %10, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %11)
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
  br label %151

21:                                               ; preds = %2
  %22 = load %struct.stream_info*, %struct.stream_info** %7, align 8
  %23 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @STREAM_RUNNING, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %151

28:                                               ; preds = %21
  %29 = load %struct.stream_info*, %struct.stream_info** %7, align 8
  %30 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @STREAM_PAUSED, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %58

34:                                               ; preds = %28
  %35 = load %struct.stream_info*, %struct.stream_info** %7, align 8
  %36 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @STREAM_RUNNING, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %34
  %41 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %42 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i32, i8*, ...) @dev_dbg(i32 %43, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i64, i64* @STREAM_RUNNING, align 8
  %46 = load %struct.stream_info*, %struct.stream_info** %7, align 8
  %47 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load i64, i64* @STREAM_PAUSED, align 8
  %49 = load %struct.stream_info*, %struct.stream_info** %7, align 8
  %50 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %49, i32 0, i32 3
  store i64 %48, i64* %50, align 8
  %51 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @sst_start_stream(%struct.intel_sst_drv* %51, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i8*, i8** @STREAM_UN_INIT, align 8
  %55 = ptrtoint i8* %54 to i64
  %56 = load %struct.stream_info*, %struct.stream_info** %7, align 8
  %57 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  br label %149

58:                                               ; preds = %34, %28
  %59 = load %struct.stream_info*, %struct.stream_info** %7, align 8
  %60 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @STREAM_PAUSED, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %85

64:                                               ; preds = %58
  %65 = load %struct.stream_info*, %struct.stream_info** %7, align 8
  %66 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @STREAM_INIT, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %85

70:                                               ; preds = %64
  %71 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %72 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i32, i8*, ...) @dev_dbg(i32 %73, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i64, i64* @STREAM_INIT, align 8
  %76 = load %struct.stream_info*, %struct.stream_info** %7, align 8
  %77 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load i64, i64* @STREAM_PAUSED, align 8
  %79 = load %struct.stream_info*, %struct.stream_info** %7, align 8
  %80 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %79, i32 0, i32 3
  store i64 %78, i64* %80, align 8
  %81 = load i8*, i8** @STREAM_UN_INIT, align 8
  %82 = ptrtoint i8* %81 to i64
  %83 = load %struct.stream_info*, %struct.stream_info** %7, align 8
  %84 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  br label %148

85:                                               ; preds = %64, %58
  %86 = load %struct.stream_info*, %struct.stream_info** %7, align 8
  %87 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @STREAM_PAUSED, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %140

91:                                               ; preds = %85
  %92 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %93 = load %struct.stream_info*, %struct.stream_info** %7, align 8
  %94 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @IPC_CMD, align 4
  %97 = load i32, i32* @IPC_IA_RESUME_STREAM_MRFLD, align 4
  %98 = load %struct.stream_info*, %struct.stream_info** %7, align 8
  %99 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @sst_prepare_and_post_msg(%struct.intel_sst_drv* %92, i32 %95, i32 %96, i32 %97, i32 %100, i32 0, i32* null, i32* null, i32 1, i32 1, i32 0, i32 1)
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %122, label %104

104:                                              ; preds = %91
  %105 = load %struct.stream_info*, %struct.stream_info** %7, align 8
  %106 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @STREAM_RUNNING, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  %111 = load i64, i64* @STREAM_RUNNING, align 8
  %112 = load %struct.stream_info*, %struct.stream_info** %7, align 8
  %113 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  br label %118

114:                                              ; preds = %104
  %115 = load i64, i64* @STREAM_INIT, align 8
  %116 = load %struct.stream_info*, %struct.stream_info** %7, align 8
  %117 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %116, i32 0, i32 0
  store i64 %115, i64* %117, align 8
  br label %118

118:                                              ; preds = %114, %110
  %119 = load i64, i64* @STREAM_PAUSED, align 8
  %120 = load %struct.stream_info*, %struct.stream_info** %7, align 8
  %121 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %120, i32 0, i32 3
  store i64 %119, i64* %121, align 8
  br label %139

122:                                              ; preds = %91
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* @SST_ERR_INVALID_STREAM_ID, align 4
  %125 = sub nsw i32 0, %124
  %126 = icmp eq i32 %123, %125
  br i1 %126, label %127, label %138

127:                                              ; preds = %122
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %6, align 4
  %130 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %131 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %130, i32 0, i32 1
  %132 = call i32 @mutex_lock(i32* %131)
  %133 = load %struct.stream_info*, %struct.stream_info** %7, align 8
  %134 = call i32 @sst_clean_stream(%struct.stream_info* %133)
  %135 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %136 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %135, i32 0, i32 1
  %137 = call i32 @mutex_unlock(i32* %136)
  br label %138

138:                                              ; preds = %127, %122
  br label %139

139:                                              ; preds = %138, %118
  br label %147

140:                                              ; preds = %85
  %141 = load i32, i32* @EBADRQC, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %6, align 4
  %143 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %144 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @dev_err(i32 %145, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %147

147:                                              ; preds = %140, %139
  br label %148

148:                                              ; preds = %147, %70
  br label %149

149:                                              ; preds = %148, %40
  %150 = load i32, i32* %6, align 4
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %149, %27, %18
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local %struct.stream_info* @get_stream_info(%struct.intel_sst_drv*, i32) #1

declare dso_local i32 @sst_start_stream(%struct.intel_sst_drv*, i32) #1

declare dso_local i32 @sst_prepare_and_post_msg(%struct.intel_sst_drv*, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sst_clean_stream(%struct.stream_info*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
