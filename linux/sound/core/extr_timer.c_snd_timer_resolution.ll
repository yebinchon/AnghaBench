; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_timer.c_snd_timer_resolution.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_timer.c_snd_timer_resolution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_timer_instance = type { %struct.snd_timer* }
%struct.snd_timer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @snd_timer_resolution(%struct.snd_timer_instance* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.snd_timer_instance*, align 8
  %4 = alloca %struct.snd_timer*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.snd_timer_instance* %0, %struct.snd_timer_instance** %3, align 8
  store i64 0, i64* %5, align 8
  %7 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %3, align 8
  %8 = icmp eq %struct.snd_timer_instance* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %29

10:                                               ; preds = %1
  %11 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %3, align 8
  %12 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %11, i32 0, i32 0
  %13 = load %struct.snd_timer*, %struct.snd_timer** %12, align 8
  store %struct.snd_timer* %13, %struct.snd_timer** %4, align 8
  %14 = load %struct.snd_timer*, %struct.snd_timer** %4, align 8
  %15 = icmp ne %struct.snd_timer* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %10
  %17 = load %struct.snd_timer*, %struct.snd_timer** %4, align 8
  %18 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %17, i32 0, i32 0
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.snd_timer*, %struct.snd_timer** %4, align 8
  %22 = call i64 @snd_timer_hw_resolution(%struct.snd_timer* %21)
  store i64 %22, i64* %5, align 8
  %23 = load %struct.snd_timer*, %struct.snd_timer** %4, align 8
  %24 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %23, i32 0, i32 0
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  br label %27

27:                                               ; preds = %16, %10
  %28 = load i64, i64* %5, align 8
  store i64 %28, i64* %2, align 8
  br label %29

29:                                               ; preds = %27, %9
  %30 = load i64, i64* %2, align 8
  ret i64 %30
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @snd_timer_hw_resolution(%struct.snd_timer*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
