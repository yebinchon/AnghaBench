; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_add_gp_regs.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_add_gp_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regs_dump = type { i32 }
%struct.intel_pt_blk_items = type { i32**, i32* }

@INTEL_PT_GP_REGS_POS = common dso_local global i64 0, align 8
@PERF_REG_X86_64_MAX = common dso_local global i32 0, align 4
@pebs_gp_regs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.regs_dump*, i32*, %struct.intel_pt_blk_items*, i32)* @intel_pt_add_gp_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @intel_pt_add_gp_regs(%struct.regs_dump* %0, i32* %1, %struct.intel_pt_blk_items* %2, i32 %3) #0 {
  %5 = alloca %struct.regs_dump*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.intel_pt_blk_items*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.regs_dump* %0, %struct.regs_dump** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.intel_pt_blk_items* %2, %struct.intel_pt_blk_items** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.intel_pt_blk_items*, %struct.intel_pt_blk_items** %7, align 8
  %15 = getelementptr inbounds %struct.intel_pt_blk_items, %struct.intel_pt_blk_items* %14, i32 0, i32 0
  %16 = load i32**, i32*** %15, align 8
  %17 = load i64, i64* @INTEL_PT_GP_REGS_POS, align 8
  %18 = getelementptr inbounds i32*, i32** %16, i64 %17
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %9, align 8
  %20 = load %struct.intel_pt_blk_items*, %struct.intel_pt_blk_items** %7, align 8
  %21 = getelementptr inbounds %struct.intel_pt_blk_items, %struct.intel_pt_blk_items* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @INTEL_PT_GP_REGS_POS, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 1, i32* %11, align 4
  br label %26

26:                                               ; preds = %65, %4
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* @PERF_REG_X86_64_MAX, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %70

30:                                               ; preds = %26
  %31 = load i32*, i32** @pebs_gp_regs, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %65

40:                                               ; preds = %30
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %13, align 4
  %43 = shl i32 1, %42
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %40
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %11, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %46
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.regs_dump*, %struct.regs_dump** %5, align 8
  %54 = getelementptr inbounds %struct.regs_dump, %struct.regs_dump* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load i32*, i32** %9, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %6, align 8
  store i32 %61, i32* %62, align 4
  br label %64

64:                                               ; preds = %51, %46, %40
  br label %65

65:                                               ; preds = %64, %39
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %11, align 4
  %69 = shl i32 %68, 1
  store i32 %69, i32* %11, align 4
  br label %26

70:                                               ; preds = %26
  %71 = load i32*, i32** %6, align 8
  ret i32* %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
