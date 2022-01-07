; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_ktime_mono_to_any.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_ktime_mono_to_any.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@offsets = common dso_local global i32** null, align 8
@tk_core = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ktime_mono_to_any(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32**, i32*** @offsets, align 8
  %9 = load i32, i32* %4, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds i32*, i32** %8, i64 %10
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %5, align 8
  br label %13

13:                                               ; preds = %19, %2
  %14 = call i32 @read_seqcount_begin(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tk_core, i32 0, i32 0))
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ktime_add(i32 %15, i32 %17)
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %13
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @read_seqcount_retry(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tk_core, i32 0, i32 0), i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %13, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  ret i32 %24
}

declare dso_local i32 @read_seqcount_begin(i32*) #1

declare dso_local i32 @ktime_add(i32, i32) #1

declare dso_local i64 @read_seqcount_retry(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
