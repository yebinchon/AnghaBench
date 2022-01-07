; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_posix-cpu-timers.c_posix_cputimers_group_init.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_posix-cpu-timers.c_posix_cputimers_group_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_cputimers = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RLIM_INFINITY = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@CPUCLOCK_PROF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @posix_cputimers_group_init(%struct.posix_cputimers* %0, i32 %1) #0 {
  %3 = alloca %struct.posix_cputimers*, align 8
  %4 = alloca i32, align 4
  store %struct.posix_cputimers* %0, %struct.posix_cputimers** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.posix_cputimers*, %struct.posix_cputimers** %3, align 8
  %6 = call i32 @posix_cputimers_init(%struct.posix_cputimers* %5)
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @RLIM_INFINITY, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @NSEC_PER_SEC, align 4
  %13 = mul nsw i32 %11, %12
  %14 = load %struct.posix_cputimers*, %struct.posix_cputimers** %3, align 8
  %15 = getelementptr inbounds %struct.posix_cputimers, %struct.posix_cputimers* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i64, i64* @CPUCLOCK_PROF, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %13, i32* %19, align 4
  %20 = load %struct.posix_cputimers*, %struct.posix_cputimers** %3, align 8
  %21 = getelementptr inbounds %struct.posix_cputimers, %struct.posix_cputimers* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  br label %22

22:                                               ; preds = %10, %2
  ret void
}

declare dso_local i32 @posix_cputimers_init(%struct.posix_cputimers*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
