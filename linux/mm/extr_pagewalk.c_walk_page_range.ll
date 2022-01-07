; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_pagewalk.c_walk_page_range.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_pagewalk.c_walk_page_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.mm_walk_ops = type { i64 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct* }
%struct.mm_walk = type { i8*, %struct.mm_walk_ops*, %struct.vm_area_struct*, %struct.mm_struct* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @walk_page_range(%struct.mm_struct* %0, i64 %1, i64 %2, %struct.mm_walk_ops* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mm_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mm_walk_ops*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.vm_area_struct*, align 8
  %15 = alloca %struct.mm_walk, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.mm_walk_ops* %3, %struct.mm_walk_ops** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 0, i32* %12, align 4
  %16 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %15, i32 0, i32 0
  %17 = load i8*, i8** %11, align 8
  store i8* %17, i8** %16, align 8
  %18 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %15, i32 0, i32 1
  %19 = load %struct.mm_walk_ops*, %struct.mm_walk_ops** %10, align 8
  store %struct.mm_walk_ops* %19, %struct.mm_walk_ops** %18, align 8
  %20 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %15, i32 0, i32 2
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %20, align 8
  %21 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %15, i32 0, i32 3
  %22 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  store %struct.mm_struct* %22, %struct.mm_struct** %21, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp uge i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %5
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %113

29:                                               ; preds = %5
  %30 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %15, i32 0, i32 3
  %31 = load %struct.mm_struct*, %struct.mm_struct** %30, align 8
  %32 = icmp ne %struct.mm_struct* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %113

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %15, i32 0, i32 3
  %38 = load %struct.mm_struct*, %struct.mm_struct** %37, align 8
  %39 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %38, i32 0, i32 0
  %40 = call i32 @lockdep_assert_held(i32* %39)
  %41 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %15, i32 0, i32 3
  %42 = load %struct.mm_struct*, %struct.mm_struct** %41, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %42, i64 %43)
  store %struct.vm_area_struct* %44, %struct.vm_area_struct** %14, align 8
  br label %45

45:                                               ; preds = %106, %36
  %46 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %47 = icmp ne %struct.vm_area_struct* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %15, i32 0, i32 2
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %49, align 8
  %50 = load i64, i64* %9, align 8
  store i64 %50, i64* %13, align 8
  br label %87

51:                                               ; preds = %45
  %52 = load i64, i64* %8, align 8
  %53 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %54 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ult i64 %52, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %15, i32 0, i32 2
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %58, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %61 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @min(i64 %59, i64 %62)
  store i64 %63, i64* %13, align 8
  br label %86

64:                                               ; preds = %51
  %65 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %66 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %15, i32 0, i32 2
  store %struct.vm_area_struct* %65, %struct.vm_area_struct** %66, align 8
  %67 = load i64, i64* %9, align 8
  %68 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %69 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @min(i64 %67, i64 %70)
  store i64 %71, i64* %13, align 8
  %72 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %73 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %72, i32 0, i32 2
  %74 = load %struct.vm_area_struct*, %struct.vm_area_struct** %73, align 8
  store %struct.vm_area_struct* %74, %struct.vm_area_struct** %14, align 8
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* %13, align 8
  %77 = call i32 @walk_page_test(i64 %75, i64 %76, %struct.mm_walk* %15)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %64
  store i32 0, i32* %12, align 4
  br label %106

81:                                               ; preds = %64
  %82 = load i32, i32* %12, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  br label %111

85:                                               ; preds = %81
  br label %86

86:                                               ; preds = %85, %57
  br label %87

87:                                               ; preds = %86, %48
  %88 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %15, i32 0, i32 2
  %89 = load %struct.vm_area_struct*, %struct.vm_area_struct** %88, align 8
  %90 = icmp ne %struct.vm_area_struct* %89, null
  br i1 %90, label %97, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %15, i32 0, i32 1
  %93 = load %struct.mm_walk_ops*, %struct.mm_walk_ops** %92, align 8
  %94 = getelementptr inbounds %struct.mm_walk_ops, %struct.mm_walk_ops* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %91, %87
  %98 = load i64, i64* %8, align 8
  %99 = load i64, i64* %13, align 8
  %100 = call i32 @__walk_page_range(i64 %98, i64 %99, %struct.mm_walk* %15)
  store i32 %100, i32* %12, align 4
  br label %101

101:                                              ; preds = %97, %91
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  br label %111

105:                                              ; preds = %101
  br label %106

106:                                              ; preds = %105, %80
  %107 = load i64, i64* %13, align 8
  store i64 %107, i64* %8, align 8
  %108 = load i64, i64* %8, align 8
  %109 = load i64, i64* %9, align 8
  %110 = icmp ult i64 %108, %109
  br i1 %110, label %45, label %111

111:                                              ; preds = %106, %104, %84
  %112 = load i32, i32* %12, align 4
  store i32 %112, i32* %6, align 4
  br label %113

113:                                              ; preds = %111, %33, %26
  %114 = load i32, i32* %6, align 4
  ret i32 %114
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @walk_page_test(i64, i64, %struct.mm_walk*) #1

declare dso_local i32 @__walk_page_range(i64, i64, %struct.mm_walk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
