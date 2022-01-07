; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_split_huge_pmd_address.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_split_huge_pmd_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }
%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @split_huge_pmd_address(%struct.vm_area_struct* %0, i64 %1, i32 %2, %struct.page* %3) #0 {
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.page* %3, %struct.page** %8, align 8
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* %6, align 8
  %17 = call i32* @pgd_offset(i32 %15, i64 %16)
  store i32* %17, i32** %9, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pgd_present(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  br label %51

23:                                               ; preds = %4
  %24 = load i32*, i32** %9, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32* @p4d_offset(i32* %24, i64 %25)
  store i32* %26, i32** %10, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @p4d_present(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  br label %51

32:                                               ; preds = %23
  %33 = load i32*, i32** %10, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i32* @pud_offset(i32* %33, i64 %34)
  store i32* %35, i32** %11, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pud_present(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %32
  br label %51

41:                                               ; preds = %32
  %42 = load i32*, i32** %11, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i32* @pmd_offset(i32* %42, i64 %43)
  store i32* %44, i32** %12, align 8
  %45 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %46 = load i32*, i32** %12, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.page*, %struct.page** %8, align 8
  %50 = call i32 @__split_huge_pmd(%struct.vm_area_struct* %45, i32* %46, i64 %47, i32 %48, %struct.page* %49)
  br label %51

51:                                               ; preds = %41, %40, %31, %22
  ret void
}

declare dso_local i32* @pgd_offset(i32, i64) #1

declare dso_local i32 @pgd_present(i32) #1

declare dso_local i32* @p4d_offset(i32*, i64) #1

declare dso_local i32 @p4d_present(i32) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i32 @pud_present(i32) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i32 @__split_huge_pmd(%struct.vm_area_struct*, i32*, i64, i32, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
