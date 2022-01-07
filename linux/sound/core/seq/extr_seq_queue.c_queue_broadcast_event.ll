; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_queue.c_queue_broadcast_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_queue.c_queue_broadcast_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_queue = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.snd_seq_event = type { i32, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, i32, %struct.TYPE_8__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@SNDRV_SEQ_TIME_STAMP_TICK = common dso_local global i32 0, align 4
@SNDRV_SEQ_TIME_MODE_ABS = common dso_local global i32 0, align 4
@SNDRV_SEQ_CLIENT_SYSTEM = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_SYSTEM_TIMER = common dso_local global i32 0, align 4
@SNDRV_SEQ_ADDRESS_SUBSCRIBERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_seq_queue*, %struct.snd_seq_event*, i32, i32)* @queue_broadcast_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @queue_broadcast_event(%struct.snd_seq_queue* %0, %struct.snd_seq_event* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_seq_queue*, align 8
  %6 = alloca %struct.snd_seq_event*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_seq_event, align 4
  store %struct.snd_seq_queue* %0, %struct.snd_seq_queue** %5, align 8
  store %struct.snd_seq_event* %1, %struct.snd_seq_event** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.snd_seq_event*, %struct.snd_seq_event** %6, align 8
  %11 = bitcast %struct.snd_seq_event* %9 to i8*
  %12 = bitcast %struct.snd_seq_event* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 28, i1 false)
  %13 = load i32, i32* @SNDRV_SEQ_TIME_STAMP_TICK, align 4
  %14 = load i32, i32* @SNDRV_SEQ_TIME_MODE_ABS, align 4
  %15 = or i32 %13, %14
  %16 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %9, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %5, align 8
  %18 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %17, i32 0, i32 1
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %9, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %5, align 8
  %26 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %9, i32 0, i32 4
  store i32 %27, i32* %28, align 4
  %29 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %5, align 8
  %30 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %9, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @SNDRV_SEQ_CLIENT_SYSTEM, align 4
  %36 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %9, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @SNDRV_SEQ_PORT_SYSTEM_TIMER, align 4
  %39 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %9, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @SNDRV_SEQ_ADDRESS_SUBSCRIBERS, align 4
  %42 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %9, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @SNDRV_SEQ_CLIENT_SYSTEM, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @snd_seq_kernel_client_dispatch(i32 %44, %struct.snd_seq_event* %9, i32 %45, i32 %46)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @snd_seq_kernel_client_dispatch(i32, %struct.snd_seq_event*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
