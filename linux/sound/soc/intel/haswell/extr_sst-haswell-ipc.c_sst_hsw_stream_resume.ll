; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_sst_hsw_stream_resume.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_sst_hsw_stream_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_hsw = type { i32 }
%struct.sst_hsw_stream = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [58 x i8] c"warning: stream is NULL, no stream to resume, ignore it.\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"stream resume\00", align 1
@IPC_STR_RESUME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"error: failed to resume stream %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_hsw_stream_resume(%struct.sst_hsw* %0, %struct.sst_hsw_stream* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sst_hsw*, align 8
  %6 = alloca %struct.sst_hsw_stream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sst_hsw* %0, %struct.sst_hsw** %5, align 8
  store %struct.sst_hsw_stream* %1, %struct.sst_hsw_stream** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %6, align 8
  %10 = icmp ne %struct.sst_hsw_stream* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = load %struct.sst_hsw*, %struct.sst_hsw** %5, align 8
  %13 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dev_warn(i32 %14, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %43

16:                                               ; preds = %3
  %17 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %6, align 8
  %18 = getelementptr inbounds %struct.sst_hsw_stream, %struct.sst_hsw_stream* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @trace_ipc_request(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load %struct.sst_hsw*, %struct.sst_hsw** %5, align 8
  %23 = load i32, i32* @IPC_STR_RESUME, align 4
  %24 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %6, align 8
  %25 = getelementptr inbounds %struct.sst_hsw_stream, %struct.sst_hsw_stream* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @sst_hsw_stream_operations(%struct.sst_hsw* %22, i32 %23, i32 %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %16
  %33 = load %struct.sst_hsw*, %struct.sst_hsw** %5, align 8
  %34 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %6, align 8
  %37 = getelementptr inbounds %struct.sst_hsw_stream, %struct.sst_hsw_stream* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %32, %16
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %41, %11
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @trace_ipc_request(i8*, i32) #1

declare dso_local i32 @sst_hsw_stream_operations(%struct.sst_hsw*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
