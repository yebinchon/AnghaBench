; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_timer.c_snd_seq_timer_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_timer.c_snd_seq_timer_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_queue = type { %struct.snd_seq_timer* }
%struct.snd_seq_timer = type { i32, %struct.snd_timer_instance* }
%struct.snd_timer_instance = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_seq_timer_close(%struct.snd_seq_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_seq_queue*, align 8
  %4 = alloca %struct.snd_seq_timer*, align 8
  %5 = alloca %struct.snd_timer_instance*, align 8
  store %struct.snd_seq_queue* %0, %struct.snd_seq_queue** %3, align 8
  %6 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %3, align 8
  %7 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %6, i32 0, i32 0
  %8 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %7, align 8
  store %struct.snd_seq_timer* %8, %struct.snd_seq_timer** %4, align 8
  %9 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %4, align 8
  %10 = icmp ne %struct.snd_seq_timer* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @snd_BUG_ON(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %36

18:                                               ; preds = %1
  %19 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %4, align 8
  %20 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %19, i32 0, i32 0
  %21 = call i32 @spin_lock_irq(i32* %20)
  %22 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %4, align 8
  %23 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %22, i32 0, i32 1
  %24 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %23, align 8
  store %struct.snd_timer_instance* %24, %struct.snd_timer_instance** %5, align 8
  %25 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %4, align 8
  %26 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %25, i32 0, i32 1
  store %struct.snd_timer_instance* null, %struct.snd_timer_instance** %26, align 8
  %27 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %4, align 8
  %28 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock_irq(i32* %28)
  %30 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %5, align 8
  %31 = icmp ne %struct.snd_timer_instance* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %18
  %33 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %5, align 8
  %34 = call i32 @snd_timer_close(%struct.snd_timer_instance* %33)
  br label %35

35:                                               ; preds = %32, %18
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %15
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @snd_timer_close(%struct.snd_timer_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
