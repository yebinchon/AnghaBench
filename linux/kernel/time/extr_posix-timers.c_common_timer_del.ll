; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_posix-timers.c_common_timer_del.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_posix-timers.c_common_timer_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.k_itimer = type { i64, i64, %struct.k_clock* }
%struct.k_clock = type { i64 (%struct.k_itimer*)* }

@TIMER_RETRY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @common_timer_del(%struct.k_itimer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.k_itimer*, align 8
  %4 = alloca %struct.k_clock*, align 8
  store %struct.k_itimer* %0, %struct.k_itimer** %3, align 8
  %5 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %6 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %5, i32 0, i32 2
  %7 = load %struct.k_clock*, %struct.k_clock** %6, align 8
  store %struct.k_clock* %7, %struct.k_clock** %4, align 8
  %8 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %9 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %8, i32 0, i32 1
  store i64 0, i64* %9, align 8
  %10 = load %struct.k_clock*, %struct.k_clock** %4, align 8
  %11 = getelementptr inbounds %struct.k_clock, %struct.k_clock* %10, i32 0, i32 0
  %12 = load i64 (%struct.k_itimer*)*, i64 (%struct.k_itimer*)** %11, align 8
  %13 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %14 = call i64 %12(%struct.k_itimer* %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @TIMER_RETRY, align 4
  store i32 %17, i32* %2, align 4
  br label %21

18:                                               ; preds = %1
  %19 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %20 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %18, %16
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
