; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_sst_hsw_stream_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_sst_hsw_stream_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_hsw = type { i32, i32, %struct.sst_dsp* }
%struct.sst_dsp = type { i32 }
%struct.sst_hsw_stream = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sst_ipc_message = type { i32, %struct.TYPE_4__*, i32 }

@.str = private unnamed_addr constant [56 x i8] c"warning: stream is NULL, no stream to free, ignore it.\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"stream free\00", align 1
@IPC_GLB_FREE_STREAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"error: free stream %d failed\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_hsw_stream_free(%struct.sst_hsw* %0, %struct.sst_hsw_stream* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sst_hsw*, align 8
  %5 = alloca %struct.sst_hsw_stream*, align 8
  %6 = alloca %struct.sst_ipc_message, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sst_dsp*, align 8
  %9 = alloca i64, align 8
  store %struct.sst_hsw* %0, %struct.sst_hsw** %4, align 8
  store %struct.sst_hsw_stream* %1, %struct.sst_hsw_stream** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.sst_hsw*, %struct.sst_hsw** %4, align 8
  %11 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %10, i32 0, i32 2
  %12 = load %struct.sst_dsp*, %struct.sst_dsp** %11, align 8
  store %struct.sst_dsp* %12, %struct.sst_dsp** %8, align 8
  %13 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %5, align 8
  %14 = icmp ne %struct.sst_hsw_stream* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load %struct.sst_hsw*, %struct.sst_hsw** %4, align 8
  %17 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @dev_warn(i32 %18, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %84

20:                                               ; preds = %2
  %21 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %5, align 8
  %22 = getelementptr inbounds %struct.sst_hsw_stream, %struct.sst_hsw_stream* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %66

26:                                               ; preds = %20
  %27 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %5, align 8
  %28 = getelementptr inbounds %struct.sst_hsw_stream, %struct.sst_hsw_stream* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @trace_ipc_request(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %5, align 8
  %32 = getelementptr inbounds %struct.sst_hsw_stream, %struct.sst_hsw_stream* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %5, align 8
  %36 = getelementptr inbounds %struct.sst_hsw_stream, %struct.sst_hsw_stream* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @IPC_GLB_FREE_STREAM, align 4
  %39 = call i32 @IPC_GLB_TYPE(i32 %38)
  %40 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %6, i32 0, i32 2
  store i32 %39, i32* %40, align 8
  %41 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %5, align 8
  %42 = getelementptr inbounds %struct.sst_hsw_stream, %struct.sst_hsw_stream* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %6, i32 0, i32 1
  store %struct.TYPE_4__* %42, %struct.TYPE_4__** %43, align 8
  %44 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %6, i32 0, i32 0
  store i32 4, i32* %44, align 8
  %45 = load %struct.sst_hsw*, %struct.sst_hsw** %4, align 8
  %46 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %45, i32 0, i32 1
  %47 = call i32 @sst_ipc_tx_message_wait(i32* %46, %struct.sst_ipc_message* byval(%struct.sst_ipc_message) align 8 %6, i32* null)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %26
  %51 = load %struct.sst_hsw*, %struct.sst_hsw** %4, align 8
  %52 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %5, align 8
  %55 = getelementptr inbounds %struct.sst_hsw_stream, %struct.sst_hsw_stream* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @EAGAIN, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %84

61:                                               ; preds = %26
  %62 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %5, align 8
  %63 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %5, align 8
  %64 = getelementptr inbounds %struct.sst_hsw_stream, %struct.sst_hsw_stream* %63, i32 0, i32 2
  %65 = call i32 @trace_hsw_stream_free_req(%struct.sst_hsw_stream* %62, %struct.TYPE_4__* %64)
  br label %66

66:                                               ; preds = %61, %25
  %67 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %5, align 8
  %68 = getelementptr inbounds %struct.sst_hsw_stream, %struct.sst_hsw_stream* %67, i32 0, i32 1
  %69 = call i32 @cancel_work_sync(i32* %68)
  %70 = load %struct.sst_dsp*, %struct.sst_dsp** %8, align 8
  %71 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %70, i32 0, i32 0
  %72 = load i64, i64* %9, align 8
  %73 = call i32 @spin_lock_irqsave(i32* %71, i64 %72)
  %74 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %5, align 8
  %75 = getelementptr inbounds %struct.sst_hsw_stream, %struct.sst_hsw_stream* %74, i32 0, i32 0
  %76 = call i32 @list_del(i32* %75)
  %77 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %5, align 8
  %78 = call i32 @kfree(%struct.sst_hsw_stream* %77)
  %79 = load %struct.sst_dsp*, %struct.sst_dsp** %8, align 8
  %80 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %79, i32 0, i32 0
  %81 = load i64, i64* %9, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* %80, i64 %81)
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %66, %50, %15
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @trace_ipc_request(i8*, i32) #1

declare dso_local i32 @IPC_GLB_TYPE(i32) #1

declare dso_local i32 @sst_ipc_tx_message_wait(i32*, %struct.sst_ipc_message* byval(%struct.sst_ipc_message) align 8, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @trace_hsw_stream_free_req(%struct.sst_hsw_stream*, %struct.TYPE_4__*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.sst_hsw_stream*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
