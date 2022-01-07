; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmu_gather.c_tlb_batch_list_free.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmu_gather.c_tlb_batch_list_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_gather = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mmu_gather_batch* }
%struct.mmu_gather_batch = type { %struct.mmu_gather_batch* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmu_gather*)* @tlb_batch_list_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tlb_batch_list_free(%struct.mmu_gather* %0) #0 {
  %2 = alloca %struct.mmu_gather*, align 8
  %3 = alloca %struct.mmu_gather_batch*, align 8
  %4 = alloca %struct.mmu_gather_batch*, align 8
  store %struct.mmu_gather* %0, %struct.mmu_gather** %2, align 8
  %5 = load %struct.mmu_gather*, %struct.mmu_gather** %2, align 8
  %6 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.mmu_gather_batch*, %struct.mmu_gather_batch** %7, align 8
  store %struct.mmu_gather_batch* %8, %struct.mmu_gather_batch** %3, align 8
  br label %9

9:                                                ; preds = %19, %1
  %10 = load %struct.mmu_gather_batch*, %struct.mmu_gather_batch** %3, align 8
  %11 = icmp ne %struct.mmu_gather_batch* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  %13 = load %struct.mmu_gather_batch*, %struct.mmu_gather_batch** %3, align 8
  %14 = getelementptr inbounds %struct.mmu_gather_batch, %struct.mmu_gather_batch* %13, i32 0, i32 0
  %15 = load %struct.mmu_gather_batch*, %struct.mmu_gather_batch** %14, align 8
  store %struct.mmu_gather_batch* %15, %struct.mmu_gather_batch** %4, align 8
  %16 = load %struct.mmu_gather_batch*, %struct.mmu_gather_batch** %3, align 8
  %17 = ptrtoint %struct.mmu_gather_batch* %16 to i64
  %18 = call i32 @free_pages(i64 %17, i32 0)
  br label %19

19:                                               ; preds = %12
  %20 = load %struct.mmu_gather_batch*, %struct.mmu_gather_batch** %4, align 8
  store %struct.mmu_gather_batch* %20, %struct.mmu_gather_batch** %3, align 8
  br label %9

21:                                               ; preds = %9
  %22 = load %struct.mmu_gather*, %struct.mmu_gather** %2, align 8
  %23 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store %struct.mmu_gather_batch* null, %struct.mmu_gather_batch** %24, align 8
  ret void
}

declare dso_local i32 @free_pages(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
