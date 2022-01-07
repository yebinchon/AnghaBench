; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_ktime_get_real_seconds.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_ktime_get_real_seconds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.timekeeper }
%struct.timekeeper = type { i32 }

@tk_core = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@CONFIG_64BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ktime_get_real_seconds() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.timekeeper*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.timekeeper* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tk_core, i32 0, i32 1), %struct.timekeeper** %2, align 8
  %5 = load i32, i32* @CONFIG_64BIT, align 4
  %6 = call i64 @IS_ENABLED(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %0
  %9 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %10 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %1, align 4
  br label %24

12:                                               ; preds = %0
  br label %13

13:                                               ; preds = %18, %12
  %14 = call i32 @read_seqcount_begin(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tk_core, i32 0, i32 0))
  store i32 %14, i32* %4, align 4
  %15 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %16 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @read_seqcount_retry(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tk_core, i32 0, i32 0), i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %13, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  store i32 %23, i32* %1, align 4
  br label %24

24:                                               ; preds = %22, %8
  %25 = load i32, i32* %1, align 4
  ret i32 %25
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @read_seqcount_begin(i32*) #1

declare dso_local i64 @read_seqcount_retry(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
