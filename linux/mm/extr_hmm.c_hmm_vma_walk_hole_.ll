; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hmm.c_hmm_vma_walk_hole_.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hmm.c_hmm_vma_walk_hole_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_walk = type { %struct.TYPE_2__*, %struct.hmm_vma_walk* }
%struct.TYPE_2__ = type { i32 }
%struct.hmm_vma_walk = type { i64, %struct.hmm_range* }
%struct.hmm_range = type { i64, i32*, i32* }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@VM_WRITE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@HMM_PFN_NONE = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32, i32, %struct.mm_walk*)* @hmm_vma_walk_hole_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hmm_vma_walk_hole_(i64 %0, i64 %1, i32 %2, i32 %3, %struct.mm_walk* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mm_walk*, align 8
  %12 = alloca %struct.hmm_vma_walk*, align 8
  %13 = alloca %struct.hmm_range*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.mm_walk* %4, %struct.mm_walk** %11, align 8
  %17 = load %struct.mm_walk*, %struct.mm_walk** %11, align 8
  %18 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %17, i32 0, i32 1
  %19 = load %struct.hmm_vma_walk*, %struct.hmm_vma_walk** %18, align 8
  store %struct.hmm_vma_walk* %19, %struct.hmm_vma_walk** %12, align 8
  %20 = load %struct.hmm_vma_walk*, %struct.hmm_vma_walk** %12, align 8
  %21 = getelementptr inbounds %struct.hmm_vma_walk, %struct.hmm_vma_walk* %20, i32 0, i32 1
  %22 = load %struct.hmm_range*, %struct.hmm_range** %21, align 8
  store %struct.hmm_range* %22, %struct.hmm_range** %13, align 8
  %23 = load %struct.hmm_range*, %struct.hmm_range** %13, align 8
  %24 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %14, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.hmm_vma_walk*, %struct.hmm_vma_walk** %12, align 8
  %28 = getelementptr inbounds %struct.hmm_vma_walk, %struct.hmm_vma_walk* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.hmm_range*, %struct.hmm_range** %13, align 8
  %31 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = sub i64 %29, %32
  %34 = load i64, i64* @PAGE_SHIFT, align 8
  %35 = lshr i64 %33, %34
  store i64 %35, i64* %15, align 8
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %5
  %39 = load %struct.mm_walk*, %struct.mm_walk** %11, align 8
  %40 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = icmp ne %struct.TYPE_2__* %41, null
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = load %struct.mm_walk*, %struct.mm_walk** %11, align 8
  %45 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @VM_WRITE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %43
  %53 = load i32, i32* @EPERM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  br label %109

55:                                               ; preds = %43, %38, %5
  br label %56

56:                                               ; preds = %91, %55
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* %8, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %97

60:                                               ; preds = %56
  %61 = load %struct.hmm_range*, %struct.hmm_range** %13, align 8
  %62 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* @HMM_PFN_NONE, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %14, align 8
  %68 = load i64, i64* %15, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32 %66, i32* %69, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %60
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %72, %60
  %76 = load %struct.mm_walk*, %struct.mm_walk** %11, align 8
  %77 = load i64, i64* %7, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load i32*, i32** %14, align 8
  %80 = load i64, i64* %15, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = call i32 @hmm_vma_do_fault(%struct.mm_walk* %76, i64 %77, i32 %78, i32* %81)
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* @EBUSY, align 4
  %85 = sub nsw i32 0, %84
  %86 = icmp ne i32 %83, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %75
  %88 = load i32, i32* %16, align 4
  store i32 %88, i32* %6, align 4
  br label %109

89:                                               ; preds = %75
  br label %90

90:                                               ; preds = %89, %72
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* @PAGE_SIZE, align 8
  %93 = load i64, i64* %7, align 8
  %94 = add i64 %93, %92
  store i64 %94, i64* %7, align 8
  %95 = load i64, i64* %15, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %15, align 8
  br label %56

97:                                               ; preds = %56
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100, %97
  %104 = load i32, i32* @EBUSY, align 4
  %105 = sub nsw i32 0, %104
  br label %107

106:                                              ; preds = %100
  br label %107

107:                                              ; preds = %106, %103
  %108 = phi i32 [ %105, %103 ], [ 0, %106 ]
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %107, %87, %52
  %110 = load i32, i32* %6, align 4
  ret i32 %110
}

declare dso_local i32 @hmm_vma_do_fault(%struct.mm_walk*, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
