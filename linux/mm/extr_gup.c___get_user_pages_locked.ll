; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_gup.c___get_user_pages_locked.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_gup.c___get_user_pages_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.mm_struct = type { i32 }
%struct.page = type { i32 }
%struct.vm_area_struct = type { i32 }

@FOLL_WRITE = common dso_local global i32 0, align 4
@VM_WRITE = common dso_local global i64 0, align 8
@VM_MAYWRITE = common dso_local global i64 0, align 8
@VM_READ = common dso_local global i64 0, align 8
@VM_MAYREAD = common dso_local global i64 0, align 8
@FOLL_FORCE = common dso_local global i32 0, align 4
@VM_IO = common dso_local global i32 0, align 4
@VM_PFNMAP = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.task_struct*, %struct.mm_struct*, i64, i64, %struct.page**, %struct.vm_area_struct**, i32*, i32)* @__get_user_pages_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__get_user_pages_locked(%struct.task_struct* %0, %struct.mm_struct* %1, i64 %2, i64 %3, %struct.page** %4, %struct.vm_area_struct** %5, i32* %6, i32 %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca %struct.task_struct*, align 8
  %11 = alloca %struct.mm_struct*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.page**, align 8
  %15 = alloca %struct.vm_area_struct**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.vm_area_struct*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %10, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store %struct.page** %4, %struct.page*** %14, align 8
  store %struct.vm_area_struct** %5, %struct.vm_area_struct*** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  %21 = load i32, i32* %17, align 4
  %22 = load i32, i32* @FOLL_WRITE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %8
  %26 = load i64, i64* @VM_WRITE, align 8
  %27 = load i64, i64* @VM_MAYWRITE, align 8
  %28 = or i64 %26, %27
  br label %33

29:                                               ; preds = %8
  %30 = load i64, i64* @VM_READ, align 8
  %31 = load i64, i64* @VM_MAYREAD, align 8
  %32 = or i64 %30, %31
  br label %33

33:                                               ; preds = %29, %25
  %34 = phi i64 [ %28, %25 ], [ %32, %29 ]
  store i64 %34, i64* %19, align 8
  %35 = load i32, i32* %17, align 4
  %36 = load i32, i32* @FOLL_FORCE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i64, i64* @VM_MAYREAD, align 8
  %41 = load i64, i64* @VM_MAYWRITE, align 8
  %42 = or i64 %40, %41
  br label %47

43:                                               ; preds = %33
  %44 = load i64, i64* @VM_READ, align 8
  %45 = load i64, i64* @VM_WRITE, align 8
  %46 = or i64 %44, %45
  br label %47

47:                                               ; preds = %43, %39
  %48 = phi i64 [ %42, %39 ], [ %46, %43 ]
  %49 = load i64, i64* %19, align 8
  %50 = and i64 %49, %48
  store i64 %50, i64* %19, align 8
  store i32 0, i32* %20, align 4
  br label %51

51:                                               ; preds = %120, %47
  %52 = load i32, i32* %20, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %13, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %123

56:                                               ; preds = %51
  %57 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  %58 = load i64, i64* %12, align 8
  %59 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %57, i64 %58)
  store %struct.vm_area_struct* %59, %struct.vm_area_struct** %18, align 8
  %60 = load %struct.vm_area_struct*, %struct.vm_area_struct** %18, align 8
  %61 = icmp ne %struct.vm_area_struct* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %56
  br label %126

63:                                               ; preds = %56
  %64 = load %struct.vm_area_struct*, %struct.vm_area_struct** %18, align 8
  %65 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @VM_IO, align 4
  %68 = load i32, i32* @VM_PFNMAP, align 4
  %69 = or i32 %67, %68
  %70 = and i32 %66, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %63
  %73 = load i64, i64* %19, align 8
  %74 = load %struct.vm_area_struct*, %struct.vm_area_struct** %18, align 8
  %75 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = and i64 %73, %77
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %72, %63
  br label %126

81:                                               ; preds = %72
  %82 = load %struct.page**, %struct.page*** %14, align 8
  %83 = icmp ne %struct.page** %82, null
  br i1 %83, label %84, label %105

84:                                               ; preds = %81
  %85 = load i64, i64* %12, align 8
  %86 = call %struct.page* @virt_to_page(i64 %85)
  %87 = load %struct.page**, %struct.page*** %14, align 8
  %88 = load i32, i32* %20, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.page*, %struct.page** %87, i64 %89
  store %struct.page* %86, %struct.page** %90, align 8
  %91 = load %struct.page**, %struct.page*** %14, align 8
  %92 = load i32, i32* %20, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.page*, %struct.page** %91, i64 %93
  %95 = load %struct.page*, %struct.page** %94, align 8
  %96 = icmp ne %struct.page* %95, null
  br i1 %96, label %97, label %104

97:                                               ; preds = %84
  %98 = load %struct.page**, %struct.page*** %14, align 8
  %99 = load i32, i32* %20, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.page*, %struct.page** %98, i64 %100
  %102 = load %struct.page*, %struct.page** %101, align 8
  %103 = call i32 @get_page(%struct.page* %102)
  br label %104

104:                                              ; preds = %97, %84
  br label %105

105:                                              ; preds = %104, %81
  %106 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %15, align 8
  %107 = icmp ne %struct.vm_area_struct** %106, null
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  %109 = load %struct.vm_area_struct*, %struct.vm_area_struct** %18, align 8
  %110 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %15, align 8
  %111 = load i32, i32* %20, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.vm_area_struct*, %struct.vm_area_struct** %110, i64 %112
  store %struct.vm_area_struct* %109, %struct.vm_area_struct** %113, align 8
  br label %114

114:                                              ; preds = %108, %105
  %115 = load i64, i64* %12, align 8
  %116 = load i64, i64* @PAGE_SIZE, align 8
  %117 = add i64 %115, %116
  %118 = load i64, i64* @PAGE_MASK, align 8
  %119 = and i64 %117, %118
  store i64 %119, i64* %12, align 8
  br label %120

120:                                              ; preds = %114
  %121 = load i32, i32* %20, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %20, align 4
  br label %51

123:                                              ; preds = %51
  %124 = load i32, i32* %20, align 4
  %125 = sext i32 %124 to i64
  store i64 %125, i64* %9, align 8
  br label %136

126:                                              ; preds = %80, %62
  %127 = load i32, i32* %20, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %126
  %130 = sext i32 %127 to i64
  br label %134

131:                                              ; preds = %126
  %132 = load i64, i64* @EFAULT, align 8
  %133 = sub nsw i64 0, %132
  br label %134

134:                                              ; preds = %131, %129
  %135 = phi i64 [ %130, %129 ], [ %133, %131 ]
  store i64 %135, i64* %9, align 8
  br label %136

136:                                              ; preds = %134, %123
  %137 = load i64, i64* %9, align 8
  ret i64 %137
}

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

declare dso_local %struct.page* @virt_to_page(i64) #1

declare dso_local i32 @get_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
