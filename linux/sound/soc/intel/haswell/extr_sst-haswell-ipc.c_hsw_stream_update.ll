; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_hsw_stream_update.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_hsw_stream_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_hsw = type { i32 }
%struct.ipc_message = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sst_hsw_stream = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@IPC_STATUS_MASK = common dso_local global i32 0, align 4
@IPC_GLB_REPLY_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"stream reset\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"stream paused\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"stream running\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sst_hsw*, %struct.ipc_message*)* @hsw_stream_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hsw_stream_update(%struct.sst_hsw* %0, %struct.ipc_message* %1) #0 {
  %3 = alloca %struct.sst_hsw*, align 8
  %4 = alloca %struct.ipc_message*, align 8
  %5 = alloca %struct.sst_hsw_stream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sst_hsw* %0, %struct.sst_hsw** %3, align 8
  store %struct.ipc_message* %1, %struct.ipc_message** %4, align 8
  %9 = load %struct.ipc_message*, %struct.ipc_message** %4, align 8
  %10 = getelementptr inbounds %struct.ipc_message, %struct.ipc_message* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IPC_STATUS_MASK, align 4
  %14 = load i32, i32* @IPC_GLB_REPLY_MASK, align 4
  %15 = or i32 %13, %14
  %16 = xor i32 %15, -1
  %17 = and i32 %12, %16
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @msg_get_stream_id(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @msg_get_stream_type(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.sst_hsw*, %struct.sst_hsw** %3, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call %struct.sst_hsw_stream* @get_stream_by_id(%struct.sst_hsw* %22, i32 %23)
  store %struct.sst_hsw_stream* %24, %struct.sst_hsw_stream** %5, align 8
  %25 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %5, align 8
  %26 = icmp eq %struct.sst_hsw_stream* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %53

28:                                               ; preds = %2
  %29 = load i32, i32* %8, align 4
  switch i32 %29, label %53 [
    i32 128, label %30
    i32 132, label %30
    i32 130, label %31
    i32 131, label %37
    i32 129, label %45
  ]

30:                                               ; preds = %28, %28
  br label %53

31:                                               ; preds = %28
  %32 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %5, align 8
  %33 = getelementptr inbounds %struct.sst_hsw_stream, %struct.sst_hsw_stream* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @trace_ipc_notification(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %53

37:                                               ; preds = %28
  %38 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %5, align 8
  %39 = getelementptr inbounds %struct.sst_hsw_stream, %struct.sst_hsw_stream* %38, i32 0, i32 0
  store i32 0, i32* %39, align 4
  %40 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %5, align 8
  %41 = getelementptr inbounds %struct.sst_hsw_stream, %struct.sst_hsw_stream* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @trace_ipc_notification(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %53

45:                                               ; preds = %28
  %46 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %5, align 8
  %47 = getelementptr inbounds %struct.sst_hsw_stream, %struct.sst_hsw_stream* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  %48 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %5, align 8
  %49 = getelementptr inbounds %struct.sst_hsw_stream, %struct.sst_hsw_stream* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @trace_ipc_notification(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %27, %28, %45, %37, %31, %30
  ret void
}

declare dso_local i32 @msg_get_stream_id(i32) #1

declare dso_local i32 @msg_get_stream_type(i32) #1

declare dso_local %struct.sst_hsw_stream* @get_stream_by_id(%struct.sst_hsw*, i32) #1

declare dso_local i32 @trace_ipc_notification(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
