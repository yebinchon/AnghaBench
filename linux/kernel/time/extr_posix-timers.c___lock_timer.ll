; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_posix-timers.c___lock_timer.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_posix-timers.c___lock_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.k_itimer = type { i64, i32 }

@INT_MAX = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.k_itimer* (i64, i64*)* @__lock_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.k_itimer* @__lock_timer(i64 %0, i64* %1) #0 {
  %3 = alloca %struct.k_itimer*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.k_itimer*, align 8
  store i64 %0, i64* %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @INT_MAX, align 8
  %9 = icmp ugt i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.k_itimer* null, %struct.k_itimer** %3, align 8
  br label %41

11:                                               ; preds = %2
  %12 = call i32 (...) @rcu_read_lock()
  %13 = load i64, i64* %4, align 8
  %14 = call %struct.k_itimer* @posix_timer_by_id(i64 %13)
  store %struct.k_itimer* %14, %struct.k_itimer** %6, align 8
  %15 = load %struct.k_itimer*, %struct.k_itimer** %6, align 8
  %16 = icmp ne %struct.k_itimer* %15, null
  br i1 %16, label %17, label %39

17:                                               ; preds = %11
  %18 = load %struct.k_itimer*, %struct.k_itimer** %6, align 8
  %19 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %18, i32 0, i32 1
  %20 = load i64*, i64** %5, align 8
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %19, i64 %21)
  %23 = load %struct.k_itimer*, %struct.k_itimer** %6, align 8
  %24 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %17
  %31 = call i32 (...) @rcu_read_unlock()
  %32 = load %struct.k_itimer*, %struct.k_itimer** %6, align 8
  store %struct.k_itimer* %32, %struct.k_itimer** %3, align 8
  br label %41

33:                                               ; preds = %17
  %34 = load %struct.k_itimer*, %struct.k_itimer** %6, align 8
  %35 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %34, i32 0, i32 1
  %36 = load i64*, i64** %5, align 8
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %37)
  br label %39

39:                                               ; preds = %33, %11
  %40 = call i32 (...) @rcu_read_unlock()
  store %struct.k_itimer* null, %struct.k_itimer** %3, align 8
  br label %41

41:                                               ; preds = %39, %30, %10
  %42 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  ret %struct.k_itimer* %42
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.k_itimer* @posix_timer_by_id(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
