; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmu_gather.c___tlb_remove_page_size.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmu_gather.c___tlb_remove_page_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_gather = type { i32, %struct.mmu_gather_batch*, i32 }
%struct.mmu_gather_batch = type { i64, i64, %struct.page** }
%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__tlb_remove_page_size(%struct.mmu_gather* %0, %struct.page* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmu_gather*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mmu_gather_batch*, align 8
  store %struct.mmu_gather* %0, %struct.mmu_gather** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.mmu_gather*, %struct.mmu_gather** %5, align 8
  %10 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @VM_BUG_ON(i32 %14)
  %16 = load %struct.mmu_gather*, %struct.mmu_gather** %5, align 8
  %17 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %16, i32 0, i32 1
  %18 = load %struct.mmu_gather_batch*, %struct.mmu_gather_batch** %17, align 8
  store %struct.mmu_gather_batch* %18, %struct.mmu_gather_batch** %8, align 8
  %19 = load %struct.page*, %struct.page** %6, align 8
  %20 = load %struct.mmu_gather_batch*, %struct.mmu_gather_batch** %8, align 8
  %21 = getelementptr inbounds %struct.mmu_gather_batch, %struct.mmu_gather_batch* %20, i32 0, i32 2
  %22 = load %struct.page**, %struct.page*** %21, align 8
  %23 = load %struct.mmu_gather_batch*, %struct.mmu_gather_batch** %8, align 8
  %24 = getelementptr inbounds %struct.mmu_gather_batch, %struct.mmu_gather_batch* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %24, align 8
  %27 = getelementptr inbounds %struct.page*, %struct.page** %22, i64 %25
  store %struct.page* %19, %struct.page** %27, align 8
  %28 = load %struct.mmu_gather_batch*, %struct.mmu_gather_batch** %8, align 8
  %29 = getelementptr inbounds %struct.mmu_gather_batch, %struct.mmu_gather_batch* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.mmu_gather_batch*, %struct.mmu_gather_batch** %8, align 8
  %32 = getelementptr inbounds %struct.mmu_gather_batch, %struct.mmu_gather_batch* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %3
  %36 = load %struct.mmu_gather*, %struct.mmu_gather** %5, align 8
  %37 = call i32 @tlb_next_batch(%struct.mmu_gather* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  store i32 1, i32* %4, align 4
  br label %55

40:                                               ; preds = %35
  %41 = load %struct.mmu_gather*, %struct.mmu_gather** %5, align 8
  %42 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %41, i32 0, i32 1
  %43 = load %struct.mmu_gather_batch*, %struct.mmu_gather_batch** %42, align 8
  store %struct.mmu_gather_batch* %43, %struct.mmu_gather_batch** %8, align 8
  br label %44

44:                                               ; preds = %40, %3
  %45 = load %struct.mmu_gather_batch*, %struct.mmu_gather_batch** %8, align 8
  %46 = getelementptr inbounds %struct.mmu_gather_batch, %struct.mmu_gather_batch* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.mmu_gather_batch*, %struct.mmu_gather_batch** %8, align 8
  %49 = getelementptr inbounds %struct.mmu_gather_batch, %struct.mmu_gather_batch* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %47, %50
  %52 = zext i1 %51 to i32
  %53 = load %struct.page*, %struct.page** %6, align 8
  %54 = call i32 @VM_BUG_ON_PAGE(i32 %52, %struct.page* %53)
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %44, %39
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @tlb_next_batch(%struct.mmu_gather*) #1

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
