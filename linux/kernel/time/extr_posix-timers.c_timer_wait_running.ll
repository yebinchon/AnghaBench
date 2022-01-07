; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_posix-timers.c_timer_wait_running.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_posix-timers.c_timer_wait_running.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.k_itimer = type { i32, i32 }
%struct.k_clock = type { i32 (%struct.k_itimer*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.k_itimer* (%struct.k_itimer*, i64*)* @timer_wait_running to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.k_itimer* @timer_wait_running(%struct.k_itimer* %0, i64* %1) #0 {
  %3 = alloca %struct.k_itimer*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.k_clock*, align 8
  %6 = alloca i8*, align 8
  store %struct.k_itimer* %0, %struct.k_itimer** %3, align 8
  store i64* %1, i64** %4, align 8
  %7 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %8 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i8* @READ_ONCE(i32 %9)
  %11 = bitcast i8* %10 to %struct.k_clock*
  store %struct.k_clock* %11, %struct.k_clock** %5, align 8
  %12 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %13 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @READ_ONCE(i32 %14)
  store i8* %15, i8** %6, align 8
  %16 = call i32 (...) @rcu_read_lock()
  %17 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %18 = load i64*, i64** %4, align 8
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @unlock_timer(%struct.k_itimer* %17, i64 %19)
  %21 = load %struct.k_clock*, %struct.k_clock** %5, align 8
  %22 = getelementptr inbounds %struct.k_clock, %struct.k_clock* %21, i32 0, i32 0
  %23 = load i32 (%struct.k_itimer*)*, i32 (%struct.k_itimer*)** %22, align 8
  %24 = icmp ne i32 (%struct.k_itimer*)* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @WARN_ON_ONCE(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %2
  %30 = load %struct.k_clock*, %struct.k_clock** %5, align 8
  %31 = getelementptr inbounds %struct.k_clock, %struct.k_clock* %30, i32 0, i32 0
  %32 = load i32 (%struct.k_itimer*)*, i32 (%struct.k_itimer*)** %31, align 8
  %33 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %34 = call i32 %32(%struct.k_itimer* %33)
  br label %35

35:                                               ; preds = %29, %2
  %36 = call i32 (...) @rcu_read_unlock()
  %37 = load i8*, i8** %6, align 8
  %38 = load i64*, i64** %4, align 8
  %39 = call %struct.k_itimer* @lock_timer(i8* %37, i64* %38)
  ret %struct.k_itimer* %39
}

declare dso_local i8* @READ_ONCE(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @unlock_timer(%struct.k_itimer*, i64) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.k_itimer* @lock_timer(i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
