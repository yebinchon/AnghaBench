; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hmm.c_hmm_pte_need_fault.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hmm.c_hmm_pte_need_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hmm_vma_walk = type { i32, %struct.hmm_range* }
%struct.hmm_range = type { i32, i32, i32* }

@HMM_FAULT_SNAPSHOT = common dso_local global i32 0, align 4
@HMM_PFN_VALID = common dso_local global i64 0, align 8
@HMM_PFN_DEVICE_PRIVATE = common dso_local global i64 0, align 8
@HMM_PFN_WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hmm_vma_walk*, i32, i32, i32*, i32*)* @hmm_pte_need_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hmm_pte_need_fault(%struct.hmm_vma_walk* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.hmm_vma_walk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.hmm_range*, align 8
  store %struct.hmm_vma_walk* %0, %struct.hmm_vma_walk** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load %struct.hmm_vma_walk*, %struct.hmm_vma_walk** %6, align 8
  %13 = getelementptr inbounds %struct.hmm_vma_walk, %struct.hmm_vma_walk* %12, i32 0, i32 1
  %14 = load %struct.hmm_range*, %struct.hmm_range** %13, align 8
  store %struct.hmm_range* %14, %struct.hmm_range** %11, align 8
  %15 = load %struct.hmm_vma_walk*, %struct.hmm_vma_walk** %6, align 8
  %16 = getelementptr inbounds %struct.hmm_vma_walk, %struct.hmm_vma_walk* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @HMM_FAULT_SNAPSHOT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  br label %109

22:                                               ; preds = %5
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.hmm_range*, %struct.hmm_range** %11, align 8
  %25 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %23, %26
  %28 = load %struct.hmm_range*, %struct.hmm_range** %11, align 8
  %29 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %27, %30
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.hmm_range*, %struct.hmm_range** %11, align 8
  %34 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @HMM_PFN_VALID, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %32, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %22
  br label %109

42:                                               ; preds = %22
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.hmm_range*, %struct.hmm_range** %11, align 8
  %45 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @HMM_PFN_DEVICE_PRIVATE, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %43, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %74

52:                                               ; preds = %42
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.hmm_range*, %struct.hmm_range** %11, align 8
  %55 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @HMM_PFN_DEVICE_PRIVATE, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %53, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %52
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.hmm_range*, %struct.hmm_range** %11, align 8
  %65 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* @HMM_PFN_WRITE, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %63, %69
  %71 = load i32*, i32** %10, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32*, i32** %9, align 8
  store i32 1, i32* %72, align 4
  br label %73

73:                                               ; preds = %62, %52
  br label %109

74:                                               ; preds = %42
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.hmm_range*, %struct.hmm_range** %11, align 8
  %77 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* @HMM_PFN_VALID, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %75, %81
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = load i32*, i32** %9, align 8
  store i32 %85, i32* %86, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.hmm_range*, %struct.hmm_range** %11, align 8
  %89 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = load i64, i64* @HMM_PFN_WRITE, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %87, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %74
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.hmm_range*, %struct.hmm_range** %11, align 8
  %99 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* @HMM_PFN_WRITE, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %97, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %96
  %107 = load i32*, i32** %10, align 8
  store i32 1, i32* %107, align 4
  %108 = load i32*, i32** %9, align 8
  store i32 1, i32* %108, align 4
  br label %109

109:                                              ; preds = %21, %41, %73, %106, %96, %74
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
