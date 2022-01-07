; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_timer.h_snd_seq_timer_update_tick.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_timer.h_snd_seq_timer_update_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_timer_tick = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_seq_timer_tick*, i64)* @snd_seq_timer_update_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_seq_timer_update_tick(%struct.snd_seq_timer_tick* %0, i64 %1) #0 {
  %3 = alloca %struct.snd_seq_timer_tick*, align 8
  %4 = alloca i64, align 8
  store %struct.snd_seq_timer_tick* %0, %struct.snd_seq_timer_tick** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.snd_seq_timer_tick*, %struct.snd_seq_timer_tick** %3, align 8
  %6 = getelementptr inbounds %struct.snd_seq_timer_tick, %struct.snd_seq_timer_tick* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = load %struct.snd_seq_timer_tick*, %struct.snd_seq_timer_tick** %3, align 8
  %12 = getelementptr inbounds %struct.snd_seq_timer_tick, %struct.snd_seq_timer_tick* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, %10
  store i64 %14, i64* %12, align 8
  %15 = load %struct.snd_seq_timer_tick*, %struct.snd_seq_timer_tick** %3, align 8
  %16 = getelementptr inbounds %struct.snd_seq_timer_tick, %struct.snd_seq_timer_tick* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.snd_seq_timer_tick*, %struct.snd_seq_timer_tick** %3, align 8
  %19 = getelementptr inbounds %struct.snd_seq_timer_tick, %struct.snd_seq_timer_tick* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = udiv i64 %17, %21
  %23 = trunc i64 %22 to i32
  %24 = load %struct.snd_seq_timer_tick*, %struct.snd_seq_timer_tick** %3, align 8
  %25 = getelementptr inbounds %struct.snd_seq_timer_tick, %struct.snd_seq_timer_tick* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = add i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load %struct.snd_seq_timer_tick*, %struct.snd_seq_timer_tick** %3, align 8
  %29 = getelementptr inbounds %struct.snd_seq_timer_tick, %struct.snd_seq_timer_tick* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = load %struct.snd_seq_timer_tick*, %struct.snd_seq_timer_tick** %3, align 8
  %33 = getelementptr inbounds %struct.snd_seq_timer_tick, %struct.snd_seq_timer_tick* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = urem i64 %34, %31
  store i64 %35, i64* %33, align 8
  br label %36

36:                                               ; preds = %9, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
