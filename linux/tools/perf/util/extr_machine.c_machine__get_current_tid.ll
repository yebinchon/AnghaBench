; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_machine__get_current_tid.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_machine__get_current_tid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machine = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MAX_NR_CPUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @machine__get_current_tid(%struct.machine* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.machine*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.machine* %0, %struct.machine** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.machine*, %struct.machine** %4, align 8
  %8 = getelementptr inbounds %struct.machine, %struct.machine* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @MAX_NR_CPUS, align 4
  %13 = call i32 @min(i32 %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = load %struct.machine*, %struct.machine** %4, align 8
  %22 = getelementptr inbounds %struct.machine, %struct.machine* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20, %16, %2
  store i32 -1, i32* %3, align 4
  br label %34

26:                                               ; preds = %20
  %27 = load %struct.machine*, %struct.machine** %4, align 8
  %28 = getelementptr inbounds %struct.machine, %struct.machine* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %26, %25
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
