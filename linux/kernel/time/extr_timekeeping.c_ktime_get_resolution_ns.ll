; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_ktime_get_resolution_ns.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_ktime_get_resolution_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.timekeeper }
%struct.timekeeper = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@tk_core = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@timekeeping_suspended = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ktime_get_resolution_ns() #0 {
  %1 = alloca %struct.timekeeper*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store %struct.timekeeper* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tk_core, i32 0, i32 1), %struct.timekeeper** %1, align 8
  %4 = load i32, i32* @timekeeping_suspended, align 4
  %5 = call i32 @WARN_ON(i32 %4)
  br label %6

6:                                                ; preds = %17, %0
  %7 = call i32 @read_seqcount_begin(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tk_core, i32 0, i32 0))
  store i32 %7, i32* %2, align 4
  %8 = load %struct.timekeeper*, %struct.timekeeper** %1, align 8
  %9 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.timekeeper*, %struct.timekeeper** %1, align 8
  %13 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = ashr i32 %11, %15
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %6
  %18 = load i32, i32* %2, align 4
  %19 = call i64 @read_seqcount_retry(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tk_core, i32 0, i32 0), i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %6, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @read_seqcount_begin(i32*) #1

declare dso_local i64 @read_seqcount_retry(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
