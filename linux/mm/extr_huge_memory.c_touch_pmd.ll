; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_touch_pmd.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_touch_pmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }

@FOLL_WRITE = common dso_local global i32 0, align 4
@HPAGE_PMD_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_area_struct*, i64, i32*, i32)* @touch_pmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @touch_pmd(%struct.vm_area_struct* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32*, i32** %7, align 8
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @pmd_mkyoung(i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @FOLL_WRITE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @pmd_mkdirty(i32 %18)
  store i32 %19, i32* %9, align 4
  br label %20

20:                                               ; preds = %17, %4
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @HPAGE_PMD_MASK, align 8
  %24 = and i64 %22, %23
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @FOLL_WRITE, align 4
  %29 = and i32 %27, %28
  %30 = call i64 @pmdp_set_access_flags(%struct.vm_area_struct* %21, i64 %24, i32* %25, i32 %26, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %20
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @update_mmu_cache_pmd(%struct.vm_area_struct* %33, i64 %34, i32* %35)
  br label %37

37:                                               ; preds = %32, %20
  ret void
}

declare dso_local i32 @pmd_mkyoung(i32) #1

declare dso_local i32 @pmd_mkdirty(i32) #1

declare dso_local i64 @pmdp_set_access_flags(%struct.vm_area_struct*, i64, i32*, i32, i32) #1

declare dso_local i32 @update_mmu_cache_pmd(%struct.vm_area_struct*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
