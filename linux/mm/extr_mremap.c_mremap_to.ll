; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mremap.c_mremap_to.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mremap.c_mremap_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.vm_userfaultfd_ctx = type { i32 }
%struct.list_head = type { i32 }
%struct.vm_area_struct = type { i32, i64, i64, i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@EINVAL = common dso_local global i64 0, align 8
@TASK_SIZE = common dso_local global i64 0, align 8
@sysctl_max_map_count = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@MAP_FIXED = common dso_local global i64 0, align 8
@VM_MAYSHARE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64, i64, i32*, %struct.vm_userfaultfd_ctx*, %struct.list_head*, %struct.list_head*)* @mremap_to to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mremap_to(i64 %0, i64 %1, i64 %2, i64 %3, i32* %4, %struct.vm_userfaultfd_ctx* %5, %struct.list_head* %6, %struct.list_head* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.vm_userfaultfd_ctx*, align 8
  %16 = alloca %struct.list_head*, align 8
  %17 = alloca %struct.list_head*, align 8
  %18 = alloca %struct.mm_struct*, align 8
  %19 = alloca %struct.vm_area_struct*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store i64 %0, i64* %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i32* %4, i32** %14, align 8
  store %struct.vm_userfaultfd_ctx* %5, %struct.vm_userfaultfd_ctx** %15, align 8
  store %struct.list_head* %6, %struct.list_head** %16, align 8
  store %struct.list_head* %7, %struct.list_head** %17, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.mm_struct*, %struct.mm_struct** %24, align 8
  store %struct.mm_struct* %25, %struct.mm_struct** %18, align 8
  %26 = load i64, i64* @EINVAL, align 8
  %27 = sub i64 0, %26
  store i64 %27, i64* %20, align 8
  store i64 0, i64* %21, align 8
  %28 = load i64, i64* %12, align 8
  %29 = call i64 @offset_in_page(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %8
  br label %163

32:                                               ; preds = %8
  %33 = load i64, i64* %13, align 8
  %34 = load i64, i64* @TASK_SIZE, align 8
  %35 = icmp ugt i64 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* @TASK_SIZE, align 8
  %39 = load i64, i64* %13, align 8
  %40 = sub i64 %38, %39
  %41 = icmp ugt i64 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36, %32
  br label %163

43:                                               ; preds = %36
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* %11, align 8
  %46 = add i64 %44, %45
  %47 = load i64, i64* %12, align 8
  %48 = icmp ugt i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* %13, align 8
  %52 = add i64 %50, %51
  %53 = load i64, i64* %10, align 8
  %54 = icmp ugt i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %163

56:                                               ; preds = %49, %43
  %57 = load %struct.mm_struct*, %struct.mm_struct** %18, align 8
  %58 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 2
  %61 = load i32, i32* @sysctl_max_map_count, align 4
  %62 = sub nsw i32 %61, 3
  %63 = icmp sge i32 %60, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load i64, i64* @ENOMEM, align 8
  %66 = sub i64 0, %65
  store i64 %66, i64* %9, align 8
  br label %165

67:                                               ; preds = %56
  %68 = load %struct.mm_struct*, %struct.mm_struct** %18, align 8
  %69 = load i64, i64* %12, align 8
  %70 = load i64, i64* %13, align 8
  %71 = load %struct.list_head*, %struct.list_head** %16, align 8
  %72 = call i64 @do_munmap(%struct.mm_struct* %68, i64 %69, i64 %70, %struct.list_head* %71)
  store i64 %72, i64* %20, align 8
  %73 = load i64, i64* %20, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %163

76:                                               ; preds = %67
  %77 = load i64, i64* %11, align 8
  %78 = load i64, i64* %13, align 8
  %79 = icmp uge i64 %77, %78
  br i1 %79, label %80, label %99

80:                                               ; preds = %76
  %81 = load %struct.mm_struct*, %struct.mm_struct** %18, align 8
  %82 = load i64, i64* %10, align 8
  %83 = load i64, i64* %13, align 8
  %84 = add i64 %82, %83
  %85 = load i64, i64* %11, align 8
  %86 = load i64, i64* %13, align 8
  %87 = sub i64 %85, %86
  %88 = load %struct.list_head*, %struct.list_head** %17, align 8
  %89 = call i64 @do_munmap(%struct.mm_struct* %81, i64 %84, i64 %87, %struct.list_head* %88)
  store i64 %89, i64* %20, align 8
  %90 = load i64, i64* %20, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %80
  %93 = load i64, i64* %11, align 8
  %94 = load i64, i64* %13, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  br label %163

97:                                               ; preds = %92, %80
  %98 = load i64, i64* %13, align 8
  store i64 %98, i64* %11, align 8
  br label %99

99:                                               ; preds = %97, %76
  %100 = load i64, i64* %10, align 8
  %101 = load i64, i64* %11, align 8
  %102 = load i64, i64* %13, align 8
  %103 = call %struct.vm_area_struct* @vma_to_resize(i64 %100, i64 %101, i64 %102, i64* %21)
  store %struct.vm_area_struct* %103, %struct.vm_area_struct** %19, align 8
  %104 = load %struct.vm_area_struct*, %struct.vm_area_struct** %19, align 8
  %105 = call i64 @IS_ERR(%struct.vm_area_struct* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %99
  %108 = load %struct.vm_area_struct*, %struct.vm_area_struct** %19, align 8
  %109 = call i64 @PTR_ERR(%struct.vm_area_struct* %108)
  store i64 %109, i64* %20, align 8
  br label %163

110:                                              ; preds = %99
  %111 = load i64, i64* @MAP_FIXED, align 8
  store i64 %111, i64* %22, align 8
  %112 = load %struct.vm_area_struct*, %struct.vm_area_struct** %19, align 8
  %113 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @VM_MAYSHARE, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %110
  %119 = load i64, i64* @MAP_SHARED, align 8
  %120 = load i64, i64* %22, align 8
  %121 = or i64 %120, %119
  store i64 %121, i64* %22, align 8
  br label %122

122:                                              ; preds = %118, %110
  %123 = load %struct.vm_area_struct*, %struct.vm_area_struct** %19, align 8
  %124 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = load i64, i64* %12, align 8
  %127 = load i64, i64* %13, align 8
  %128 = load %struct.vm_area_struct*, %struct.vm_area_struct** %19, align 8
  %129 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* %10, align 8
  %132 = load %struct.vm_area_struct*, %struct.vm_area_struct** %19, align 8
  %133 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = sub i64 %131, %134
  %136 = load i64, i64* @PAGE_SHIFT, align 8
  %137 = lshr i64 %135, %136
  %138 = add i64 %130, %137
  %139 = load i64, i64* %22, align 8
  %140 = call i64 @get_unmapped_area(i32 %125, i64 %126, i64 %127, i64 %138, i64 %139)
  store i64 %140, i64* %20, align 8
  %141 = load i64, i64* %20, align 8
  %142 = call i64 @offset_in_page(i64 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %122
  br label %160

145:                                              ; preds = %122
  %146 = load %struct.vm_area_struct*, %struct.vm_area_struct** %19, align 8
  %147 = load i64, i64* %10, align 8
  %148 = load i64, i64* %11, align 8
  %149 = load i64, i64* %13, align 8
  %150 = load i64, i64* %12, align 8
  %151 = load i32*, i32** %14, align 8
  %152 = load %struct.vm_userfaultfd_ctx*, %struct.vm_userfaultfd_ctx** %15, align 8
  %153 = load %struct.list_head*, %struct.list_head** %17, align 8
  %154 = call i64 @move_vma(%struct.vm_area_struct* %146, i64 %147, i64 %148, i64 %149, i64 %150, i32* %151, %struct.vm_userfaultfd_ctx* %152, %struct.list_head* %153)
  store i64 %154, i64* %20, align 8
  %155 = load i64, i64* %20, align 8
  %156 = call i64 @offset_in_page(i64 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %145
  br label %163

159:                                              ; preds = %145
  br label %160

160:                                              ; preds = %159, %144
  %161 = load i64, i64* %21, align 8
  %162 = call i32 @vm_unacct_memory(i64 %161)
  br label %163

163:                                              ; preds = %160, %158, %107, %96, %75, %55, %42, %31
  %164 = load i64, i64* %20, align 8
  store i64 %164, i64* %9, align 8
  br label %165

165:                                              ; preds = %163, %64
  %166 = load i64, i64* %9, align 8
  ret i64 %166
}

declare dso_local i64 @offset_in_page(i64) #1

declare dso_local i64 @do_munmap(%struct.mm_struct*, i64, i64, %struct.list_head*) #1

declare dso_local %struct.vm_area_struct* @vma_to_resize(i64, i64, i64, i64*) #1

declare dso_local i64 @IS_ERR(%struct.vm_area_struct*) #1

declare dso_local i64 @PTR_ERR(%struct.vm_area_struct*) #1

declare dso_local i64 @get_unmapped_area(i32, i64, i64, i64, i64) #1

declare dso_local i64 @move_vma(%struct.vm_area_struct*, i64, i64, i64, i64, i32*, %struct.vm_userfaultfd_ctx*, %struct.list_head*) #1

declare dso_local i32 @vm_unacct_memory(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
