; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmu_gather.c_tlb_next_batch.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmu_gather.c_tlb_next_batch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_gather = type { i64, %struct.mmu_gather_batch* }
%struct.mmu_gather_batch = type { %struct.mmu_gather_batch*, i32, i64 }

@MAX_GATHER_BATCH_COUNT = common dso_local global i64 0, align 8
@GFP_NOWAIT = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@MAX_GATHER_BATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmu_gather*)* @tlb_next_batch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tlb_next_batch(%struct.mmu_gather* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmu_gather*, align 8
  %4 = alloca %struct.mmu_gather_batch*, align 8
  store %struct.mmu_gather* %0, %struct.mmu_gather** %3, align 8
  %5 = load %struct.mmu_gather*, %struct.mmu_gather** %3, align 8
  %6 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %5, i32 0, i32 1
  %7 = load %struct.mmu_gather_batch*, %struct.mmu_gather_batch** %6, align 8
  store %struct.mmu_gather_batch* %7, %struct.mmu_gather_batch** %4, align 8
  %8 = load %struct.mmu_gather_batch*, %struct.mmu_gather_batch** %4, align 8
  %9 = getelementptr inbounds %struct.mmu_gather_batch, %struct.mmu_gather_batch* %8, i32 0, i32 0
  %10 = load %struct.mmu_gather_batch*, %struct.mmu_gather_batch** %9, align 8
  %11 = icmp ne %struct.mmu_gather_batch* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.mmu_gather_batch*, %struct.mmu_gather_batch** %4, align 8
  %14 = getelementptr inbounds %struct.mmu_gather_batch, %struct.mmu_gather_batch* %13, i32 0, i32 0
  %15 = load %struct.mmu_gather_batch*, %struct.mmu_gather_batch** %14, align 8
  %16 = load %struct.mmu_gather*, %struct.mmu_gather** %3, align 8
  %17 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %16, i32 0, i32 1
  store %struct.mmu_gather_batch* %15, %struct.mmu_gather_batch** %17, align 8
  store i32 1, i32* %2, align 4
  br label %55

18:                                               ; preds = %1
  %19 = load %struct.mmu_gather*, %struct.mmu_gather** %3, align 8
  %20 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MAX_GATHER_BATCH_COUNT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %55

25:                                               ; preds = %18
  %26 = load i32, i32* @GFP_NOWAIT, align 4
  %27 = load i32, i32* @__GFP_NOWARN, align 4
  %28 = or i32 %26, %27
  %29 = call i64 @__get_free_pages(i32 %28, i32 0)
  %30 = inttoptr i64 %29 to i8*
  %31 = bitcast i8* %30 to %struct.mmu_gather_batch*
  store %struct.mmu_gather_batch* %31, %struct.mmu_gather_batch** %4, align 8
  %32 = load %struct.mmu_gather_batch*, %struct.mmu_gather_batch** %4, align 8
  %33 = icmp ne %struct.mmu_gather_batch* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %55

35:                                               ; preds = %25
  %36 = load %struct.mmu_gather*, %struct.mmu_gather** %3, align 8
  %37 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %37, align 8
  %40 = load %struct.mmu_gather_batch*, %struct.mmu_gather_batch** %4, align 8
  %41 = getelementptr inbounds %struct.mmu_gather_batch, %struct.mmu_gather_batch* %40, i32 0, i32 0
  store %struct.mmu_gather_batch* null, %struct.mmu_gather_batch** %41, align 8
  %42 = load %struct.mmu_gather_batch*, %struct.mmu_gather_batch** %4, align 8
  %43 = getelementptr inbounds %struct.mmu_gather_batch, %struct.mmu_gather_batch* %42, i32 0, i32 2
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* @MAX_GATHER_BATCH, align 4
  %45 = load %struct.mmu_gather_batch*, %struct.mmu_gather_batch** %4, align 8
  %46 = getelementptr inbounds %struct.mmu_gather_batch, %struct.mmu_gather_batch* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load %struct.mmu_gather_batch*, %struct.mmu_gather_batch** %4, align 8
  %48 = load %struct.mmu_gather*, %struct.mmu_gather** %3, align 8
  %49 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %48, i32 0, i32 1
  %50 = load %struct.mmu_gather_batch*, %struct.mmu_gather_batch** %49, align 8
  %51 = getelementptr inbounds %struct.mmu_gather_batch, %struct.mmu_gather_batch* %50, i32 0, i32 0
  store %struct.mmu_gather_batch* %47, %struct.mmu_gather_batch** %51, align 8
  %52 = load %struct.mmu_gather_batch*, %struct.mmu_gather_batch** %4, align 8
  %53 = load %struct.mmu_gather*, %struct.mmu_gather** %3, align 8
  %54 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %53, i32 0, i32 1
  store %struct.mmu_gather_batch* %52, %struct.mmu_gather_batch** %54, align 8
  store i32 1, i32* %2, align 4
  br label %55

55:                                               ; preds = %35, %34, %24, %12
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i64 @__get_free_pages(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
