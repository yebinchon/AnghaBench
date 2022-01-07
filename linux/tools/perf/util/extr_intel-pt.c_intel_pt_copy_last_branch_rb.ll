; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_copy_last_branch_rb.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_copy_last_branch_rb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_queue = type { i64, %struct.TYPE_4__*, %struct.branch_stack*, %struct.branch_stack* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.branch_stack = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_pt_queue*)* @intel_pt_copy_last_branch_rb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pt_copy_last_branch_rb(%struct.intel_pt_queue* %0) #0 {
  %2 = alloca %struct.intel_pt_queue*, align 8
  %3 = alloca %struct.branch_stack*, align 8
  %4 = alloca %struct.branch_stack*, align 8
  %5 = alloca i64, align 8
  store %struct.intel_pt_queue* %0, %struct.intel_pt_queue** %2, align 8
  %6 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %2, align 8
  %7 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %6, i32 0, i32 3
  %8 = load %struct.branch_stack*, %struct.branch_stack** %7, align 8
  store %struct.branch_stack* %8, %struct.branch_stack** %3, align 8
  %9 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %2, align 8
  %10 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %9, i32 0, i32 2
  %11 = load %struct.branch_stack*, %struct.branch_stack** %10, align 8
  store %struct.branch_stack* %11, %struct.branch_stack** %4, align 8
  store i64 0, i64* %5, align 8
  %12 = load %struct.branch_stack*, %struct.branch_stack** %3, align 8
  %13 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.branch_stack*, %struct.branch_stack** %4, align 8
  %16 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.branch_stack*, %struct.branch_stack** %3, align 8
  %18 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %74

22:                                               ; preds = %1
  %23 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %2, align 8
  %24 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %2, align 8
  %30 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub i64 %28, %31
  store i64 %32, i64* %5, align 8
  %33 = load %struct.branch_stack*, %struct.branch_stack** %4, align 8
  %34 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load %struct.branch_stack*, %struct.branch_stack** %3, align 8
  %38 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %2, align 8
  %41 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load i64, i64* %5, align 8
  %45 = mul i64 4, %44
  %46 = trunc i64 %45 to i32
  %47 = call i32 @memcpy(i32* %36, i32* %43, i32 %46)
  %48 = load %struct.branch_stack*, %struct.branch_stack** %3, align 8
  %49 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %2, align 8
  %52 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp uge i64 %50, %56
  br i1 %57, label %58, label %74

58:                                               ; preds = %22
  %59 = load %struct.branch_stack*, %struct.branch_stack** %4, align 8
  %60 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* %5, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load %struct.branch_stack*, %struct.branch_stack** %3, align 8
  %65 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %2, align 8
  %69 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = mul i64 4, %70
  %72 = trunc i64 %71 to i32
  %73 = call i32 @memcpy(i32* %63, i32* %67, i32 %72)
  br label %74

74:                                               ; preds = %21, %58, %22
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
