; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_sst_hsw_stream_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_sst_hsw_stream_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_hsw = type { i32 }
%struct.sst_hsw_stream = type { %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"warning: stream is NULL, no stream to reset, ignore it.\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"error: reset stream %d still running\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"stream reset\00", align 1
@IPC_STR_RESET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"error: failed to reset stream %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_hsw_stream_reset(%struct.sst_hsw* %0, %struct.sst_hsw_stream* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sst_hsw*, align 8
  %5 = alloca %struct.sst_hsw_stream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sst_hsw* %0, %struct.sst_hsw** %4, align 8
  store %struct.sst_hsw_stream* %1, %struct.sst_hsw_stream** %5, align 8
  store i32 10, i32* %7, align 4
  %8 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %5, align 8
  %9 = icmp ne %struct.sst_hsw_stream* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.sst_hsw*, %struct.sst_hsw** %4, align 8
  %12 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @dev_warn(i32 %13, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %75

15:                                               ; preds = %2
  %16 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %5, align 8
  %17 = getelementptr inbounds %struct.sst_hsw_stream, %struct.sst_hsw_stream* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %75

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %33, %21
  %23 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %5, align 8
  %24 = getelementptr inbounds %struct.sst_hsw_stream, %struct.sst_hsw_stream* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br label %31

31:                                               ; preds = %27, %22
  %32 = phi i1 [ false, %22 ], [ %30, %27 ]
  br i1 %32, label %33, label %35

33:                                               ; preds = %31
  %34 = call i32 @msleep(i32 1)
  br label %22

35:                                               ; preds = %31
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %35
  %39 = load %struct.sst_hsw*, %struct.sst_hsw** %4, align 8
  %40 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %5, align 8
  %43 = getelementptr inbounds %struct.sst_hsw_stream, %struct.sst_hsw_stream* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %75

49:                                               ; preds = %35
  %50 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %5, align 8
  %51 = getelementptr inbounds %struct.sst_hsw_stream, %struct.sst_hsw_stream* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @trace_ipc_request(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load %struct.sst_hsw*, %struct.sst_hsw** %4, align 8
  %56 = load i32, i32* @IPC_STR_RESET, align 4
  %57 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %5, align 8
  %58 = getelementptr inbounds %struct.sst_hsw_stream, %struct.sst_hsw_stream* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @sst_hsw_stream_operations(%struct.sst_hsw* %55, i32 %56, i32 %60, i32 1)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %49
  %65 = load %struct.sst_hsw*, %struct.sst_hsw** %4, align 8
  %66 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %5, align 8
  %69 = getelementptr inbounds %struct.sst_hsw_stream, %struct.sst_hsw_stream* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %64, %49
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %38, %20, %10
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @trace_ipc_request(i8*, i32) #1

declare dso_local i32 @sst_hsw_stream_operations(%struct.sst_hsw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
