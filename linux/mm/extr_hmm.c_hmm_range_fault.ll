; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hmm.c_hmm_range_fault.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hmm.c_hmm_range_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hmm_range = type { i64, i64, i32*, i64, %struct.hmm* }
%struct.hmm = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.hmm_vma_walk = type { i64, i32, %struct.hmm_range*, i32* }
%struct.vm_area_struct = type { i64, i32, i32 }

@VM_IO = common dso_local global i64 0, align 8
@VM_PFNMAP = common dso_local global i64 0, align 8
@VM_MIXEDMAP = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i64 0, align 8
@VM_READ = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8
@hmm_walk_ops = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hmm_range_fault(%struct.hmm_range* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.hmm_range*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.hmm_vma_walk, align 8
  %10 = alloca %struct.hmm*, align 8
  %11 = alloca %struct.vm_area_struct*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.hmm_range* %0, %struct.hmm_range** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i64, i64* @VM_IO, align 8
  %15 = load i64, i64* @VM_PFNMAP, align 8
  %16 = or i64 %14, %15
  %17 = load i64, i64* @VM_MIXEDMAP, align 8
  %18 = or i64 %16, %17
  store i64 %18, i64* %6, align 8
  %19 = load %struct.hmm_range*, %struct.hmm_range** %4, align 8
  %20 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %7, align 8
  %22 = load %struct.hmm_range*, %struct.hmm_range** %4, align 8
  %23 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %22, i32 0, i32 4
  %24 = load %struct.hmm*, %struct.hmm** %23, align 8
  store %struct.hmm* %24, %struct.hmm** %10, align 8
  %25 = load %struct.hmm*, %struct.hmm** %10, align 8
  %26 = getelementptr inbounds %struct.hmm, %struct.hmm* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = call i32 @lockdep_assert_held(i32* %29)
  br label %31

31:                                               ; preds = %151, %2
  %32 = load %struct.hmm_range*, %struct.hmm_range** %4, align 8
  %33 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i64, i64* @EBUSY, align 8
  %38 = sub nsw i64 0, %37
  store i64 %38, i64* %3, align 8
  br label %166

39:                                               ; preds = %31
  %40 = load %struct.hmm*, %struct.hmm** %10, align 8
  %41 = getelementptr inbounds %struct.hmm, %struct.hmm* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call %struct.vm_area_struct* @find_vma(%struct.TYPE_4__* %43, i64 %44)
  store %struct.vm_area_struct* %45, %struct.vm_area_struct** %11, align 8
  %46 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %47 = icmp eq %struct.vm_area_struct* %46, null
  br i1 %47, label %55, label %48

48:                                               ; preds = %39
  %49 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %50 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %6, align 8
  %53 = and i64 %51, %52
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48, %39
  %56 = load i64, i64* @EFAULT, align 8
  %57 = sub nsw i64 0, %56
  store i64 %57, i64* %3, align 8
  br label %166

58:                                               ; preds = %48
  %59 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %60 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* @VM_READ, align 4
  %63 = sext i32 %62 to i64
  %64 = and i64 %61, %63
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %80, label %66

66:                                               ; preds = %58
  %67 = load %struct.hmm_range*, %struct.hmm_range** %4, align 8
  %68 = load %struct.hmm_range*, %struct.hmm_range** %4, align 8
  %69 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.hmm_range*, %struct.hmm_range** %4, align 8
  %72 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.hmm_range*, %struct.hmm_range** %4, align 8
  %75 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @hmm_pfns_clear(%struct.hmm_range* %67, i32* %70, i64 %73, i64 %76)
  %78 = load i64, i64* @EPERM, align 8
  %79 = sub nsw i64 0, %78
  store i64 %79, i64* %3, align 8
  br label %166

80:                                               ; preds = %58
  %81 = getelementptr inbounds %struct.hmm_vma_walk, %struct.hmm_vma_walk* %9, i32 0, i32 3
  store i32* null, i32** %81, align 8
  %82 = load i64, i64* %7, align 8
  %83 = getelementptr inbounds %struct.hmm_vma_walk, %struct.hmm_vma_walk* %9, i32 0, i32 0
  store i64 %82, i64* %83, align 8
  %84 = load i32, i32* %5, align 4
  %85 = getelementptr inbounds %struct.hmm_vma_walk, %struct.hmm_vma_walk* %9, i32 0, i32 1
  store i32 %84, i32* %85, align 8
  %86 = load %struct.hmm_range*, %struct.hmm_range** %4, align 8
  %87 = getelementptr inbounds %struct.hmm_vma_walk, %struct.hmm_vma_walk* %9, i32 0, i32 2
  store %struct.hmm_range* %86, %struct.hmm_range** %87, align 8
  %88 = load %struct.hmm_range*, %struct.hmm_range** %4, align 8
  %89 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %92 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @min(i64 %90, i32 %93)
  store i64 %94, i64* %8, align 8
  %95 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %96 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i64, i64* %7, align 8
  %99 = load i64, i64* %8, align 8
  %100 = call i32 @walk_page_range(i32 %97, i64 %98, i64 %99, i32* @hmm_walk_ops, %struct.hmm_vma_walk* %9)
  br label %101

101:                                              ; preds = %121, %80
  %102 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %103 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load i64, i64* %7, align 8
  %106 = load i64, i64* %8, align 8
  %107 = call i32 @walk_page_range(i32 %104, i64 %105, i64 %106, i32* @hmm_walk_ops, %struct.hmm_vma_walk* %9)
  store i32 %107, i32* %12, align 4
  %108 = getelementptr inbounds %struct.hmm_vma_walk, %struct.hmm_vma_walk* %9, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %7, align 8
  br label %110

110:                                              ; preds = %101
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = load i64, i64* @EBUSY, align 8
  %114 = sub nsw i64 0, %113
  %115 = icmp eq i64 %112, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %110
  %117 = load %struct.hmm_range*, %struct.hmm_range** %4, align 8
  %118 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br label %121

121:                                              ; preds = %116, %110
  %122 = phi i1 [ false, %110 ], [ %120, %116 ]
  br i1 %122, label %101, label %123

123:                                              ; preds = %121
  %124 = load i32, i32* %12, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %149

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct.hmm_vma_walk, %struct.hmm_vma_walk* %9, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.hmm_range*, %struct.hmm_range** %4, align 8
  %130 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = sub i64 %128, %131
  %133 = load i64, i64* @PAGE_SHIFT, align 8
  %134 = lshr i64 %132, %133
  store i64 %134, i64* %13, align 8
  %135 = load %struct.hmm_range*, %struct.hmm_range** %4, align 8
  %136 = load %struct.hmm_range*, %struct.hmm_range** %4, align 8
  %137 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = load i64, i64* %13, align 8
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  %141 = getelementptr inbounds %struct.hmm_vma_walk, %struct.hmm_vma_walk* %9, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.hmm_range*, %struct.hmm_range** %4, align 8
  %144 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @hmm_pfns_clear(%struct.hmm_range* %135, i32* %140, i64 %142, i64 %145)
  %147 = load i32, i32* %12, align 4
  %148 = sext i32 %147 to i64
  store i64 %148, i64* %3, align 8
  br label %166

149:                                              ; preds = %123
  %150 = load i64, i64* %8, align 8
  store i64 %150, i64* %7, align 8
  br label %151

151:                                              ; preds = %149
  %152 = load i64, i64* %7, align 8
  %153 = load %struct.hmm_range*, %struct.hmm_range** %4, align 8
  %154 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = icmp ult i64 %152, %155
  br i1 %156, label %31, label %157

157:                                              ; preds = %151
  %158 = getelementptr inbounds %struct.hmm_vma_walk, %struct.hmm_vma_walk* %9, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.hmm_range*, %struct.hmm_range** %4, align 8
  %161 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = sub i64 %159, %162
  %164 = load i64, i64* @PAGE_SHIFT, align 8
  %165 = lshr i64 %163, %164
  store i64 %165, i64* %3, align 8
  br label %166

166:                                              ; preds = %157, %126, %66, %55, %36
  %167 = load i64, i64* %3, align 8
  ret i64 %167
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.TYPE_4__*, i64) #1

declare dso_local i32 @hmm_pfns_clear(%struct.hmm_range*, i32*, i64, i64) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i32 @walk_page_range(i32, i64, i64, i32*, %struct.hmm_vma_walk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
