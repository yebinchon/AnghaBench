; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-ipc.c_sst_byt_process_reply.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-ipc.c_sst_byt_process_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_byt = type { i32, i32 }
%struct.ipc_message = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sst_byt*, i32)* @sst_byt_process_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_byt_process_reply(%struct.sst_byt* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sst_byt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipc_message*, align 8
  store %struct.sst_byt* %0, %struct.sst_byt** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.sst_byt*, %struct.sst_byt** %4, align 8
  %8 = getelementptr inbounds %struct.sst_byt, %struct.sst_byt* %7, i32 0, i32 0
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.ipc_message* @sst_ipc_reply_find_msg(i32* %8, i32 %9)
  store %struct.ipc_message* %10, %struct.ipc_message** %6, align 8
  %11 = load %struct.ipc_message*, %struct.ipc_message** %6, align 8
  %12 = icmp eq %struct.ipc_message* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %52

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.ipc_message*, %struct.ipc_message** %6, align 8
  %17 = getelementptr inbounds %struct.ipc_message, %struct.ipc_message* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @IPC_HEADER_LARGE(i32 1)
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %14
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @sst_byt_header_data(i32 %24)
  %26 = load %struct.ipc_message*, %struct.ipc_message** %6, align 8
  %27 = getelementptr inbounds %struct.ipc_message, %struct.ipc_message* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 4
  %29 = load %struct.sst_byt*, %struct.sst_byt** %4, align 8
  %30 = getelementptr inbounds %struct.sst_byt, %struct.sst_byt* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ipc_message*, %struct.ipc_message** %6, align 8
  %33 = getelementptr inbounds %struct.ipc_message, %struct.ipc_message* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ipc_message*, %struct.ipc_message** %6, align 8
  %37 = getelementptr inbounds %struct.ipc_message, %struct.ipc_message* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @sst_dsp_inbox_read(i32 %31, i32 %35, i32 %39)
  br label %41

41:                                               ; preds = %23, %14
  %42 = load %struct.sst_byt*, %struct.sst_byt** %4, align 8
  %43 = load %struct.ipc_message*, %struct.ipc_message** %6, align 8
  %44 = call i32 @sst_byt_stream_update(%struct.sst_byt* %42, %struct.ipc_message* %43)
  %45 = load %struct.ipc_message*, %struct.ipc_message** %6, align 8
  %46 = getelementptr inbounds %struct.ipc_message, %struct.ipc_message* %45, i32 0, i32 0
  %47 = call i32 @list_del(i32* %46)
  %48 = load %struct.sst_byt*, %struct.sst_byt** %4, align 8
  %49 = getelementptr inbounds %struct.sst_byt, %struct.sst_byt* %48, i32 0, i32 0
  %50 = load %struct.ipc_message*, %struct.ipc_message** %6, align 8
  %51 = call i32 @sst_ipc_tx_msg_reply_complete(i32* %49, %struct.ipc_message* %50)
  store i32 1, i32* %3, align 4
  br label %52

52:                                               ; preds = %41, %13
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.ipc_message* @sst_ipc_reply_find_msg(i32*, i32) #1

declare dso_local i32 @IPC_HEADER_LARGE(i32) #1

declare dso_local i32 @sst_byt_header_data(i32) #1

declare dso_local i32 @sst_dsp_inbox_read(i32, i32, i32) #1

declare dso_local i32 @sst_byt_stream_update(%struct.sst_byt*, %struct.ipc_message*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @sst_ipc_tx_msg_reply_complete(i32*, %struct.ipc_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
