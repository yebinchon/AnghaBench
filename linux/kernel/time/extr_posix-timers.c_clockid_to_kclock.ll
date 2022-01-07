; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_posix-timers.c_clockid_to_kclock.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_posix-timers.c_clockid_to_kclock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.k_clock = type { i32 }

@CLOCKFD_MASK = common dso_local global i32 0, align 4
@CLOCKFD = common dso_local global i32 0, align 4
@clock_posix_dynamic = common dso_local global %struct.k_clock zeroinitializer, align 4
@clock_posix_cpu = common dso_local global %struct.k_clock zeroinitializer, align 4
@posix_clocks = common dso_local global %struct.k_clock** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.k_clock* (i32)* @clockid_to_kclock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.k_clock* @clockid_to_kclock(i32 %0) #0 {
  %2 = alloca %struct.k_clock*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @CLOCKFD_MASK, align 4
  %11 = and i32 %9, %10
  %12 = load i32, i32* @CLOCKFD, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, %struct.k_clock* @clock_posix_dynamic, %struct.k_clock* @clock_posix_cpu
  store %struct.k_clock* %15, %struct.k_clock** %2, align 8
  br label %30

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.k_clock**, %struct.k_clock*** @posix_clocks, align 8
  %19 = call i32 @ARRAY_SIZE(%struct.k_clock** %18)
  %20 = icmp sge i32 %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store %struct.k_clock* null, %struct.k_clock** %2, align 8
  br label %30

22:                                               ; preds = %16
  %23 = load %struct.k_clock**, %struct.k_clock*** @posix_clocks, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.k_clock**, %struct.k_clock*** @posix_clocks, align 8
  %26 = call i32 @ARRAY_SIZE(%struct.k_clock** %25)
  %27 = call i64 @array_index_nospec(i32 %24, i32 %26)
  %28 = getelementptr inbounds %struct.k_clock*, %struct.k_clock** %23, i64 %27
  %29 = load %struct.k_clock*, %struct.k_clock** %28, align 8
  store %struct.k_clock* %29, %struct.k_clock** %2, align 8
  br label %30

30:                                               ; preds = %22, %21, %8
  %31 = load %struct.k_clock*, %struct.k_clock** %2, align 8
  ret %struct.k_clock* %31
}

declare dso_local i32 @ARRAY_SIZE(%struct.k_clock**) #1

declare dso_local i64 @array_index_nospec(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
