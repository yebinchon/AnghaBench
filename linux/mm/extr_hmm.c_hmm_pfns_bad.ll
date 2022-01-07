; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hmm.c_hmm_pfns_bad.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hmm.c_hmm_pfns_bad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_walk = type { %struct.hmm_vma_walk* }
%struct.hmm_vma_walk = type { %struct.hmm_range* }
%struct.hmm_range = type { i64, i32*, i32* }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@HMM_PFN_ERROR = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.mm_walk*)* @hmm_pfns_bad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hmm_pfns_bad(i64 %0, i64 %1, %struct.mm_walk* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mm_walk*, align 8
  %7 = alloca %struct.hmm_vma_walk*, align 8
  %8 = alloca %struct.hmm_range*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.mm_walk* %2, %struct.mm_walk** %6, align 8
  %11 = load %struct.mm_walk*, %struct.mm_walk** %6, align 8
  %12 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %11, i32 0, i32 0
  %13 = load %struct.hmm_vma_walk*, %struct.hmm_vma_walk** %12, align 8
  store %struct.hmm_vma_walk* %13, %struct.hmm_vma_walk** %7, align 8
  %14 = load %struct.hmm_vma_walk*, %struct.hmm_vma_walk** %7, align 8
  %15 = getelementptr inbounds %struct.hmm_vma_walk, %struct.hmm_vma_walk* %14, i32 0, i32 0
  %16 = load %struct.hmm_range*, %struct.hmm_range** %15, align 8
  store %struct.hmm_range* %16, %struct.hmm_range** %8, align 8
  %17 = load %struct.hmm_range*, %struct.hmm_range** %8, align 8
  %18 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %9, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load %struct.hmm_range*, %struct.hmm_range** %8, align 8
  %22 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = sub i64 %20, %23
  %25 = load i64, i64* @PAGE_SHIFT, align 8
  %26 = lshr i64 %24, %25
  store i64 %26, i64* %10, align 8
  br label %27

27:                                               ; preds = %41, %3
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %27
  %32 = load %struct.hmm_range*, %struct.hmm_range** %8, align 8
  %33 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @HMM_PFN_ERROR, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32 %37, i32* %40, align 4
  br label %41

41:                                               ; preds = %31
  %42 = load i64, i64* @PAGE_SIZE, align 8
  %43 = load i64, i64* %4, align 8
  %44 = add i64 %43, %42
  store i64 %44, i64* %4, align 8
  %45 = load i64, i64* %10, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %10, align 8
  br label %27

47:                                               ; preds = %27
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
