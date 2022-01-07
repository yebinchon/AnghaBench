; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-ipc.c_sst_byt_stream_update.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-ipc.c_sst_byt_stream_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_byt = type { i32 }
%struct.ipc_message = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sst_byt_stream = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sst_byt*, %struct.ipc_message*)* @sst_byt_stream_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sst_byt_stream_update(%struct.sst_byt* %0, %struct.ipc_message* %1) #0 {
  %3 = alloca %struct.sst_byt*, align 8
  %4 = alloca %struct.ipc_message*, align 8
  %5 = alloca %struct.sst_byt_stream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sst_byt* %0, %struct.sst_byt** %3, align 8
  store %struct.ipc_message* %1, %struct.ipc_message** %4, align 8
  %9 = load %struct.ipc_message*, %struct.ipc_message** %4, align 8
  %10 = getelementptr inbounds %struct.ipc_message, %struct.ipc_message* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @sst_byt_header_str_id(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @sst_byt_header_msg_id(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.sst_byt*, %struct.sst_byt** %3, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call %struct.sst_byt_stream* @sst_byt_get_stream(%struct.sst_byt* %17, i32 %18)
  store %struct.sst_byt_stream* %19, %struct.sst_byt_stream** %5, align 8
  %20 = load %struct.sst_byt_stream*, %struct.sst_byt_stream** %5, align 8
  %21 = icmp eq %struct.sst_byt_stream* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %31

23:                                               ; preds = %2
  %24 = load i32, i32* %8, align 4
  switch i32 %24, label %31 [
    i32 132, label %25
    i32 130, label %25
    i32 131, label %25
    i32 128, label %28
    i32 129, label %28
  ]

25:                                               ; preds = %23, %23, %23
  %26 = load %struct.sst_byt_stream*, %struct.sst_byt_stream** %5, align 8
  %27 = getelementptr inbounds %struct.sst_byt_stream, %struct.sst_byt_stream* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  br label %31

28:                                               ; preds = %23, %23
  %29 = load %struct.sst_byt_stream*, %struct.sst_byt_stream** %5, align 8
  %30 = getelementptr inbounds %struct.sst_byt_stream, %struct.sst_byt_stream* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  br label %31

31:                                               ; preds = %22, %23, %28, %25
  ret void
}

declare dso_local i32 @sst_byt_header_str_id(i32) #1

declare dso_local i32 @sst_byt_header_msg_id(i32) #1

declare dso_local %struct.sst_byt_stream* @sst_byt_get_stream(%struct.sst_byt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
