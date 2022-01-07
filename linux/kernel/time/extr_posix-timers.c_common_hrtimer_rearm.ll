; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_posix-timers.c_common_hrtimer_rearm.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_posix-timers.c_common_hrtimer_rearm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.k_itimer = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.hrtimer }
%struct.hrtimer = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (...)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.k_itimer*)* @common_hrtimer_rearm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_hrtimer_rearm(%struct.k_itimer* %0) #0 {
  %2 = alloca %struct.k_itimer*, align 8
  %3 = alloca %struct.hrtimer*, align 8
  store %struct.k_itimer* %0, %struct.k_itimer** %2, align 8
  %4 = load %struct.k_itimer*, %struct.k_itimer** %2, align 8
  %5 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store %struct.hrtimer* %7, %struct.hrtimer** %3, align 8
  %8 = load %struct.hrtimer*, %struct.hrtimer** %3, align 8
  %9 = load %struct.hrtimer*, %struct.hrtimer** %3, align 8
  %10 = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32 (...)*, i32 (...)** %12, align 8
  %14 = call i32 (...) %13()
  %15 = load %struct.k_itimer*, %struct.k_itimer** %2, align 8
  %16 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @hrtimer_forward(%struct.hrtimer* %8, i32 %14, i32 %17)
  %19 = load %struct.k_itimer*, %struct.k_itimer** %2, align 8
  %20 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %18
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %20, align 4
  %25 = load %struct.hrtimer*, %struct.hrtimer** %3, align 8
  %26 = call i32 @hrtimer_restart(%struct.hrtimer* %25)
  ret void
}

declare dso_local i64 @hrtimer_forward(%struct.hrtimer*, i32, i32) #1

declare dso_local i32 @hrtimer_restart(%struct.hrtimer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
