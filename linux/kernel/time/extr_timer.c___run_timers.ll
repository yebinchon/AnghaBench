; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_timer.c___run_timers.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_timer.c___run_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_base = type { i32, i32, i32 }
%struct.hlist_head = type { i32 }

@LVL_DEPTH = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_base*)* @__run_timers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__run_timers(%struct.timer_base* %0) #0 {
  %2 = alloca %struct.timer_base*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.timer_base* %0, %struct.timer_base** %2, align 8
  %7 = load i32, i32* @LVL_DEPTH, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca %struct.hlist_head, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = load i32, i32* @jiffies, align 4
  %12 = load %struct.timer_base*, %struct.timer_base** %2, align 8
  %13 = getelementptr inbounds %struct.timer_base, %struct.timer_base* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @time_after_eq(i32 %11, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  br label %57

18:                                               ; preds = %1
  %19 = load %struct.timer_base*, %struct.timer_base** %2, align 8
  %20 = call i32 @timer_base_lock_expiry(%struct.timer_base* %19)
  %21 = load %struct.timer_base*, %struct.timer_base** %2, align 8
  %22 = getelementptr inbounds %struct.timer_base, %struct.timer_base* %21, i32 0, i32 1
  %23 = call i32 @raw_spin_lock_irq(i32* %22)
  %24 = load %struct.timer_base*, %struct.timer_base** %2, align 8
  %25 = getelementptr inbounds %struct.timer_base, %struct.timer_base* %24, i32 0, i32 0
  store i32 0, i32* %25, align 4
  br label %26

26:                                               ; preds = %50, %18
  %27 = load i32, i32* @jiffies, align 4
  %28 = load %struct.timer_base*, %struct.timer_base** %2, align 8
  %29 = getelementptr inbounds %struct.timer_base, %struct.timer_base* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @time_after_eq(i32 %27, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %26
  %34 = load %struct.timer_base*, %struct.timer_base** %2, align 8
  %35 = call i32 @collect_expired_timers(%struct.timer_base* %34, %struct.hlist_head* %10)
  store i32 %35, i32* %5, align 4
  %36 = load %struct.timer_base*, %struct.timer_base** %2, align 8
  %37 = getelementptr inbounds %struct.timer_base, %struct.timer_base* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %44, %33
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %5, align 4
  %43 = icmp ne i32 %41, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load %struct.timer_base*, %struct.timer_base** %2, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %10, i64 %47
  %49 = call i32 @expire_timers(%struct.timer_base* %45, %struct.hlist_head* %48)
  br label %40

50:                                               ; preds = %40
  br label %26

51:                                               ; preds = %26
  %52 = load %struct.timer_base*, %struct.timer_base** %2, align 8
  %53 = getelementptr inbounds %struct.timer_base, %struct.timer_base* %52, i32 0, i32 1
  %54 = call i32 @raw_spin_unlock_irq(i32* %53)
  %55 = load %struct.timer_base*, %struct.timer_base** %2, align 8
  %56 = call i32 @timer_base_unlock_expiry(%struct.timer_base* %55)
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %51, %17
  %58 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %58)
  %59 = load i32, i32* %6, align 4
  switch i32 %59, label %61 [
    i32 0, label %60
    i32 1, label %60
  ]

60:                                               ; preds = %57, %57
  ret void

61:                                               ; preds = %57
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @time_after_eq(i32, i32) #2

declare dso_local i32 @timer_base_lock_expiry(%struct.timer_base*) #2

declare dso_local i32 @raw_spin_lock_irq(i32*) #2

declare dso_local i32 @collect_expired_timers(%struct.timer_base*, %struct.hlist_head*) #2

declare dso_local i32 @expire_timers(%struct.timer_base*, %struct.hlist_head*) #2

declare dso_local i32 @raw_spin_unlock_irq(i32*) #2

declare dso_local i32 @timer_base_unlock_expiry(%struct.timer_base*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
