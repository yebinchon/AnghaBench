; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hmm.c_hmm_range_need_fault.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hmm.c_hmm_range_need_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hmm_vma_walk = type { i32 }

@HMM_FAULT_SNAPSHOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hmm_vma_walk*, i32*, i64, i32, i32*, i32*)* @hmm_range_need_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hmm_range_need_fault(%struct.hmm_vma_walk* %0, i32* %1, i64 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.hmm_vma_walk*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store %struct.hmm_vma_walk* %0, %struct.hmm_vma_walk** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load %struct.hmm_vma_walk*, %struct.hmm_vma_walk** %7, align 8
  %15 = getelementptr inbounds %struct.hmm_vma_walk, %struct.hmm_vma_walk* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @HMM_FAULT_SNAPSHOT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load i32*, i32** %12, align 8
  store i32 0, i32* %21, align 4
  %22 = load i32*, i32** %11, align 8
  store i32 0, i32* %22, align 4
  br label %48

23:                                               ; preds = %6
  %24 = load i32*, i32** %12, align 8
  store i32 0, i32* %24, align 4
  %25 = load i32*, i32** %11, align 8
  store i32 0, i32* %25, align 4
  store i64 0, i64* %13, align 8
  br label %26

26:                                               ; preds = %45, %23
  %27 = load i64, i64* %13, align 8
  %28 = load i64, i64* %9, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %26
  %31 = load %struct.hmm_vma_walk*, %struct.hmm_vma_walk** %7, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load i64, i64* %13, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32*, i32** %11, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = call i32 @hmm_pte_need_fault(%struct.hmm_vma_walk* %31, i32 %35, i32 %36, i32* %37, i32* %38)
  %40 = load i32*, i32** %12, align 8
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %30
  br label %48

44:                                               ; preds = %30
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %13, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %13, align 8
  br label %26

48:                                               ; preds = %20, %43, %26
  ret void
}

declare dso_local i32 @hmm_pte_need_fault(%struct.hmm_vma_walk*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
