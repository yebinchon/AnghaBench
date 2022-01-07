; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_posix-timers.c_posixtimer_rearm.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_posix-timers.c_posixtimer_rearm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_siginfo = type { i64, i32, i32 }
%struct.k_itimer = type { i64, i32, i64, i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (%struct.k_itimer*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @posixtimer_rearm(%struct.kernel_siginfo* %0) #0 {
  %2 = alloca %struct.kernel_siginfo*, align 8
  %3 = alloca %struct.k_itimer*, align 8
  %4 = alloca i64, align 8
  store %struct.kernel_siginfo* %0, %struct.kernel_siginfo** %2, align 8
  %5 = load %struct.kernel_siginfo*, %struct.kernel_siginfo** %2, align 8
  %6 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.k_itimer* @lock_timer(i32 %7, i64* %4)
  store %struct.k_itimer* %8, %struct.k_itimer** %3, align 8
  %9 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %10 = icmp ne %struct.k_itimer* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %57

12:                                               ; preds = %1
  %13 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %14 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %53

17:                                               ; preds = %12
  %18 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %19 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.kernel_siginfo*, %struct.kernel_siginfo** %2, align 8
  %22 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %53

25:                                               ; preds = %17
  %26 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %27 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %26, i32 0, i32 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.k_itimer*)*, i32 (%struct.k_itimer*)** %29, align 8
  %31 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %32 = call i32 %30(%struct.k_itimer* %31)
  %33 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %34 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %33, i32 0, i32 1
  store i32 1, i32* %34, align 8
  %35 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %36 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %39 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %38, i32 0, i32 2
  store i64 %37, i64* %39, align 8
  %40 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %41 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %40, i32 0, i32 3
  store i64 -1, i64* %41, align 8
  %42 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %43 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %43, align 8
  %46 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %47 = load %struct.kernel_siginfo*, %struct.kernel_siginfo** %2, align 8
  %48 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @timer_overrun_to_int(%struct.k_itimer* %46, i32 %49)
  %51 = load %struct.kernel_siginfo*, %struct.kernel_siginfo** %2, align 8
  %52 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  br label %53

53:                                               ; preds = %25, %17, %12
  %54 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %55 = load i64, i64* %4, align 8
  %56 = call i32 @unlock_timer(%struct.k_itimer* %54, i64 %55)
  br label %57

57:                                               ; preds = %53, %11
  ret void
}

declare dso_local %struct.k_itimer* @lock_timer(i32, i64*) #1

declare dso_local i32 @timer_overrun_to_int(%struct.k_itimer*, i32) #1

declare dso_local i32 @unlock_timer(%struct.k_itimer*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
