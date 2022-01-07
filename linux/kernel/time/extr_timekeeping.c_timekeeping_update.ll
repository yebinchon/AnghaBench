; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_timekeeping_update.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_timekeeping_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.timekeeper = type { i32, %struct.TYPE_3__, %struct.TYPE_3__, i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }

@TK_CLEAR_NTP = common dso_local global i32 0, align 4
@TK_CLOCK_WAS_SET = common dso_local global i32 0, align 4
@tk_fast_mono = common dso_local global i32 0, align 4
@tk_fast_raw = common dso_local global i32 0, align 4
@TK_MIRROR = common dso_local global i32 0, align 4
@shadow_timekeeper = common dso_local global i32 0, align 4
@tk_core = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timekeeper*, i32)* @timekeeping_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timekeeping_update(%struct.timekeeper* %0, i32 %1) #0 {
  %3 = alloca %struct.timekeeper*, align 8
  %4 = alloca i32, align 4
  store %struct.timekeeper* %0, %struct.timekeeper** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @TK_CLEAR_NTP, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %11 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %10, i32 0, i32 4
  store i64 0, i64* %11, align 8
  %12 = call i32 (...) @ntp_clear()
  br label %13

13:                                               ; preds = %9, %2
  %14 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %15 = call i32 @tk_update_leap_state(%struct.timekeeper* %14)
  %16 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %17 = call i32 @tk_update_ktime_data(%struct.timekeeper* %16)
  %18 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %19 = call i32 @update_vsyscall(%struct.timekeeper* %18)
  %20 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @TK_CLOCK_WAS_SET, align 4
  %23 = and i32 %21, %22
  %24 = call i32 @update_pvclock_gtod(%struct.timekeeper* %20, i32 %23)
  %25 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %26 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %30 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %34 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i64 %32, i64* %35, align 8
  %36 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %37 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %36, i32 0, i32 2
  %38 = call i32 @update_fast_timekeeper(%struct.TYPE_3__* %37, i32* @tk_fast_mono)
  %39 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %40 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %39, i32 0, i32 1
  %41 = call i32 @update_fast_timekeeper(%struct.TYPE_3__* %40, i32* @tk_fast_raw)
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @TK_CLOCK_WAS_SET, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %13
  %47 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %48 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %46, %13
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @TK_MIRROR, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = call i32 @memcpy(i32* @shadow_timekeeper, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tk_core, i32 0, i32 0), i32 4)
  br label %58

58:                                               ; preds = %56, %51
  ret void
}

declare dso_local i32 @ntp_clear(...) #1

declare dso_local i32 @tk_update_leap_state(%struct.timekeeper*) #1

declare dso_local i32 @tk_update_ktime_data(%struct.timekeeper*) #1

declare dso_local i32 @update_vsyscall(%struct.timekeeper*) #1

declare dso_local i32 @update_pvclock_gtod(%struct.timekeeper*, i32) #1

declare dso_local i32 @update_fast_timekeeper(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
