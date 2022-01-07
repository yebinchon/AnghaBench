; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_posix-timers.c_itimer_delete.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_posix-timers.c_itimer_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.k_itimer = type { i32, i32 }

@TIMER_RETRY = common dso_local global i64 0, align 8
@IT_ID_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.k_itimer*)* @itimer_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @itimer_delete(%struct.k_itimer* %0) #0 {
  %2 = alloca %struct.k_itimer*, align 8
  store %struct.k_itimer* %0, %struct.k_itimer** %2, align 8
  br label %3

3:                                                ; preds = %11, %1
  %4 = load %struct.k_itimer*, %struct.k_itimer** %2, align 8
  %5 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %4, i32 0, i32 0
  %6 = call i32 @spin_lock_irq(i32* %5)
  %7 = load %struct.k_itimer*, %struct.k_itimer** %2, align 8
  %8 = call i64 @timer_delete_hook(%struct.k_itimer* %7)
  %9 = load i64, i64* @TIMER_RETRY, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load %struct.k_itimer*, %struct.k_itimer** %2, align 8
  %13 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %12, i32 0, i32 0
  %14 = call i32 @spin_unlock_irq(i32* %13)
  br label %3

15:                                               ; preds = %3
  %16 = load %struct.k_itimer*, %struct.k_itimer** %2, align 8
  %17 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %16, i32 0, i32 1
  %18 = call i32 @list_del(i32* %17)
  %19 = load %struct.k_itimer*, %struct.k_itimer** %2, align 8
  %20 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %19, i32 0, i32 0
  %21 = call i32 @spin_unlock_irq(i32* %20)
  %22 = load %struct.k_itimer*, %struct.k_itimer** %2, align 8
  %23 = load i32, i32* @IT_ID_SET, align 4
  %24 = call i32 @release_posix_timer(%struct.k_itimer* %22, i32 %23)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @timer_delete_hook(%struct.k_itimer*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @release_posix_timer(%struct.k_itimer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
