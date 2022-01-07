; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_posix-cpu-timers.c_collect_posix_cputimers.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_posix-cpu-timers.c_collect_posix_cputimers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_cputimers = type { %struct.posix_cputimer_base* }
%struct.posix_cputimer_base = type { i32, i32 }
%struct.list_head = type { i32 }

@CPUCLOCK_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.posix_cputimers*, i32*, %struct.list_head*)* @collect_posix_cputimers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @collect_posix_cputimers(%struct.posix_cputimers* %0, i32* %1, %struct.list_head* %2) #0 {
  %4 = alloca %struct.posix_cputimers*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca %struct.posix_cputimer_base*, align 8
  %8 = alloca i32, align 4
  store %struct.posix_cputimers* %0, %struct.posix_cputimers** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.list_head* %2, %struct.list_head** %6, align 8
  %9 = load %struct.posix_cputimers*, %struct.posix_cputimers** %4, align 8
  %10 = getelementptr inbounds %struct.posix_cputimers, %struct.posix_cputimers* %9, i32 0, i32 0
  %11 = load %struct.posix_cputimer_base*, %struct.posix_cputimer_base** %10, align 8
  store %struct.posix_cputimer_base* %11, %struct.posix_cputimer_base** %7, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %28, %3
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @CPUCLOCK_MAX, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %12
  %17 = load %struct.posix_cputimer_base*, %struct.posix_cputimer_base** %7, align 8
  %18 = getelementptr inbounds %struct.posix_cputimer_base, %struct.posix_cputimer_base* %17, i32 0, i32 0
  %19 = load %struct.list_head*, %struct.list_head** %6, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @collect_timerqueue(i32* %18, %struct.list_head* %19, i32 %24)
  %26 = load %struct.posix_cputimer_base*, %struct.posix_cputimer_base** %7, align 8
  %27 = getelementptr inbounds %struct.posix_cputimer_base, %struct.posix_cputimer_base* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %16
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  %31 = load %struct.posix_cputimer_base*, %struct.posix_cputimer_base** %7, align 8
  %32 = getelementptr inbounds %struct.posix_cputimer_base, %struct.posix_cputimer_base* %31, i32 1
  store %struct.posix_cputimer_base* %32, %struct.posix_cputimer_base** %7, align 8
  br label %12

33:                                               ; preds = %12
  ret void
}

declare dso_local i32 @collect_timerqueue(i32*, %struct.list_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
