; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_add_xmm.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_add_xmm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regs_dump = type { i32 }
%struct.intel_pt_blk_items = type { i32, i32* }

@PERF_REG_X86_XMM0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.regs_dump*, i32*, %struct.intel_pt_blk_items*, i32)* @intel_pt_add_xmm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pt_add_xmm(%struct.regs_dump* %0, i32* %1, %struct.intel_pt_blk_items* %2, i32 %3) #0 {
  %5 = alloca %struct.regs_dump*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.intel_pt_blk_items*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.regs_dump* %0, %struct.regs_dump** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.intel_pt_blk_items* %2, %struct.intel_pt_blk_items** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.intel_pt_blk_items*, %struct.intel_pt_blk_items** %7, align 8
  %12 = getelementptr inbounds %struct.intel_pt_blk_items, %struct.intel_pt_blk_items* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @PERF_REG_X86_XMM0, align 4
  %16 = ashr i32 %14, %15
  %17 = and i32 %13, %16
  store i32 %17, i32* %9, align 4
  %18 = load %struct.intel_pt_blk_items*, %struct.intel_pt_blk_items** %7, align 8
  %19 = getelementptr inbounds %struct.intel_pt_blk_items, %struct.intel_pt_blk_items* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %10, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @PERF_REG_X86_XMM0, align 4
  %23 = shl i32 %21, %22
  %24 = load %struct.regs_dump*, %struct.regs_dump** %5, align 8
  %25 = getelementptr inbounds %struct.regs_dump, %struct.regs_dump* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %41, %4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  %33 = and i32 %32, 1
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %6, align 8
  store i32 %37, i32* %38, align 4
  br label %40

40:                                               ; preds = %35, %31
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %9, align 4
  %43 = ashr i32 %42, 1
  store i32 %43, i32* %9, align 4
  %44 = load i32*, i32** %10, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %10, align 8
  br label %28

46:                                               ; preds = %28
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
