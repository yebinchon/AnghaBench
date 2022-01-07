; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_clientmgr.c_snd_seq_ioctl_remove_events.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_clientmgr.c_snd_seq_ioctl_remove_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_client = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.snd_seq_remove_events = type { i32 }

@SNDRV_SEQ_REMOVE_INPUT = common dso_local global i32 0, align 4
@USER_CLIENT = common dso_local global i64 0, align 8
@SNDRV_SEQ_REMOVE_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_seq_client*, i8*)* @snd_seq_ioctl_remove_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_seq_ioctl_remove_events(%struct.snd_seq_client* %0, i8* %1) #0 {
  %3 = alloca %struct.snd_seq_client*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.snd_seq_remove_events*, align 8
  store %struct.snd_seq_client* %0, %struct.snd_seq_client** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.snd_seq_remove_events*
  store %struct.snd_seq_remove_events* %7, %struct.snd_seq_remove_events** %5, align 8
  %8 = load %struct.snd_seq_remove_events*, %struct.snd_seq_remove_events** %5, align 8
  %9 = getelementptr inbounds %struct.snd_seq_remove_events, %struct.snd_seq_remove_events* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @SNDRV_SEQ_REMOVE_INPUT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %2
  %15 = load %struct.snd_seq_client*, %struct.snd_seq_client** %3, align 8
  %16 = getelementptr inbounds %struct.snd_seq_client, %struct.snd_seq_client* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @USER_CLIENT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %14
  %21 = load %struct.snd_seq_client*, %struct.snd_seq_client** %3, align 8
  %22 = getelementptr inbounds %struct.snd_seq_client, %struct.snd_seq_client* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load %struct.snd_seq_client*, %struct.snd_seq_client** %3, align 8
  %29 = getelementptr inbounds %struct.snd_seq_client, %struct.snd_seq_client* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @snd_seq_fifo_clear(i64 %32)
  br label %34

34:                                               ; preds = %27, %20, %14
  br label %35

35:                                               ; preds = %34, %2
  %36 = load %struct.snd_seq_remove_events*, %struct.snd_seq_remove_events** %5, align 8
  %37 = getelementptr inbounds %struct.snd_seq_remove_events, %struct.snd_seq_remove_events* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @SNDRV_SEQ_REMOVE_OUTPUT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load %struct.snd_seq_client*, %struct.snd_seq_client** %3, align 8
  %44 = getelementptr inbounds %struct.snd_seq_client, %struct.snd_seq_client* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.snd_seq_remove_events*, %struct.snd_seq_remove_events** %5, align 8
  %47 = call i32 @snd_seq_queue_remove_cells(i32 %45, %struct.snd_seq_remove_events* %46)
  br label %48

48:                                               ; preds = %42, %35
  ret i32 0
}

declare dso_local i32 @snd_seq_fifo_clear(i64) #1

declare dso_local i32 @snd_seq_queue_remove_cells(i32, %struct.snd_seq_remove_events*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
