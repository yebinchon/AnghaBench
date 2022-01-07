; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory.c_vm_normal_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory.c_vm_normal_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.vm_area_struct = type { i32, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.page* (%struct.vm_area_struct*, i64)* }

@CONFIG_ARCH_HAS_PTE_SPECIAL = common dso_local global i32 0, align 4
@VM_PFNMAP = common dso_local global i32 0, align 4
@VM_MIXEDMAP = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@highest_memmap_pfn = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @vm_normal_page(%struct.vm_area_struct* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i64 @pte_pfn(i32 %10)
  store i64 %11, i64* %8, align 8
  %12 = load i32, i32* @CONFIG_ARCH_HAS_PTE_SPECIAL, align 4
  %13 = call i64 @IS_ENABLED(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %70

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @pte_special(i32 %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @likely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %124

24:                                               ; preds = %15
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %26 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %25, i32 0, i32 3
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = icmp ne %struct.TYPE_2__* %27, null
  br i1 %28, label %29, label %45

29:                                               ; preds = %24
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %31 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %30, i32 0, i32 3
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.page* (%struct.vm_area_struct*, i64)*, %struct.page* (%struct.vm_area_struct*, i64)** %33, align 8
  %35 = icmp ne %struct.page* (%struct.vm_area_struct*, i64)* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %29
  %37 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %38 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %37, i32 0, i32 3
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load %struct.page* (%struct.vm_area_struct*, i64)*, %struct.page* (%struct.vm_area_struct*, i64)** %40, align 8
  %42 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call %struct.page* %41(%struct.vm_area_struct* %42, i64 %43)
  store %struct.page* %44, %struct.page** %4, align 8
  br label %140

45:                                               ; preds = %29, %24
  %46 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %47 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @VM_PFNMAP, align 4
  %50 = load i32, i32* @VM_MIXEDMAP, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %48, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  store %struct.page* null, %struct.page** %4, align 8
  br label %140

55:                                               ; preds = %45
  %56 = load i64, i64* %8, align 8
  %57 = call i64 @is_zero_pfn(i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store %struct.page* null, %struct.page** %4, align 8
  br label %140

60:                                               ; preds = %55
  %61 = load i32, i32* %7, align 4
  %62 = call i64 @pte_devmap(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store %struct.page* null, %struct.page** %4, align 8
  br label %140

65:                                               ; preds = %60
  %66 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %67 = load i64, i64* %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @print_bad_pte(%struct.vm_area_struct* %66, i64 %67, i32 %68, i32* null)
  store %struct.page* null, %struct.page** %4, align 8
  br label %140

70:                                               ; preds = %3
  %71 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %72 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @VM_PFNMAP, align 4
  %75 = load i32, i32* @VM_MIXEDMAP, align 4
  %76 = or i32 %74, %75
  %77 = and i32 %73, %76
  %78 = call i64 @unlikely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %118

80:                                               ; preds = %70
  %81 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %82 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @VM_MIXEDMAP, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %80
  %88 = load i64, i64* %8, align 8
  %89 = call i32 @pfn_valid(i64 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %87
  store %struct.page* null, %struct.page** %4, align 8
  br label %140

92:                                               ; preds = %87
  br label %137

93:                                               ; preds = %80
  %94 = load i64, i64* %6, align 8
  %95 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %96 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = sub i64 %94, %97
  %99 = load i64, i64* @PAGE_SHIFT, align 8
  %100 = lshr i64 %98, %99
  store i64 %100, i64* %9, align 8
  %101 = load i64, i64* %8, align 8
  %102 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %103 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %9, align 8
  %106 = add i64 %104, %105
  %107 = icmp eq i64 %101, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %93
  store %struct.page* null, %struct.page** %4, align 8
  br label %140

109:                                              ; preds = %93
  %110 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %111 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @is_cow_mapping(i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %109
  store %struct.page* null, %struct.page** %4, align 8
  br label %140

116:                                              ; preds = %109
  br label %117

117:                                              ; preds = %116
  br label %118

118:                                              ; preds = %117, %70
  %119 = load i64, i64* %8, align 8
  %120 = call i64 @is_zero_pfn(i64 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  store %struct.page* null, %struct.page** %4, align 8
  br label %140

123:                                              ; preds = %118
  br label %124

124:                                              ; preds = %123, %23
  %125 = load i64, i64* %8, align 8
  %126 = load i64, i64* @highest_memmap_pfn, align 8
  %127 = icmp ugt i64 %125, %126
  %128 = zext i1 %127 to i32
  %129 = call i64 @unlikely(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %124
  %132 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %133 = load i64, i64* %6, align 8
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @print_bad_pte(%struct.vm_area_struct* %132, i64 %133, i32 %134, i32* null)
  store %struct.page* null, %struct.page** %4, align 8
  br label %140

136:                                              ; preds = %124
  br label %137

137:                                              ; preds = %136, %92
  %138 = load i64, i64* %8, align 8
  %139 = call %struct.page* @pfn_to_page(i64 %138)
  store %struct.page* %139, %struct.page** %4, align 8
  br label %140

140:                                              ; preds = %137, %131, %122, %115, %108, %91, %65, %64, %59, %54, %36
  %141 = load %struct.page*, %struct.page** %4, align 8
  ret %struct.page* %141
}

declare dso_local i64 @pte_pfn(i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @pte_special(i32) #1

declare dso_local i64 @is_zero_pfn(i64) #1

declare dso_local i64 @pte_devmap(i32) #1

declare dso_local i32 @print_bad_pte(%struct.vm_area_struct*, i64, i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pfn_valid(i64) #1

declare dso_local i32 @is_cow_mapping(i32) #1

declare dso_local %struct.page* @pfn_to_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
