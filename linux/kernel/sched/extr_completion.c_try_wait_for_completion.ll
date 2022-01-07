; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_completion.c_try_wait_for_completion.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_completion.c_try_wait_for_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.completion = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@UINT_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @try_wait_for_completion(%struct.completion* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.completion*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.completion* %0, %struct.completion** %3, align 8
  store i32 1, i32* %5, align 4
  %6 = load %struct.completion*, %struct.completion** %3, align 8
  %7 = getelementptr inbounds %struct.completion, %struct.completion* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @READ_ONCE(i64 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %42

12:                                               ; preds = %1
  %13 = load %struct.completion*, %struct.completion** %3, align 8
  %14 = getelementptr inbounds %struct.completion, %struct.completion* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.completion*, %struct.completion** %3, align 8
  %19 = getelementptr inbounds %struct.completion, %struct.completion* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %35

23:                                               ; preds = %12
  %24 = load %struct.completion*, %struct.completion** %3, align 8
  %25 = getelementptr inbounds %struct.completion, %struct.completion* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @UINT_MAX, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.completion*, %struct.completion** %3, align 8
  %31 = getelementptr inbounds %struct.completion, %struct.completion* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, -1
  store i64 %33, i64* %31, align 8
  br label %34

34:                                               ; preds = %29, %23
  br label %35

35:                                               ; preds = %34, %22
  %36 = load %struct.completion*, %struct.completion** %3, align 8
  %37 = getelementptr inbounds %struct.completion, %struct.completion* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %35, %11
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @READ_ONCE(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
