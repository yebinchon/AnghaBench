; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_memory.c_free_cell.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_memory.c_free_cell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_pool = type { i32, %struct.snd_seq_event_cell* }
%struct.snd_seq_event_cell = type { %struct.snd_seq_event_cell* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_seq_pool*, %struct.snd_seq_event_cell*)* @free_cell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_cell(%struct.snd_seq_pool* %0, %struct.snd_seq_event_cell* %1) #0 {
  %3 = alloca %struct.snd_seq_pool*, align 8
  %4 = alloca %struct.snd_seq_event_cell*, align 8
  store %struct.snd_seq_pool* %0, %struct.snd_seq_pool** %3, align 8
  store %struct.snd_seq_event_cell* %1, %struct.snd_seq_event_cell** %4, align 8
  %5 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %3, align 8
  %6 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %5, i32 0, i32 1
  %7 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %6, align 8
  %8 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %4, align 8
  %9 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %8, i32 0, i32 0
  store %struct.snd_seq_event_cell* %7, %struct.snd_seq_event_cell** %9, align 8
  %10 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %4, align 8
  %11 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %3, align 8
  %12 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %11, i32 0, i32 1
  store %struct.snd_seq_event_cell* %10, %struct.snd_seq_event_cell** %12, align 8
  %13 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %3, align 8
  %14 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %13, i32 0, i32 0
  %15 = call i32 @atomic_dec(i32* %14)
  ret void
}

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
