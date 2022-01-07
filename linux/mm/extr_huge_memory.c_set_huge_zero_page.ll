; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_set_huge_zero_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_set_huge_zero_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.mm_struct*, %struct.vm_area_struct*, i64, i32*, %struct.page*)* @set_huge_zero_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_huge_zero_page(i32 %0, %struct.mm_struct* %1, %struct.vm_area_struct* %2, i64 %3, i32* %4, %struct.page* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mm_struct*, align 8
  %10 = alloca %struct.vm_area_struct*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.page*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.mm_struct* %1, %struct.mm_struct** %9, align 8
  store %struct.vm_area_struct* %2, %struct.vm_area_struct** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.page* %5, %struct.page** %13, align 8
  %15 = load i32*, i32** %12, align 8
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pmd_none(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %43

20:                                               ; preds = %6
  %21 = load %struct.page*, %struct.page** %13, align 8
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %23 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @mk_pmd(%struct.page* %21, i32 %24)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = call i32 @pmd_mkhuge(i32 %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %20
  %31 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @pgtable_trans_huge_deposit(%struct.mm_struct* %31, i32* %32, i32 %33)
  br label %35

35:                                               ; preds = %30, %20
  %36 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = load i32, i32* %14, align 4
  %40 = call i32 @set_pmd_at(%struct.mm_struct* %36, i64 %37, i32* %38, i32 %39)
  %41 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %42 = call i32 @mm_inc_nr_ptes(%struct.mm_struct* %41)
  store i32 1, i32* %7, align 4
  br label %43

43:                                               ; preds = %35, %19
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

declare dso_local i32 @pmd_none(i32) #1

declare dso_local i32 @mk_pmd(%struct.page*, i32) #1

declare dso_local i32 @pmd_mkhuge(i32) #1

declare dso_local i32 @pgtable_trans_huge_deposit(%struct.mm_struct*, i32*, i32) #1

declare dso_local i32 @set_pmd_at(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i32 @mm_inc_nr_ptes(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
