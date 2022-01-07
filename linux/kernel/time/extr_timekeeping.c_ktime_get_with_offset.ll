; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_ktime_get_with_offset.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_ktime_get_with_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.timekeeper }
%struct.timekeeper = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@tk_core = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@offsets = common dso_local global i32** null, align 8
@timekeeping_suspended = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ktime_get_with_offset(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.timekeeper*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store %struct.timekeeper* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tk_core, i32 0, i32 1), %struct.timekeeper** %3, align 8
  %8 = load i32**, i32*** @offsets, align 8
  %9 = load i32, i32* %2, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds i32*, i32** %8, i64 %10
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %6, align 8
  %13 = load i32, i32* @timekeeping_suspended, align 4
  %14 = call i32 @WARN_ON(i32 %13)
  br label %15

15:                                               ; preds = %27, %1
  %16 = call i32 @read_seqcount_begin(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tk_core, i32 0, i32 0))
  store i32 %16, i32* %4, align 4
  %17 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %18 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ktime_add(i32 %20, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %25 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %24, i32 0, i32 0
  %26 = call i32 @timekeeping_get_ns(%struct.TYPE_4__* %25)
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %15
  %28 = load i32, i32* %4, align 4
  %29 = call i64 @read_seqcount_retry(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tk_core, i32 0, i32 0), i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %15, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @ktime_add_ns(i32 %32, i32 %33)
  ret i32 %34
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @read_seqcount_begin(i32*) #1

declare dso_local i32 @ktime_add(i32, i32) #1

declare dso_local i32 @timekeeping_get_ns(%struct.TYPE_4__*) #1

declare dso_local i64 @read_seqcount_retry(i32*, i32) #1

declare dso_local i32 @ktime_add_ns(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
