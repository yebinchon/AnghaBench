; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_posix-timers.c_common_timer_set.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_posix-timers.c_common_timer_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.k_itimer = type { i32, i32, i64, i8*, i64, %struct.k_clock* }
%struct.k_clock = type { i64 (%struct.k_itimer*)*, i32 (%struct.k_itimer*, i8*, i32, i32)* }
%struct.itimerspec64 = type { %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@TIMER_RETRY = common dso_local global i32 0, align 4
@REQUEUE_PENDING = common dso_local global i32 0, align 4
@SIGEV_NONE = common dso_local global i64 0, align 8
@TIMER_ABSTIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @common_timer_set(%struct.k_itimer* %0, i32 %1, %struct.itimerspec64* %2, %struct.itimerspec64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.k_itimer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.itimerspec64*, align 8
  %9 = alloca %struct.itimerspec64*, align 8
  %10 = alloca %struct.k_clock*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.k_itimer* %0, %struct.k_itimer** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.itimerspec64* %2, %struct.itimerspec64** %8, align 8
  store %struct.itimerspec64* %3, %struct.itimerspec64** %9, align 8
  %13 = load %struct.k_itimer*, %struct.k_itimer** %6, align 8
  %14 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %13, i32 0, i32 5
  %15 = load %struct.k_clock*, %struct.k_clock** %14, align 8
  store %struct.k_clock* %15, %struct.k_clock** %10, align 8
  %16 = load %struct.itimerspec64*, %struct.itimerspec64** %9, align 8
  %17 = icmp ne %struct.itimerspec64* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load %struct.k_itimer*, %struct.k_itimer** %6, align 8
  %20 = load %struct.itimerspec64*, %struct.itimerspec64** %9, align 8
  %21 = call i32 @common_timer_get(%struct.k_itimer* %19, %struct.itimerspec64* %20)
  br label %22

22:                                               ; preds = %18, %4
  %23 = load %struct.k_itimer*, %struct.k_itimer** %6, align 8
  %24 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %23, i32 0, i32 3
  store i8* null, i8** %24, align 8
  %25 = load %struct.k_clock*, %struct.k_clock** %10, align 8
  %26 = getelementptr inbounds %struct.k_clock, %struct.k_clock* %25, i32 0, i32 0
  %27 = load i64 (%struct.k_itimer*)*, i64 (%struct.k_itimer*)** %26, align 8
  %28 = load %struct.k_itimer*, %struct.k_itimer** %6, align 8
  %29 = call i64 %27(%struct.k_itimer* %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* @TIMER_RETRY, align 4
  store i32 %32, i32* %5, align 4
  br label %94

33:                                               ; preds = %22
  %34 = load %struct.k_itimer*, %struct.k_itimer** %6, align 8
  %35 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = load %struct.k_itimer*, %struct.k_itimer** %6, align 8
  %37 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 2
  %40 = load i32, i32* @REQUEUE_PENDING, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = load %struct.k_itimer*, %struct.k_itimer** %6, align 8
  %44 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.k_itimer*, %struct.k_itimer** %6, align 8
  %46 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %45, i32 0, i32 4
  store i64 0, i64* %46, align 8
  %47 = load %struct.itimerspec64*, %struct.itimerspec64** %8, align 8
  %48 = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %33
  %53 = load %struct.itimerspec64*, %struct.itimerspec64** %8, align 8
  %54 = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  store i32 0, i32* %5, align 4
  br label %94

59:                                               ; preds = %52, %33
  %60 = load %struct.itimerspec64*, %struct.itimerspec64** %8, align 8
  %61 = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %60, i32 0, i32 1
  %62 = bitcast %struct.TYPE_2__* %61 to i64*
  %63 = load i64, i64* %62, align 4
  %64 = call i8* @timespec64_to_ktime(i64 %63)
  %65 = load %struct.k_itimer*, %struct.k_itimer** %6, align 8
  %66 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %65, i32 0, i32 3
  store i8* %64, i8** %66, align 8
  %67 = load %struct.itimerspec64*, %struct.itimerspec64** %8, align 8
  %68 = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %67, i32 0, i32 0
  %69 = bitcast %struct.TYPE_2__* %68 to i64*
  %70 = load i64, i64* %69, align 4
  %71 = call i8* @timespec64_to_ktime(i64 %70)
  store i8* %71, i8** %12, align 8
  %72 = load %struct.k_itimer*, %struct.k_itimer** %6, align 8
  %73 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @SIGEV_NONE, align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %11, align 4
  %78 = load %struct.k_clock*, %struct.k_clock** %10, align 8
  %79 = getelementptr inbounds %struct.k_clock, %struct.k_clock* %78, i32 0, i32 1
  %80 = load i32 (%struct.k_itimer*, i8*, i32, i32)*, i32 (%struct.k_itimer*, i8*, i32, i32)** %79, align 8
  %81 = load %struct.k_itimer*, %struct.k_itimer** %6, align 8
  %82 = load i8*, i8** %12, align 8
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @TIMER_ABSTIME, align 4
  %85 = and i32 %83, %84
  %86 = load i32, i32* %11, align 4
  %87 = call i32 %80(%struct.k_itimer* %81, i8* %82, i32 %85, i32 %86)
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = load %struct.k_itimer*, %struct.k_itimer** %6, align 8
  %93 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %59, %58, %31
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @common_timer_get(%struct.k_itimer*, %struct.itimerspec64*) #1

declare dso_local i8* @timespec64_to_ktime(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
