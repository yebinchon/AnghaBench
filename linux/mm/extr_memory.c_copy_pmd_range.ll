; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory.c_copy_pmd_range.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory.c_copy_pmd_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@HPAGE_PMD_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*, %struct.mm_struct*, i32*, i32*, %struct.vm_area_struct*, i64, i64)* @copy_pmd_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_pmd_range(%struct.mm_struct* %0, %struct.mm_struct* %1, i32* %2, i32* %3, %struct.vm_area_struct* %4, i64 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mm_struct*, align 8
  %10 = alloca %struct.mm_struct*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.vm_area_struct*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %9, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store %struct.vm_area_struct* %4, %struct.vm_area_struct** %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %20 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = load i64, i64* %14, align 8
  %23 = call i32* @pmd_alloc(%struct.mm_struct* %20, i32* %21, i64 %22)
  store i32* %23, i32** %17, align 8
  %24 = load i32*, i32** %17, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %7
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  br label %108

29:                                               ; preds = %7
  %30 = load i32*, i32** %12, align 8
  %31 = load i64, i64* %14, align 8
  %32 = call i32* @pmd_offset(i32* %30, i64 %31)
  store i32* %32, i32** %16, align 8
  br label %33

33:                                               ; preds = %98, %29
  %34 = load i64, i64* %14, align 8
  %35 = load i64, i64* %15, align 8
  %36 = call i64 @pmd_addr_end(i64 %34, i64 %35)
  store i64 %36, i64* %18, align 8
  %37 = load i32*, i32** %16, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @is_swap_pmd(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %33
  %42 = load i32*, i32** %16, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @pmd_trans_huge(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load i32*, i32** %16, align 8
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @pmd_devmap(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %79

51:                                               ; preds = %46, %41, %33
  %52 = load i64, i64* %18, align 8
  %53 = load i64, i64* %14, align 8
  %54 = sub i64 %52, %53
  %55 = load i64, i64* @HPAGE_PMD_SIZE, align 8
  %56 = icmp ne i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %59 = call i32 @VM_BUG_ON_VMA(i32 %57, %struct.vm_area_struct* %58)
  %60 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %61 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %62 = load i32*, i32** %17, align 8
  %63 = load i32*, i32** %16, align 8
  %64 = load i64, i64* %14, align 8
  %65 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %66 = call i32 @copy_huge_pmd(%struct.mm_struct* %60, %struct.mm_struct* %61, i32* %62, i32* %63, i64 %64, %struct.vm_area_struct* %65)
  store i32 %66, i32* %19, align 4
  %67 = load i32, i32* %19, align 4
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %51
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %8, align 4
  br label %108

74:                                               ; preds = %51
  %75 = load i32, i32* %19, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  br label %98

78:                                               ; preds = %74
  br label %79

79:                                               ; preds = %78, %46
  %80 = load i32*, i32** %16, align 8
  %81 = call i64 @pmd_none_or_clear_bad(i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  br label %98

84:                                               ; preds = %79
  %85 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %86 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %87 = load i32*, i32** %17, align 8
  %88 = load i32*, i32** %16, align 8
  %89 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %90 = load i64, i64* %14, align 8
  %91 = load i64, i64* %18, align 8
  %92 = call i64 @copy_pte_range(%struct.mm_struct* %85, %struct.mm_struct* %86, i32* %87, i32* %88, %struct.vm_area_struct* %89, i64 %90, i64 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %84
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %8, align 4
  br label %108

97:                                               ; preds = %84
  br label %98

98:                                               ; preds = %97, %83, %77
  %99 = load i32*, i32** %17, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %17, align 8
  %101 = load i32*, i32** %16, align 8
  %102 = getelementptr inbounds i32, i32* %101, i32 1
  store i32* %102, i32** %16, align 8
  %103 = load i64, i64* %18, align 8
  store i64 %103, i64* %14, align 8
  %104 = load i64, i64* %14, align 8
  %105 = load i64, i64* %15, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %33, label %107

107:                                              ; preds = %98
  store i32 0, i32* %8, align 4
  br label %108

108:                                              ; preds = %107, %94, %71, %26
  %109 = load i32, i32* %8, align 4
  ret i32 %109
}

declare dso_local i32* @pmd_alloc(%struct.mm_struct*, i32*, i64) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i64 @pmd_addr_end(i64, i64) #1

declare dso_local i64 @is_swap_pmd(i32) #1

declare dso_local i64 @pmd_trans_huge(i32) #1

declare dso_local i64 @pmd_devmap(i32) #1

declare dso_local i32 @VM_BUG_ON_VMA(i32, %struct.vm_area_struct*) #1

declare dso_local i32 @copy_huge_pmd(%struct.mm_struct*, %struct.mm_struct*, i32*, i32*, i64, %struct.vm_area_struct*) #1

declare dso_local i64 @pmd_none_or_clear_bad(i32*) #1

declare dso_local i64 @copy_pte_range(%struct.mm_struct*, %struct.mm_struct*, i32*, i32*, %struct.vm_area_struct*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
