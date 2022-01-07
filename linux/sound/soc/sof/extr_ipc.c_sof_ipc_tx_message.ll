; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_ipc.c_sof_ipc_tx_message.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_ipc.c_sof_ipc_tx_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_ipc = type { i32 }

@SOF_IPC_MSG_MAX_SIZE = common dso_local global i64 0, align 8
@ENOBUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sof_ipc_tx_message(%struct.snd_sof_ipc* %0, i32 %1, i8* %2, i64 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_sof_ipc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.snd_sof_ipc* %0, %struct.snd_sof_ipc** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %15 = load i64, i64* %11, align 8
  %16 = load i64, i64* @SOF_IPC_MSG_MAX_SIZE, align 8
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %6
  %19 = load i64, i64* %13, align 8
  %20 = load i64, i64* @SOF_IPC_MSG_MAX_SIZE, align 8
  %21 = icmp ugt i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18, %6
  %23 = load i32, i32* @ENOBUFS, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %40

25:                                               ; preds = %18
  %26 = load %struct.snd_sof_ipc*, %struct.snd_sof_ipc** %8, align 8
  %27 = getelementptr inbounds %struct.snd_sof_ipc, %struct.snd_sof_ipc* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.snd_sof_ipc*, %struct.snd_sof_ipc** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i8*, i8** %10, align 8
  %32 = load i64, i64* %11, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = load i64, i64* %13, align 8
  %35 = call i32 @sof_ipc_tx_message_unlocked(%struct.snd_sof_ipc* %29, i32 %30, i8* %31, i64 %32, i8* %33, i64 %34)
  store i32 %35, i32* %14, align 4
  %36 = load %struct.snd_sof_ipc*, %struct.snd_sof_ipc** %8, align 8
  %37 = getelementptr inbounds %struct.snd_sof_ipc, %struct.snd_sof_ipc* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load i32, i32* %14, align 4
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %25, %22
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sof_ipc_tx_message_unlocked(%struct.snd_sof_ipc*, i32, i8*, i64, i8*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
