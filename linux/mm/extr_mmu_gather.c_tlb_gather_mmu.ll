; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmu_gather.c_tlb_gather_mmu.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmu_gather.c_tlb_gather_mmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_gather = type { i32, %struct.mm_struct*, i64, i32*, i64, %struct.TYPE_2__, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32, i64, i32* }
%struct.mm_struct = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tlb_gather_mmu(%struct.mmu_gather* %0, %struct.mm_struct* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.mmu_gather*, align 8
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.mmu_gather* %0, %struct.mmu_gather** %5, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %10 = load %struct.mmu_gather*, %struct.mmu_gather** %5, align 8
  %11 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %10, i32 0, i32 1
  store %struct.mm_struct* %9, %struct.mm_struct** %11, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* %8, align 8
  %14 = add i64 %13, 1
  %15 = or i64 %12, %14
  %16 = icmp ne i64 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = load %struct.mmu_gather*, %struct.mmu_gather** %5, align 8
  %20 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.mmu_gather*, %struct.mmu_gather** %5, align 8
  %22 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %21, i32 0, i32 8
  store i64 0, i64* %22, align 8
  %23 = load %struct.mmu_gather*, %struct.mmu_gather** %5, align 8
  %24 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  store i32* null, i32** %25, align 8
  %26 = load %struct.mmu_gather*, %struct.mmu_gather** %5, align 8
  %27 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.mmu_gather*, %struct.mmu_gather** %5, align 8
  %30 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @ARRAY_SIZE(i32 %31)
  %33 = load %struct.mmu_gather*, %struct.mmu_gather** %5, align 8
  %34 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load %struct.mmu_gather*, %struct.mmu_gather** %5, align 8
  %37 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %36, i32 0, i32 5
  %38 = load %struct.mmu_gather*, %struct.mmu_gather** %5, align 8
  %39 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %38, i32 0, i32 6
  store %struct.TYPE_2__* %37, %struct.TYPE_2__** %39, align 8
  %40 = load %struct.mmu_gather*, %struct.mmu_gather** %5, align 8
  %41 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %40, i32 0, i32 4
  store i64 0, i64* %41, align 8
  %42 = load %struct.mmu_gather*, %struct.mmu_gather** %5, align 8
  %43 = call i32 @__tlb_reset_range(%struct.mmu_gather* %42)
  %44 = load %struct.mmu_gather*, %struct.mmu_gather** %5, align 8
  %45 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %44, i32 0, i32 1
  %46 = load %struct.mm_struct*, %struct.mm_struct** %45, align 8
  %47 = call i32 @inc_tlb_flush_pending(%struct.mm_struct* %46)
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @__tlb_reset_range(%struct.mmu_gather*) #1

declare dso_local i32 @inc_tlb_flush_pending(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
