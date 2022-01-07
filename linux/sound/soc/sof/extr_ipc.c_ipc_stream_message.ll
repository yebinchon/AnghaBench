; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_ipc.c_ipc_stream_message.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_ipc.c_ipc_stream_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32 }

@SOF_CMD_TYPE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"error: unhandled stream message %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_sof_dev*, i32)* @ipc_stream_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipc_stream_message(%struct.snd_sof_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_sof_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @SOF_CMD_TYPE_MASK, align 4
  %9 = and i32 %7, %8
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @SOF_IPC_MESSAGE_ID(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %21 [
    i32 129, label %13
    i32 128, label %17
  ]

13:                                               ; preds = %2
  %14 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @ipc_period_elapsed(%struct.snd_sof_dev* %14, i32 %15)
  br label %27

17:                                               ; preds = %2
  %18 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @ipc_xrun(%struct.snd_sof_dev* %18, i32 %19)
  br label %27

21:                                               ; preds = %2
  %22 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %23 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %21, %17, %13
  ret void
}

declare dso_local i32 @SOF_IPC_MESSAGE_ID(i32) #1

declare dso_local i32 @ipc_period_elapsed(%struct.snd_sof_dev*, i32) #1

declare dso_local i32 @ipc_xrun(%struct.snd_sof_dev*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
