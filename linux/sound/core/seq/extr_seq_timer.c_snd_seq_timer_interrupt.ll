; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_timer.c_snd_seq_timer_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_timer.c_snd_seq_timer_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_timer_instance = type { %struct.snd_seq_queue* }
%struct.snd_seq_queue = type { %struct.snd_seq_timer* }
%struct.snd_seq_timer = type { i64, i64, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_timer_instance*, i64, i64)* @snd_seq_timer_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_seq_timer_interrupt(%struct.snd_timer_instance* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.snd_timer_instance*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.snd_seq_queue*, align 8
  %9 = alloca %struct.snd_seq_timer*, align 8
  store %struct.snd_timer_instance* %0, %struct.snd_timer_instance** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %4, align 8
  %11 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %10, i32 0, i32 0
  %12 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %11, align 8
  store %struct.snd_seq_queue* %12, %struct.snd_seq_queue** %8, align 8
  %13 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %8, align 8
  %14 = icmp eq %struct.snd_seq_queue* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %81

16:                                               ; preds = %3
  %17 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %8, align 8
  %18 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %17, i32 0, i32 0
  %19 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %18, align 8
  store %struct.snd_seq_timer* %19, %struct.snd_seq_timer** %9, align 8
  %20 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %9, align 8
  %21 = icmp eq %struct.snd_seq_timer* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %81

23:                                               ; preds = %16
  %24 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %9, align 8
  %25 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %24, i32 0, i32 2
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %9, align 8
  %29 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %23
  %33 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %9, align 8
  %34 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %33, i32 0, i32 2
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  br label %81

37:                                               ; preds = %23
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %5, align 8
  %40 = mul i64 %39, %38
  store i64 %40, i64* %5, align 8
  %41 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %9, align 8
  %42 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %9, align 8
  %45 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %43, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %37
  %49 = load i64, i64* %5, align 8
  %50 = lshr i64 %49, 16
  %51 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %9, align 8
  %52 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = mul i64 %50, %53
  %55 = load i64, i64* %5, align 8
  %56 = and i64 %55, 65535
  %57 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %9, align 8
  %58 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = mul i64 %56, %59
  %61 = lshr i64 %60, 16
  %62 = add i64 %54, %61
  store i64 %62, i64* %5, align 8
  br label %63

63:                                               ; preds = %48, %37
  %64 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %9, align 8
  %65 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %64, i32 0, i32 5
  %66 = load i64, i64* %5, align 8
  %67 = call i32 @snd_seq_inc_time_nsec(i32* %65, i64 %66)
  %68 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %9, align 8
  %69 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %68, i32 0, i32 4
  %70 = load i64, i64* %5, align 8
  %71 = call i32 @snd_seq_timer_update_tick(i32* %69, i64 %70)
  %72 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %9, align 8
  %73 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %72, i32 0, i32 3
  %74 = call i32 @ktime_get_ts64(i32* %73)
  %75 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %9, align 8
  %76 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %75, i32 0, i32 2
  %77 = load i64, i64* %7, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  %79 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %8, align 8
  %80 = call i32 @snd_seq_check_queue(%struct.snd_seq_queue* %79, i32 1, i32 0)
  br label %81

81:                                               ; preds = %63, %32, %22, %15
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_seq_inc_time_nsec(i32*, i64) #1

declare dso_local i32 @snd_seq_timer_update_tick(i32*, i64) #1

declare dso_local i32 @ktime_get_ts64(i32*) #1

declare dso_local i32 @snd_seq_check_queue(%struct.snd_seq_queue*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
