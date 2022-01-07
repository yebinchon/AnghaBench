; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_alloc_blk.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_alloc_blk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_stack = type { i64, %struct.intel_pt_blk*, %struct.intel_pt_blk* }
%struct.intel_pt_blk = type { %struct.intel_pt_blk* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_pt_stack*)* @intel_pt_alloc_blk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_alloc_blk(%struct.intel_pt_stack* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_pt_stack*, align 8
  %4 = alloca %struct.intel_pt_blk*, align 8
  store %struct.intel_pt_stack* %0, %struct.intel_pt_stack** %3, align 8
  %5 = load %struct.intel_pt_stack*, %struct.intel_pt_stack** %3, align 8
  %6 = getelementptr inbounds %struct.intel_pt_stack, %struct.intel_pt_stack* %5, i32 0, i32 2
  %7 = load %struct.intel_pt_blk*, %struct.intel_pt_blk** %6, align 8
  %8 = icmp ne %struct.intel_pt_blk* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.intel_pt_stack*, %struct.intel_pt_stack** %3, align 8
  %11 = getelementptr inbounds %struct.intel_pt_stack, %struct.intel_pt_stack* %10, i32 0, i32 2
  %12 = load %struct.intel_pt_blk*, %struct.intel_pt_blk** %11, align 8
  store %struct.intel_pt_blk* %12, %struct.intel_pt_blk** %4, align 8
  %13 = load %struct.intel_pt_stack*, %struct.intel_pt_stack** %3, align 8
  %14 = getelementptr inbounds %struct.intel_pt_stack, %struct.intel_pt_stack* %13, i32 0, i32 2
  store %struct.intel_pt_blk* null, %struct.intel_pt_blk** %14, align 8
  br label %23

15:                                               ; preds = %1
  %16 = call %struct.intel_pt_blk* @malloc(i32 8)
  store %struct.intel_pt_blk* %16, %struct.intel_pt_blk** %4, align 8
  %17 = load %struct.intel_pt_blk*, %struct.intel_pt_blk** %4, align 8
  %18 = icmp ne %struct.intel_pt_blk* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %34

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22, %9
  %24 = load %struct.intel_pt_stack*, %struct.intel_pt_stack** %3, align 8
  %25 = getelementptr inbounds %struct.intel_pt_stack, %struct.intel_pt_stack* %24, i32 0, i32 1
  %26 = load %struct.intel_pt_blk*, %struct.intel_pt_blk** %25, align 8
  %27 = load %struct.intel_pt_blk*, %struct.intel_pt_blk** %4, align 8
  %28 = getelementptr inbounds %struct.intel_pt_blk, %struct.intel_pt_blk* %27, i32 0, i32 0
  store %struct.intel_pt_blk* %26, %struct.intel_pt_blk** %28, align 8
  %29 = load %struct.intel_pt_blk*, %struct.intel_pt_blk** %4, align 8
  %30 = load %struct.intel_pt_stack*, %struct.intel_pt_stack** %3, align 8
  %31 = getelementptr inbounds %struct.intel_pt_stack, %struct.intel_pt_stack* %30, i32 0, i32 1
  store %struct.intel_pt_blk* %29, %struct.intel_pt_blk** %31, align 8
  %32 = load %struct.intel_pt_stack*, %struct.intel_pt_stack** %3, align 8
  %33 = getelementptr inbounds %struct.intel_pt_stack, %struct.intel_pt_stack* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %23, %19
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.intel_pt_blk* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
