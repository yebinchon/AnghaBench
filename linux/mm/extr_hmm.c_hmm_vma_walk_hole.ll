; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hmm.c_hmm_vma_walk_hole.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hmm.c_hmm_vma_walk_hole.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_walk = type { %struct.hmm_vma_walk* }
%struct.hmm_vma_walk = type { %struct.hmm_range* }
%struct.hmm_range = type { i64, i32* }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.mm_walk*)* @hmm_vma_walk_hole to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hmm_vma_walk_hole(i64 %0, i64 %1, %struct.mm_walk* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mm_walk*, align 8
  %7 = alloca %struct.hmm_vma_walk*, align 8
  %8 = alloca %struct.hmm_range*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.mm_walk* %2, %struct.mm_walk** %6, align 8
  %14 = load %struct.mm_walk*, %struct.mm_walk** %6, align 8
  %15 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %14, i32 0, i32 0
  %16 = load %struct.hmm_vma_walk*, %struct.hmm_vma_walk** %15, align 8
  store %struct.hmm_vma_walk* %16, %struct.hmm_vma_walk** %7, align 8
  %17 = load %struct.hmm_vma_walk*, %struct.hmm_vma_walk** %7, align 8
  %18 = getelementptr inbounds %struct.hmm_vma_walk, %struct.hmm_vma_walk* %17, i32 0, i32 0
  %19 = load %struct.hmm_range*, %struct.hmm_range** %18, align 8
  store %struct.hmm_range* %19, %struct.hmm_range** %8, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load %struct.hmm_range*, %struct.hmm_range** %8, align 8
  %22 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = sub i64 %20, %23
  %25 = load i64, i64* @PAGE_SHIFT, align 8
  %26 = lshr i64 %24, %25
  store i64 %26, i64* %11, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* %4, align 8
  %29 = sub i64 %27, %28
  %30 = load i64, i64* @PAGE_SHIFT, align 8
  %31 = lshr i64 %29, %30
  store i64 %31, i64* %12, align 8
  %32 = load %struct.hmm_range*, %struct.hmm_range** %8, align 8
  %33 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* %11, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32* %36, i32** %13, align 8
  %37 = load %struct.hmm_vma_walk*, %struct.hmm_vma_walk** %7, align 8
  %38 = load i32*, i32** %13, align 8
  %39 = load i64, i64* %12, align 8
  %40 = call i32 @hmm_range_need_fault(%struct.hmm_vma_walk* %37, i32* %38, i64 %39, i32 0, i32* %9, i32* %10)
  %41 = load i64, i64* %4, align 8
  %42 = load i64, i64* %5, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.mm_walk*, %struct.mm_walk** %6, align 8
  %46 = call i32 @hmm_vma_walk_hole_(i64 %41, i64 %42, i32 %43, i32 %44, %struct.mm_walk* %45)
  ret i32 %46
}

declare dso_local i32 @hmm_range_need_fault(%struct.hmm_vma_walk*, i32*, i64, i32, i32*, i32*) #1

declare dso_local i32 @hmm_vma_walk_hole_(i64, i64, i32, i32, %struct.mm_walk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
