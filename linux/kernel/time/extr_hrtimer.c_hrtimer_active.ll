; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_hrtimer.c_hrtimer_active.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_hrtimer.c_hrtimer_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hrtimer = type { i64, i32 }
%struct.hrtimer_clock_base = type { %struct.hrtimer*, i32 }

@HRTIMER_STATE_INACTIVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hrtimer_active(%struct.hrtimer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hrtimer*, align 8
  %4 = alloca %struct.hrtimer_clock_base*, align 8
  %5 = alloca i32, align 4
  store %struct.hrtimer* %0, %struct.hrtimer** %3, align 8
  br label %6

6:                                                ; preds = %40, %1
  %7 = load %struct.hrtimer*, %struct.hrtimer** %3, align 8
  %8 = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.hrtimer_clock_base* @READ_ONCE(i32 %9)
  store %struct.hrtimer_clock_base* %10, %struct.hrtimer_clock_base** %4, align 8
  %11 = load %struct.hrtimer_clock_base*, %struct.hrtimer_clock_base** %4, align 8
  %12 = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %11, i32 0, i32 1
  %13 = call i32 @raw_read_seqcount_begin(i32* %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.hrtimer*, %struct.hrtimer** %3, align 8
  %15 = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @HRTIMER_STATE_INACTIVE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %6
  %20 = load %struct.hrtimer_clock_base*, %struct.hrtimer_clock_base** %4, align 8
  %21 = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %20, i32 0, i32 0
  %22 = load %struct.hrtimer*, %struct.hrtimer** %21, align 8
  %23 = load %struct.hrtimer*, %struct.hrtimer** %3, align 8
  %24 = icmp eq %struct.hrtimer* %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %6
  store i32 1, i32* %2, align 4
  br label %43

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.hrtimer_clock_base*, %struct.hrtimer_clock_base** %4, align 8
  %29 = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %28, i32 0, i32 1
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @read_seqcount_retry(i32* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %27
  %34 = load %struct.hrtimer_clock_base*, %struct.hrtimer_clock_base** %4, align 8
  %35 = load %struct.hrtimer*, %struct.hrtimer** %3, align 8
  %36 = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call %struct.hrtimer_clock_base* @READ_ONCE(i32 %37)
  %39 = icmp ne %struct.hrtimer_clock_base* %34, %38
  br label %40

40:                                               ; preds = %33, %27
  %41 = phi i1 [ true, %27 ], [ %39, %33 ]
  br i1 %41, label %6, label %42

42:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %25
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.hrtimer_clock_base* @READ_ONCE(i32) #1

declare dso_local i32 @raw_read_seqcount_begin(i32*) #1

declare dso_local i64 @read_seqcount_retry(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
