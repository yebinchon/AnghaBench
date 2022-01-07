; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory.c_free_pgd_range.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory.c_free_pgd_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_gather = type { i32 }

@PMD_MASK = common dso_local global i64 0, align 8
@PMD_SIZE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_pgd_range(%struct.mmu_gather* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.mmu_gather*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store %struct.mmu_gather* %0, %struct.mmu_gather** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load i64, i64* @PMD_MASK, align 8
  %14 = load i64, i64* %7, align 8
  %15 = and i64 %14, %13
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %9, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %5
  %20 = load i64, i64* @PMD_SIZE, align 8
  %21 = load i64, i64* %7, align 8
  %22 = add i64 %21, %20
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %86

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26, %5
  %28 = load i64, i64* %10, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load i64, i64* @PMD_MASK, align 8
  %32 = load i64, i64* %10, align 8
  %33 = and i64 %32, %31
  store i64 %33, i64* %10, align 8
  %34 = load i64, i64* %10, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  br label %86

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37, %27
  %39 = load i64, i64* %8, align 8
  %40 = sub i64 %39, 1
  %41 = load i64, i64* %10, align 8
  %42 = sub i64 %41, 1
  %43 = icmp ugt i64 %40, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i64, i64* @PMD_SIZE, align 8
  %46 = load i64, i64* %8, align 8
  %47 = sub i64 %46, %45
  store i64 %47, i64* %8, align 8
  br label %48

48:                                               ; preds = %44, %38
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %8, align 8
  %51 = sub i64 %50, 1
  %52 = icmp ugt i64 %49, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %86

54:                                               ; preds = %48
  %55 = load %struct.mmu_gather*, %struct.mmu_gather** %6, align 8
  %56 = load i32, i32* @PAGE_SIZE, align 4
  %57 = call i32 @tlb_change_page_size(%struct.mmu_gather* %55, i32 %56)
  %58 = load %struct.mmu_gather*, %struct.mmu_gather** %6, align 8
  %59 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* %7, align 8
  %62 = call i32* @pgd_offset(i32 %60, i64 %61)
  store i32* %62, i32** %11, align 8
  br label %63

63:                                               ; preds = %79, %54
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* %8, align 8
  %66 = call i64 @pgd_addr_end(i64 %64, i64 %65)
  store i64 %66, i64* %12, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = call i64 @pgd_none_or_clear_bad(i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %79

71:                                               ; preds = %63
  %72 = load %struct.mmu_gather*, %struct.mmu_gather** %6, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* %12, align 8
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* %10, align 8
  %78 = call i32 @free_p4d_range(%struct.mmu_gather* %72, i32* %73, i64 %74, i64 %75, i64 %76, i64 %77)
  br label %79

79:                                               ; preds = %71, %70
  %80 = load i32*, i32** %11, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %11, align 8
  %82 = load i64, i64* %12, align 8
  store i64 %82, i64* %7, align 8
  %83 = load i64, i64* %7, align 8
  %84 = load i64, i64* %8, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %63, label %86

86:                                               ; preds = %25, %36, %53, %79
  ret void
}

declare dso_local i32 @tlb_change_page_size(%struct.mmu_gather*, i32) #1

declare dso_local i32* @pgd_offset(i32, i64) #1

declare dso_local i64 @pgd_addr_end(i64, i64) #1

declare dso_local i64 @pgd_none_or_clear_bad(i32*) #1

declare dso_local i32 @free_p4d_range(%struct.mmu_gather*, i32*, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
