; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory.c_remap_pte_range.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory.c_remap_pte_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*, i32*, i64, i64, i64, i32)* @remap_pte_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remap_pte_range(%struct.mm_struct* %0, i32* %1, i64 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mm_struct*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %16, align 4
  %17 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = load i64, i64* %10, align 8
  %20 = call i32* @pte_alloc_map_lock(%struct.mm_struct* %17, i32* %18, i64 %19, i32** %15)
  store i32* %20, i32** %14, align 8
  %21 = load i32*, i32** %14, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %6
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %70

26:                                               ; preds = %6
  %27 = call i32 (...) @arch_enter_lazy_mmu_mode()
  br label %28

28:                                               ; preds = %54, %26
  %29 = load i32*, i32** %14, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @pte_none(i32 %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @BUG_ON(i32 %34)
  %36 = load i64, i64* %12, align 8
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @pfn_modify_allowed(i64 %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %28
  %41 = load i32, i32* @EACCES, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %16, align 4
  br label %63

43:                                               ; preds = %28
  %44 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i32*, i32** %14, align 8
  %47 = load i64, i64* %12, align 8
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @pfn_pte(i64 %47, i32 %48)
  %50 = call i32 @pte_mkspecial(i32 %49)
  %51 = call i32 @set_pte_at(%struct.mm_struct* %44, i64 %45, i32* %46, i32 %50)
  %52 = load i64, i64* %12, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %12, align 8
  br label %54

54:                                               ; preds = %43
  %55 = load i32*, i32** %14, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %14, align 8
  %57 = load i64, i64* @PAGE_SIZE, align 8
  %58 = load i64, i64* %10, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %10, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* %11, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %28, label %63

63:                                               ; preds = %54, %40
  %64 = call i32 (...) @arch_leave_lazy_mmu_mode()
  %65 = load i32*, i32** %14, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 -1
  %67 = load i32*, i32** %15, align 8
  %68 = call i32 @pte_unmap_unlock(i32* %66, i32* %67)
  %69 = load i32, i32* %16, align 4
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %63, %23
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local i32* @pte_alloc_map_lock(%struct.mm_struct*, i32*, i64, i32**) #1

declare dso_local i32 @arch_enter_lazy_mmu_mode(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pte_none(i32) #1

declare dso_local i32 @pfn_modify_allowed(i64, i32) #1

declare dso_local i32 @set_pte_at(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i32 @pte_mkspecial(i32) #1

declare dso_local i32 @pfn_pte(i64, i32) #1

declare dso_local i32 @arch_leave_lazy_mmu_mode(...) #1

declare dso_local i32 @pte_unmap_unlock(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
