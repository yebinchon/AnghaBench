; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_hsw_log_message.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_hsw_log_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_hsw = type { i32, i32, %struct.sst_hsw_log_stream }
%struct.sst_hsw_log_stream = type { i32, i32, i32, i32 }

@IPC_LOG_OP_MASK = common dso_local global i64 0, align 8
@IPC_LOG_OP_SHIFT = common dso_local global i64 0, align 8
@IPC_DEBUG_REQUEST_LOG_DUMP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"error: log msg not implemented 0x%8.8x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sst_hsw*, i64)* @hsw_log_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsw_log_message(%struct.sst_hsw* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sst_hsw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sst_hsw_log_stream*, align 8
  %8 = alloca i32, align 4
  store %struct.sst_hsw* %0, %struct.sst_hsw** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @IPC_LOG_OP_MASK, align 8
  %11 = and i64 %9, %10
  %12 = load i64, i64* @IPC_LOG_OP_SHIFT, align 8
  %13 = ashr i64 %11, %12
  store i64 %13, i64* %6, align 8
  %14 = load %struct.sst_hsw*, %struct.sst_hsw** %4, align 8
  %15 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %14, i32 0, i32 2
  store %struct.sst_hsw_log_stream* %15, %struct.sst_hsw_log_stream** %7, align 8
  store i32 1, i32* %8, align 4
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @IPC_DEBUG_REQUEST_LOG_DUMP, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.sst_hsw*, %struct.sst_hsw** %4, align 8
  %21 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %23)
  store i32 0, i32* %3, align 4
  br label %47

25:                                               ; preds = %2
  %26 = load %struct.sst_hsw_log_stream*, %struct.sst_hsw_log_stream** %7, align 8
  %27 = getelementptr inbounds %struct.sst_hsw_log_stream, %struct.sst_hsw_log_stream* %26, i32 0, i32 1
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.sst_hsw_log_stream*, %struct.sst_hsw_log_stream** %7, align 8
  %30 = getelementptr inbounds %struct.sst_hsw_log_stream, %struct.sst_hsw_log_stream* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sst_hsw_log_stream*, %struct.sst_hsw_log_stream** %7, align 8
  %33 = getelementptr inbounds %struct.sst_hsw_log_stream, %struct.sst_hsw_log_stream* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load %struct.sst_hsw*, %struct.sst_hsw** %4, align 8
  %35 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.sst_hsw_log_stream*, %struct.sst_hsw_log_stream** %7, align 8
  %38 = getelementptr inbounds %struct.sst_hsw_log_stream, %struct.sst_hsw_log_stream* %37, i32 0, i32 2
  %39 = call i32 @sst_dsp_inbox_read(i32 %36, i32* %38, i32 4)
  %40 = load %struct.sst_hsw_log_stream*, %struct.sst_hsw_log_stream** %7, align 8
  %41 = getelementptr inbounds %struct.sst_hsw_log_stream, %struct.sst_hsw_log_stream* %40, i32 0, i32 1
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load %struct.sst_hsw_log_stream*, %struct.sst_hsw_log_stream** %7, align 8
  %44 = getelementptr inbounds %struct.sst_hsw_log_stream, %struct.sst_hsw_log_stream* %43, i32 0, i32 0
  %45 = call i32 @schedule_work(i32* %44)
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %25, %19
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sst_dsp_inbox_read(i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
