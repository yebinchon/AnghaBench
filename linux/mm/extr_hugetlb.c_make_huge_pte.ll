; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_make_huge_pte.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_make_huge_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, %struct.page*, i32)* @make_huge_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_huge_pte(%struct.vm_area_struct* %0, %struct.page* %1, i32 %2) #0 {
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = load %struct.page*, %struct.page** %5, align 8
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @mk_huge_pte(%struct.page* %11, i32 %14)
  %16 = call i32 @huge_pte_mkdirty(i32 %15)
  %17 = call i32 @huge_pte_mkwrite(i32 %16)
  store i32 %17, i32* %7, align 4
  br label %25

18:                                               ; preds = %3
  %19 = load %struct.page*, %struct.page** %5, align 8
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %21 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @mk_huge_pte(%struct.page* %19, i32 %22)
  %24 = call i32 @huge_pte_wrprotect(i32 %23)
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %18, %10
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @pte_mkyoung(i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @pte_mkhuge(i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %32 = load %struct.page*, %struct.page** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @arch_make_huge_pte(i32 %30, %struct.vm_area_struct* %31, %struct.page* %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  ret i32 %35
}

declare dso_local i32 @huge_pte_mkwrite(i32) #1

declare dso_local i32 @huge_pte_mkdirty(i32) #1

declare dso_local i32 @mk_huge_pte(%struct.page*, i32) #1

declare dso_local i32 @huge_pte_wrprotect(i32) #1

declare dso_local i32 @pte_mkyoung(i32) #1

declare dso_local i32 @pte_mkhuge(i32) #1

declare dso_local i32 @arch_make_huge_pte(i32, %struct.vm_area_struct*, %struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
