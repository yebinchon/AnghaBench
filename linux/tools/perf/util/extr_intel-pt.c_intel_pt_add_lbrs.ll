; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_add_lbrs.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_add_lbrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.branch_stack = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.intel_pt_blk_items = type { i32*, i32** }

@INTEL_PT_LBR_0_POS = common dso_local global i32 0, align 4
@INTEL_PT_LBR_2_POS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.branch_stack*, %struct.intel_pt_blk_items*)* @intel_pt_add_lbrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pt_add_lbrs(%struct.branch_stack* %0, %struct.intel_pt_blk_items* %1) #0 {
  %3 = alloca %struct.branch_stack*, align 8
  %4 = alloca %struct.intel_pt_blk_items*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.branch_stack* %0, %struct.branch_stack** %3, align 8
  store %struct.intel_pt_blk_items* %1, %struct.intel_pt_blk_items** %4, align 8
  %9 = load %struct.branch_stack*, %struct.branch_stack** %3, align 8
  %10 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %9, i32 0, i32 0
  store i64 0, i64* %10, align 8
  %11 = load %struct.branch_stack*, %struct.branch_stack** %3, align 8
  %12 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32* %15, i32** %5, align 8
  %16 = load i32, i32* @INTEL_PT_LBR_0_POS, align 4
  store i32 %16, i32* %6, align 4
  br label %17

17:                                               ; preds = %71, %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @INTEL_PT_LBR_2_POS, align 4
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %21, label %74

21:                                               ; preds = %17
  %22 = load %struct.intel_pt_blk_items*, %struct.intel_pt_blk_items** %4, align 8
  %23 = getelementptr inbounds %struct.intel_pt_blk_items, %struct.intel_pt_blk_items* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  %29 = load %struct.intel_pt_blk_items*, %struct.intel_pt_blk_items** %4, align 8
  %30 = getelementptr inbounds %struct.intel_pt_blk_items, %struct.intel_pt_blk_items* %29, i32 0, i32 1
  %31 = load i32**, i32*** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %31, i64 %33
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %8, align 8
  br label %36

36:                                               ; preds = %65, %21
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %70

39:                                               ; preds = %36
  %40 = load i32, i32* %7, align 4
  %41 = and i32 %40, 7
  %42 = icmp eq i32 %41, 7
  br i1 %42, label %43, label %64

43:                                               ; preds = %39
  %44 = load i32*, i32** %8, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %5, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %5, align 8
  store i32 %46, i32* %47, align 4
  %49 = load i32*, i32** %8, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %5, align 8
  store i32 %51, i32* %52, align 4
  %54 = load i32*, i32** %8, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @intel_pt_lbr_flags(i32 %56)
  %58 = load i32*, i32** %5, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %5, align 8
  store i32 %57, i32* %58, align 4
  %60 = load %struct.branch_stack*, %struct.branch_stack** %3, align 8
  %61 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %61, align 8
  br label %64

64:                                               ; preds = %43, %39
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %7, align 4
  %67 = ashr i32 %66, 3
  store i32 %67, i32* %7, align 4
  %68 = load i32*, i32** %8, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 3
  store i32* %69, i32** %8, align 8
  br label %36

70:                                               ; preds = %36
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %17

74:                                               ; preds = %17
  ret void
}

declare dso_local i32 @intel_pt_lbr_flags(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
