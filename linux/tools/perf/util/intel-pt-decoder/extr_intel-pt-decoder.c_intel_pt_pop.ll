; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_pop.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_stack = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@INTEL_PT_BLK_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_pt_stack*)* @intel_pt_pop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_pop(%struct.intel_pt_stack* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_pt_stack*, align 8
  store %struct.intel_pt_stack* %0, %struct.intel_pt_stack** %3, align 8
  %4 = load %struct.intel_pt_stack*, %struct.intel_pt_stack** %3, align 8
  %5 = getelementptr inbounds %struct.intel_pt_stack, %struct.intel_pt_stack* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %26, label %8

8:                                                ; preds = %1
  %9 = load %struct.intel_pt_stack*, %struct.intel_pt_stack** %3, align 8
  %10 = getelementptr inbounds %struct.intel_pt_stack, %struct.intel_pt_stack* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %38

14:                                               ; preds = %8
  %15 = load %struct.intel_pt_stack*, %struct.intel_pt_stack** %3, align 8
  %16 = call i32 @intel_pt_pop_blk(%struct.intel_pt_stack* %15)
  %17 = load %struct.intel_pt_stack*, %struct.intel_pt_stack** %3, align 8
  %18 = getelementptr inbounds %struct.intel_pt_stack, %struct.intel_pt_stack* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = icmp ne %struct.TYPE_2__* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %38

22:                                               ; preds = %14
  %23 = load i64, i64* @INTEL_PT_BLK_SIZE, align 8
  %24 = load %struct.intel_pt_stack*, %struct.intel_pt_stack** %3, align 8
  %25 = getelementptr inbounds %struct.intel_pt_stack, %struct.intel_pt_stack* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  br label %26

26:                                               ; preds = %22, %1
  %27 = load %struct.intel_pt_stack*, %struct.intel_pt_stack** %3, align 8
  %28 = getelementptr inbounds %struct.intel_pt_stack, %struct.intel_pt_stack* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.intel_pt_stack*, %struct.intel_pt_stack** %3, align 8
  %33 = getelementptr inbounds %struct.intel_pt_stack, %struct.intel_pt_stack* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, -1
  store i64 %35, i64* %33, align 8
  %36 = getelementptr inbounds i32, i32* %31, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %26, %21, %13
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @intel_pt_pop_blk(%struct.intel_pt_stack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
