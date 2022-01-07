; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmu_gather.c_tlb_batch_pages_flush.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmu_gather.c_tlb_batch_pages_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_gather = type { %struct.mmu_gather_batch, %struct.mmu_gather_batch* }
%struct.mmu_gather_batch = type { i64, i32, %struct.mmu_gather_batch* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmu_gather*)* @tlb_batch_pages_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tlb_batch_pages_flush(%struct.mmu_gather* %0) #0 {
  %2 = alloca %struct.mmu_gather*, align 8
  %3 = alloca %struct.mmu_gather_batch*, align 8
  store %struct.mmu_gather* %0, %struct.mmu_gather** %2, align 8
  %4 = load %struct.mmu_gather*, %struct.mmu_gather** %2, align 8
  %5 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %4, i32 0, i32 0
  store %struct.mmu_gather_batch* %5, %struct.mmu_gather_batch** %3, align 8
  br label %6

6:                                                ; preds = %26, %1
  %7 = load %struct.mmu_gather_batch*, %struct.mmu_gather_batch** %3, align 8
  %8 = icmp ne %struct.mmu_gather_batch* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = load %struct.mmu_gather_batch*, %struct.mmu_gather_batch** %3, align 8
  %11 = getelementptr inbounds %struct.mmu_gather_batch, %struct.mmu_gather_batch* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br label %14

14:                                               ; preds = %9, %6
  %15 = phi i1 [ false, %6 ], [ %13, %9 ]
  br i1 %15, label %16, label %30

16:                                               ; preds = %14
  %17 = load %struct.mmu_gather_batch*, %struct.mmu_gather_batch** %3, align 8
  %18 = getelementptr inbounds %struct.mmu_gather_batch, %struct.mmu_gather_batch* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.mmu_gather_batch*, %struct.mmu_gather_batch** %3, align 8
  %21 = getelementptr inbounds %struct.mmu_gather_batch, %struct.mmu_gather_batch* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @free_pages_and_swap_cache(i32 %19, i64 %22)
  %24 = load %struct.mmu_gather_batch*, %struct.mmu_gather_batch** %3, align 8
  %25 = getelementptr inbounds %struct.mmu_gather_batch, %struct.mmu_gather_batch* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %16
  %27 = load %struct.mmu_gather_batch*, %struct.mmu_gather_batch** %3, align 8
  %28 = getelementptr inbounds %struct.mmu_gather_batch, %struct.mmu_gather_batch* %27, i32 0, i32 2
  %29 = load %struct.mmu_gather_batch*, %struct.mmu_gather_batch** %28, align 8
  store %struct.mmu_gather_batch* %29, %struct.mmu_gather_batch** %3, align 8
  br label %6

30:                                               ; preds = %14
  %31 = load %struct.mmu_gather*, %struct.mmu_gather** %2, align 8
  %32 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %31, i32 0, i32 0
  %33 = load %struct.mmu_gather*, %struct.mmu_gather** %2, align 8
  %34 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %33, i32 0, i32 1
  store %struct.mmu_gather_batch* %32, %struct.mmu_gather_batch** %34, align 8
  ret void
}

declare dso_local i32 @free_pages_and_swap_cache(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
