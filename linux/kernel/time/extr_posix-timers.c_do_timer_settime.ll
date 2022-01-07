; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_posix-timers.c_do_timer_settime.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_posix-timers.c_do_timer_settime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.itimerspec64 = type { i32, i32 }
%struct.k_clock = type { i32 (%struct.k_itimer*, i32, %struct.itimerspec64.0*, %struct.itimerspec64.0*)* }
%struct.k_itimer = type { %struct.k_clock* }
%struct.itimerspec64.0 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@TIMER_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.itimerspec64*, %struct.itimerspec64*)* @do_timer_settime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_timer_settime(i32 %0, i32 %1, %struct.itimerspec64* %2, %struct.itimerspec64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.itimerspec64*, align 8
  %9 = alloca %struct.itimerspec64*, align 8
  %10 = alloca %struct.k_clock*, align 8
  %11 = alloca %struct.k_itimer*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.itimerspec64* %2, %struct.itimerspec64** %8, align 8
  store %struct.itimerspec64* %3, %struct.itimerspec64** %9, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.itimerspec64*, %struct.itimerspec64** %8, align 8
  %15 = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %14, i32 0, i32 1
  %16 = call i32 @timespec64_valid(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = load %struct.itimerspec64*, %struct.itimerspec64** %8, align 8
  %20 = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %19, i32 0, i32 0
  %21 = call i32 @timespec64_valid(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18, %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %84

26:                                               ; preds = %18
  %27 = load %struct.itimerspec64*, %struct.itimerspec64** %9, align 8
  %28 = icmp ne %struct.itimerspec64* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load %struct.itimerspec64*, %struct.itimerspec64** %9, align 8
  %31 = call i32 @memset(%struct.itimerspec64* %30, i32 0, i32 8)
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32, i32* %6, align 4
  %34 = call %struct.k_itimer* @lock_timer(i32 %33, i64* %12)
  store %struct.k_itimer* %34, %struct.k_itimer** %11, align 8
  br label %35

35:                                               ; preds = %76, %32
  %36 = load %struct.k_itimer*, %struct.k_itimer** %11, align 8
  %37 = icmp ne %struct.k_itimer* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %84

41:                                               ; preds = %35
  %42 = load %struct.k_itimer*, %struct.k_itimer** %11, align 8
  %43 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %42, i32 0, i32 0
  %44 = load %struct.k_clock*, %struct.k_clock** %43, align 8
  store %struct.k_clock* %44, %struct.k_clock** %10, align 8
  %45 = load %struct.k_clock*, %struct.k_clock** %10, align 8
  %46 = icmp ne %struct.k_clock* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load %struct.k_clock*, %struct.k_clock** %10, align 8
  %49 = getelementptr inbounds %struct.k_clock, %struct.k_clock* %48, i32 0, i32 0
  %50 = load i32 (%struct.k_itimer*, i32, %struct.itimerspec64.0*, %struct.itimerspec64.0*)*, i32 (%struct.k_itimer*, i32, %struct.itimerspec64.0*, %struct.itimerspec64.0*)** %49, align 8
  %51 = icmp ne i32 (%struct.k_itimer*, i32, %struct.itimerspec64.0*, %struct.itimerspec64.0*)* %50, null
  %52 = xor i1 %51, true
  br label %53

53:                                               ; preds = %47, %41
  %54 = phi i1 [ true, %41 ], [ %52, %47 ]
  %55 = zext i1 %54 to i32
  %56 = call i64 @WARN_ON_ONCE(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %13, align 4
  br label %72

61:                                               ; preds = %53
  %62 = load %struct.k_clock*, %struct.k_clock** %10, align 8
  %63 = getelementptr inbounds %struct.k_clock, %struct.k_clock* %62, i32 0, i32 0
  %64 = load i32 (%struct.k_itimer*, i32, %struct.itimerspec64.0*, %struct.itimerspec64.0*)*, i32 (%struct.k_itimer*, i32, %struct.itimerspec64.0*, %struct.itimerspec64.0*)** %63, align 8
  %65 = load %struct.k_itimer*, %struct.k_itimer** %11, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.itimerspec64*, %struct.itimerspec64** %8, align 8
  %68 = bitcast %struct.itimerspec64* %67 to %struct.itimerspec64.0*
  %69 = load %struct.itimerspec64*, %struct.itimerspec64** %9, align 8
  %70 = bitcast %struct.itimerspec64* %69 to %struct.itimerspec64.0*
  %71 = call i32 %64(%struct.k_itimer* %65, i32 %66, %struct.itimerspec64.0* %68, %struct.itimerspec64.0* %70)
  store i32 %71, i32* %13, align 4
  br label %72

72:                                               ; preds = %61, %58
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* @TIMER_RETRY, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  store %struct.itimerspec64* null, %struct.itimerspec64** %9, align 8
  %77 = load %struct.k_itimer*, %struct.k_itimer** %11, align 8
  %78 = call %struct.k_itimer* @timer_wait_running(%struct.k_itimer* %77, i64* %12)
  store %struct.k_itimer* %78, %struct.k_itimer** %11, align 8
  br label %35

79:                                               ; preds = %72
  %80 = load %struct.k_itimer*, %struct.k_itimer** %11, align 8
  %81 = load i64, i64* %12, align 8
  %82 = call i32 @unlock_timer(%struct.k_itimer* %80, i64 %81)
  %83 = load i32, i32* %13, align 4
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %79, %38, %23
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @timespec64_valid(i32*) #1

declare dso_local i32 @memset(%struct.itimerspec64*, i32, i32) #1

declare dso_local %struct.k_itimer* @lock_timer(i32, i64*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.k_itimer* @timer_wait_running(%struct.k_itimer*, i64*) #1

declare dso_local i32 @unlock_timer(%struct.k_itimer*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
