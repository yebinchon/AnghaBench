; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_queue_pages_test_walk.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_queue_pages_test_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_walk = type { %struct.queue_pages*, %struct.vm_area_struct* }
%struct.queue_pages = type { i64, %struct.vm_area_struct* }
%struct.vm_area_struct = type { i64, i64, i32, i32 }

@MPOL_MF_STRICT = common dso_local global i64 0, align 8
@MPOL_MF_DISCONTIG_OK = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@MPOL_MF_LAZY = common dso_local global i64 0, align 8
@VM_READ = common dso_local global i32 0, align 4
@VM_EXEC = common dso_local global i32 0, align 4
@VM_WRITE = common dso_local global i32 0, align 4
@VM_MIXEDMAP = common dso_local global i32 0, align 4
@MPOL_MF_VALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.mm_walk*)* @queue_pages_test_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_pages_test_walk(i64 %0, i64 %1, %struct.mm_walk* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mm_walk*, align 8
  %8 = alloca %struct.vm_area_struct*, align 8
  %9 = alloca %struct.queue_pages*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.mm_walk* %2, %struct.mm_walk** %7, align 8
  %12 = load %struct.mm_walk*, %struct.mm_walk** %7, align 8
  %13 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %12, i32 0, i32 1
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  store %struct.vm_area_struct* %14, %struct.vm_area_struct** %8, align 8
  %15 = load %struct.mm_walk*, %struct.mm_walk** %7, align 8
  %16 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %15, i32 0, i32 0
  %17 = load %struct.queue_pages*, %struct.queue_pages** %16, align 8
  store %struct.queue_pages* %17, %struct.queue_pages** %9, align 8
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %19 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %10, align 8
  %21 = load %struct.queue_pages*, %struct.queue_pages** %9, align 8
  %22 = getelementptr inbounds %struct.queue_pages, %struct.queue_pages* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %11, align 8
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %25 = call i32 @vma_migratable(%struct.vm_area_struct* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %3
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* @MPOL_MF_STRICT, align 8
  %30 = and i64 %28, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  store i32 1, i32* %4, align 4
  br label %130

33:                                               ; preds = %27, %3
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp ugt i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i64, i64* %6, align 8
  store i64 %38, i64* %10, align 8
  br label %39

39:                                               ; preds = %37, %33
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %41 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = icmp ugt i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %47 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %5, align 8
  br label %49

49:                                               ; preds = %45, %39
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* @MPOL_MF_DISCONTIG_OK, align 8
  %52 = and i64 %50, %51
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %87, label %54

54:                                               ; preds = %49
  %55 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %56 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %54
  %60 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %61 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %6, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* @EFAULT, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %130

68:                                               ; preds = %59, %54
  %69 = load %struct.queue_pages*, %struct.queue_pages** %9, align 8
  %70 = getelementptr inbounds %struct.queue_pages, %struct.queue_pages* %69, i32 0, i32 1
  %71 = load %struct.vm_area_struct*, %struct.vm_area_struct** %70, align 8
  %72 = icmp ne %struct.vm_area_struct* %71, null
  br i1 %72, label %73, label %86

73:                                               ; preds = %68
  %74 = load %struct.queue_pages*, %struct.queue_pages** %9, align 8
  %75 = getelementptr inbounds %struct.queue_pages, %struct.queue_pages* %74, i32 0, i32 1
  %76 = load %struct.vm_area_struct*, %struct.vm_area_struct** %75, align 8
  %77 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %80 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ult i64 %78, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %73
  %84 = load i32, i32* @EFAULT, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %130

86:                                               ; preds = %73, %68
  br label %87

87:                                               ; preds = %86, %49
  %88 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %89 = load %struct.queue_pages*, %struct.queue_pages** %9, align 8
  %90 = getelementptr inbounds %struct.queue_pages, %struct.queue_pages* %89, i32 0, i32 1
  store %struct.vm_area_struct* %88, %struct.vm_area_struct** %90, align 8
  %91 = load i64, i64* %11, align 8
  %92 = load i64, i64* @MPOL_MF_LAZY, align 8
  %93 = and i64 %91, %92
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %123

95:                                               ; preds = %87
  %96 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %97 = call i32 @is_vm_hugetlb_page(%struct.vm_area_struct* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %122, label %99

99:                                               ; preds = %95
  %100 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %101 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @VM_READ, align 4
  %104 = load i32, i32* @VM_EXEC, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @VM_WRITE, align 4
  %107 = or i32 %105, %106
  %108 = and i32 %102, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %99
  %111 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %112 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @VM_MIXEDMAP, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %110
  %118 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %119 = load i64, i64* %5, align 8
  %120 = load i64, i64* %10, align 8
  %121 = call i32 @change_prot_numa(%struct.vm_area_struct* %118, i64 %119, i64 %120)
  br label %122

122:                                              ; preds = %117, %110, %99, %95
  store i32 1, i32* %4, align 4
  br label %130

123:                                              ; preds = %87
  %124 = load i64, i64* %11, align 8
  %125 = load i64, i64* @MPOL_MF_VALID, align 8
  %126 = and i64 %124, %125
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  store i32 0, i32* %4, align 4
  br label %130

129:                                              ; preds = %123
  store i32 1, i32* %4, align 4
  br label %130

130:                                              ; preds = %129, %128, %122, %83, %65, %32
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @vma_migratable(%struct.vm_area_struct*) #1

declare dso_local i32 @is_vm_hugetlb_page(%struct.vm_area_struct*) #1

declare dso_local i32 @change_prot_numa(%struct.vm_area_struct*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
