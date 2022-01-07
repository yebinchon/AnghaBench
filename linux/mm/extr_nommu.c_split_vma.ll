; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_nommu.c_split_vma.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_nommu.c_split_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i64 }
%struct.vm_area_struct = type { i64, i64, i64, %struct.vm_region*, %struct.TYPE_2__*, i64 }
%struct.vm_region = type { i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i32 (%struct.vm_area_struct*)* }

@ENOMEM = common dso_local global i32 0, align 4
@sysctl_max_map_count = common dso_local global i64 0, align 8
@vm_region_jar = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@nommu_region_sem = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @split_vma(%struct.mm_struct* %0, %struct.vm_area_struct* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vm_area_struct*, align 8
  %11 = alloca %struct.vm_region*, align 8
  %12 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %6, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %165

20:                                               ; preds = %4
  %21 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %22 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @sysctl_max_map_count, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %165

29:                                               ; preds = %20
  %30 = load i32, i32* @vm_region_jar, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.vm_region* @kmem_cache_alloc(i32 %30, i32 %31)
  store %struct.vm_region* %32, %struct.vm_region** %11, align 8
  %33 = load %struct.vm_region*, %struct.vm_region** %11, align 8
  %34 = icmp ne %struct.vm_region* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %165

38:                                               ; preds = %29
  %39 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %40 = call %struct.vm_area_struct* @vm_area_dup(%struct.vm_area_struct* %39)
  store %struct.vm_area_struct* %40, %struct.vm_area_struct** %10, align 8
  %41 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %42 = icmp ne %struct.vm_area_struct* %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @vm_region_jar, align 4
  %45 = load %struct.vm_region*, %struct.vm_region** %11, align 8
  %46 = call i32 @kmem_cache_free(i32 %44, %struct.vm_region* %45)
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %165

49:                                               ; preds = %38
  %50 = load %struct.vm_region*, %struct.vm_region** %11, align 8
  %51 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %52 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %51, i32 0, i32 3
  %53 = load %struct.vm_region*, %struct.vm_region** %52, align 8
  %54 = bitcast %struct.vm_region* %50 to i8*
  %55 = bitcast %struct.vm_region* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %54, i8* align 8 %55, i64 32, i1 false)
  %56 = load %struct.vm_region*, %struct.vm_region** %11, align 8
  %57 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %58 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %57, i32 0, i32 3
  store %struct.vm_region* %56, %struct.vm_region** %58, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %61 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = sub i64 %59, %62
  %64 = load i64, i64* @PAGE_SHIFT, align 8
  %65 = lshr i64 %63, %64
  store i64 %65, i64* %12, align 8
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %49
  %69 = load i64, i64* %8, align 8
  %70 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %71 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  %72 = load %struct.vm_region*, %struct.vm_region** %11, align 8
  %73 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %72, i32 0, i32 1
  store i64 %69, i64* %73, align 8
  %74 = load %struct.vm_region*, %struct.vm_region** %11, align 8
  %75 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %74, i32 0, i32 0
  store i64 %69, i64* %75, align 8
  br label %89

76:                                               ; preds = %49
  %77 = load i64, i64* %8, align 8
  %78 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %79 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load %struct.vm_region*, %struct.vm_region** %11, align 8
  %81 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %80, i32 0, i32 2
  store i64 %77, i64* %81, align 8
  %82 = load i64, i64* %12, align 8
  %83 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %84 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = add i64 %85, %82
  store i64 %86, i64* %84, align 8
  %87 = load %struct.vm_region*, %struct.vm_region** %11, align 8
  %88 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %87, i32 0, i32 3
  store i64 %86, i64* %88, align 8
  br label %89

89:                                               ; preds = %76, %68
  %90 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %91 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %90, i32 0, i32 4
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = icmp ne %struct.TYPE_2__* %92, null
  br i1 %93, label %94, label %109

94:                                               ; preds = %89
  %95 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %96 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %95, i32 0, i32 4
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*)** %98, align 8
  %100 = icmp ne i32 (%struct.vm_area_struct*)* %99, null
  br i1 %100, label %101, label %109

101:                                              ; preds = %94
  %102 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %103 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %102, i32 0, i32 4
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*)** %105, align 8
  %107 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %108 = call i32 %106(%struct.vm_area_struct* %107)
  br label %109

109:                                              ; preds = %101, %94, %89
  %110 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %111 = call i32 @delete_vma_from_mm(%struct.vm_area_struct* %110)
  %112 = call i32 @down_write(i32* @nommu_region_sem)
  %113 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %114 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %113, i32 0, i32 3
  %115 = load %struct.vm_region*, %struct.vm_region** %114, align 8
  %116 = call i32 @delete_nommu_region(%struct.vm_region* %115)
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %136

119:                                              ; preds = %109
  %120 = load i64, i64* %8, align 8
  %121 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %122 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  %123 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %124 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %123, i32 0, i32 3
  %125 = load %struct.vm_region*, %struct.vm_region** %124, align 8
  %126 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %125, i32 0, i32 2
  store i64 %120, i64* %126, align 8
  %127 = load i64, i64* %12, align 8
  %128 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %129 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = add i64 %130, %127
  store i64 %131, i64* %129, align 8
  %132 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %133 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %132, i32 0, i32 3
  %134 = load %struct.vm_region*, %struct.vm_region** %133, align 8
  %135 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %134, i32 0, i32 3
  store i64 %131, i64* %135, align 8
  br label %149

136:                                              ; preds = %109
  %137 = load i64, i64* %8, align 8
  %138 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %139 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %138, i32 0, i32 1
  store i64 %137, i64* %139, align 8
  %140 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %141 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %140, i32 0, i32 3
  %142 = load %struct.vm_region*, %struct.vm_region** %141, align 8
  %143 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %142, i32 0, i32 1
  store i64 %137, i64* %143, align 8
  %144 = load i64, i64* %8, align 8
  %145 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %146 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %145, i32 0, i32 3
  %147 = load %struct.vm_region*, %struct.vm_region** %146, align 8
  %148 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %147, i32 0, i32 0
  store i64 %144, i64* %148, align 8
  br label %149

149:                                              ; preds = %136, %119
  %150 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %151 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %150, i32 0, i32 3
  %152 = load %struct.vm_region*, %struct.vm_region** %151, align 8
  %153 = call i32 @add_nommu_region(%struct.vm_region* %152)
  %154 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %155 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %154, i32 0, i32 3
  %156 = load %struct.vm_region*, %struct.vm_region** %155, align 8
  %157 = call i32 @add_nommu_region(%struct.vm_region* %156)
  %158 = call i32 @up_write(i32* @nommu_region_sem)
  %159 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %160 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %161 = call i32 @add_vma_to_mm(%struct.mm_struct* %159, %struct.vm_area_struct* %160)
  %162 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %163 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %164 = call i32 @add_vma_to_mm(%struct.mm_struct* %162, %struct.vm_area_struct* %163)
  store i32 0, i32* %5, align 4
  br label %165

165:                                              ; preds = %149, %43, %35, %26, %17
  %166 = load i32, i32* %5, align 4
  ret i32 %166
}

declare dso_local %struct.vm_region* @kmem_cache_alloc(i32, i32) #1

declare dso_local %struct.vm_area_struct* @vm_area_dup(%struct.vm_area_struct*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.vm_region*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @delete_vma_from_mm(%struct.vm_area_struct*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @delete_nommu_region(%struct.vm_region*) #1

declare dso_local i32 @add_nommu_region(%struct.vm_region*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @add_vma_to_mm(%struct.mm_struct*, %struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
