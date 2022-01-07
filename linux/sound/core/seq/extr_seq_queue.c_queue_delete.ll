; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_queue.c_queue_delete.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_queue.c_queue_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_queue = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_seq_queue*)* @queue_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @queue_delete(%struct.snd_seq_queue* %0) #0 {
  %2 = alloca %struct.snd_seq_queue*, align 8
  store %struct.snd_seq_queue* %0, %struct.snd_seq_queue** %2, align 8
  %3 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %2, align 8
  %4 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %3, i32 0, i32 4
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %2, align 8
  %7 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @snd_seq_timer_stop(i32 %8)
  %10 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %2, align 8
  %11 = call i32 @snd_seq_timer_close(%struct.snd_seq_queue* %10)
  %12 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %2, align 8
  %13 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %12, i32 0, i32 4
  %14 = call i32 @mutex_unlock(i32* %13)
  %15 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %2, align 8
  %16 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %15, i32 0, i32 3
  %17 = call i32 @snd_use_lock_sync(i32* %16)
  %18 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %2, align 8
  %19 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %18, i32 0, i32 2
  %20 = call i32 @snd_seq_prioq_delete(i32* %19)
  %21 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %2, align 8
  %22 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %21, i32 0, i32 1
  %23 = call i32 @snd_seq_prioq_delete(i32* %22)
  %24 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %2, align 8
  %25 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %24, i32 0, i32 0
  %26 = call i32 @snd_seq_timer_delete(i32* %25)
  %27 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %2, align 8
  %28 = call i32 @kfree(%struct.snd_seq_queue* %27)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_seq_timer_stop(i32) #1

declare dso_local i32 @snd_seq_timer_close(%struct.snd_seq_queue*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snd_use_lock_sync(i32*) #1

declare dso_local i32 @snd_seq_prioq_delete(i32*) #1

declare dso_local i32 @snd_seq_timer_delete(i32*) #1

declare dso_local i32 @kfree(%struct.snd_seq_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
