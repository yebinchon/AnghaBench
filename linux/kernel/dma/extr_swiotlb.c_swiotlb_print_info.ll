; ModuleID = '/home/carl/AnghaBench/linux/kernel/dma/extr_swiotlb.c_swiotlb_print_info.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/dma/extr_swiotlb.c_swiotlb_print_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@io_tlb_nslabs = common dso_local global i64 0, align 8
@IO_TLB_SHIFT = common dso_local global i64 0, align 8
@no_iotlb_memory = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"No low mem\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"mapped [mem %#010llx-%#010llx] (%luMB)\0A\00", align 1
@io_tlb_start = common dso_local global i64 0, align 8
@io_tlb_end = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swiotlb_print_info() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @io_tlb_nslabs, align 8
  %3 = load i64, i64* @IO_TLB_SHIFT, align 8
  %4 = shl i64 %2, %3
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* @no_iotlb_memory, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 @pr_warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %15

9:                                                ; preds = %0
  %10 = load i64, i64* @io_tlb_start, align 8
  %11 = load i64, i64* @io_tlb_end, align 8
  %12 = load i64, i64* %1, align 8
  %13 = lshr i64 %12, 20
  %14 = call i32 @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %10, i64 %11, i64 %13)
  br label %15

15:                                               ; preds = %9, %7
  ret void
}

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @pr_info(i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
