; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_posix-timers.c_do_timer_gettime.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_posix-timers.c_do_timer_gettime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.itimerspec64 = type { i32 }
%struct.k_itimer = type { %struct.k_clock* }
%struct.k_clock = type { i32 (%struct.k_itimer*, %struct.itimerspec64.0*)* }
%struct.itimerspec64.0 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.itimerspec64*)* @do_timer_gettime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_timer_gettime(i32 %0, %struct.itimerspec64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.itimerspec64*, align 8
  %6 = alloca %struct.k_itimer*, align 8
  %7 = alloca %struct.k_clock*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.itimerspec64* %1, %struct.itimerspec64** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.k_itimer* @lock_timer(i32 %10, i64* %8)
  store %struct.k_itimer* %11, %struct.k_itimer** %6, align 8
  %12 = load %struct.k_itimer*, %struct.k_itimer** %6, align 8
  %13 = icmp ne %struct.k_itimer* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %52

17:                                               ; preds = %2
  %18 = load %struct.itimerspec64*, %struct.itimerspec64** %5, align 8
  %19 = call i32 @memset(%struct.itimerspec64* %18, i32 0, i32 4)
  %20 = load %struct.k_itimer*, %struct.k_itimer** %6, align 8
  %21 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %20, i32 0, i32 0
  %22 = load %struct.k_clock*, %struct.k_clock** %21, align 8
  store %struct.k_clock* %22, %struct.k_clock** %7, align 8
  %23 = load %struct.k_clock*, %struct.k_clock** %7, align 8
  %24 = icmp ne %struct.k_clock* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %17
  %26 = load %struct.k_clock*, %struct.k_clock** %7, align 8
  %27 = getelementptr inbounds %struct.k_clock, %struct.k_clock* %26, i32 0, i32 0
  %28 = load i32 (%struct.k_itimer*, %struct.itimerspec64.0*)*, i32 (%struct.k_itimer*, %struct.itimerspec64.0*)** %27, align 8
  %29 = icmp ne i32 (%struct.k_itimer*, %struct.itimerspec64.0*)* %28, null
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %25, %17
  %32 = phi i1 [ true, %17 ], [ %30, %25 ]
  %33 = zext i1 %32 to i32
  %34 = call i64 @WARN_ON_ONCE(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %9, align 4
  br label %47

39:                                               ; preds = %31
  %40 = load %struct.k_clock*, %struct.k_clock** %7, align 8
  %41 = getelementptr inbounds %struct.k_clock, %struct.k_clock* %40, i32 0, i32 0
  %42 = load i32 (%struct.k_itimer*, %struct.itimerspec64.0*)*, i32 (%struct.k_itimer*, %struct.itimerspec64.0*)** %41, align 8
  %43 = load %struct.k_itimer*, %struct.k_itimer** %6, align 8
  %44 = load %struct.itimerspec64*, %struct.itimerspec64** %5, align 8
  %45 = bitcast %struct.itimerspec64* %44 to %struct.itimerspec64.0*
  %46 = call i32 %42(%struct.k_itimer* %43, %struct.itimerspec64.0* %45)
  br label %47

47:                                               ; preds = %39, %36
  %48 = load %struct.k_itimer*, %struct.k_itimer** %6, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @unlock_timer(%struct.k_itimer* %48, i64 %49)
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %47, %14
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.k_itimer* @lock_timer(i32, i64*) #1

declare dso_local i32 @memset(%struct.itimerspec64*, i32, i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @unlock_timer(%struct.k_itimer*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
