; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_timer.c_snd_timer_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_timer.c_snd_timer_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_timer = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @snd_timer_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_timer_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.snd_timer*, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.snd_timer*
  store %struct.snd_timer* %6, %struct.snd_timer** %3, align 8
  %7 = load %struct.snd_timer*, %struct.snd_timer** %3, align 8
  %8 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load %struct.snd_timer*, %struct.snd_timer** %3, align 8
  %13 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %11
  %19 = load %struct.snd_timer*, %struct.snd_timer** %3, align 8
  %20 = load %struct.snd_timer*, %struct.snd_timer** %3, align 8
  %21 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %20, i32 0, i32 1
  %22 = call i32 @snd_timer_clear_callbacks(%struct.snd_timer* %19, i32* %21)
  br label %36

23:                                               ; preds = %11, %1
  %24 = load %struct.snd_timer*, %struct.snd_timer** %3, align 8
  %25 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %24, i32 0, i32 0
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.snd_timer*, %struct.snd_timer** %3, align 8
  %29 = load %struct.snd_timer*, %struct.snd_timer** %3, align 8
  %30 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %29, i32 0, i32 1
  %31 = call i32 @snd_timer_process_callbacks(%struct.snd_timer* %28, i32* %30)
  %32 = load %struct.snd_timer*, %struct.snd_timer** %3, align 8
  %33 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %32, i32 0, i32 0
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  br label %36

36:                                               ; preds = %23, %18
  ret void
}

declare dso_local i32 @snd_timer_clear_callbacks(%struct.snd_timer*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_timer_process_callbacks(%struct.snd_timer*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
