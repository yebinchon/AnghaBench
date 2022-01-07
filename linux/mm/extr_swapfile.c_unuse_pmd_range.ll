; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swapfile.c_unuse_pmd_range.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swapfile.c_unuse_pmd_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, i32*, i64, i64, i32, i32, i64*)* @unuse_pmd_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unuse_pmd_range(%struct.vm_area_struct* %0, i32* %1, i64 %2, i64 %3, i32 %4, i32 %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.vm_area_struct*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %9, align 8
  store i32* %1, i32** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i64* %6, i64** %15, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = load i64, i64* %11, align 8
  %21 = call i32* @pmd_offset(i32* %19, i64 %20)
  store i32* %21, i32** %16, align 8
  br label %22

22:                                               ; preds = %45, %7
  %23 = call i32 (...) @cond_resched()
  %24 = load i64, i64* %11, align 8
  %25 = load i64, i64* %12, align 8
  %26 = call i64 @pmd_addr_end(i64 %24, i64 %25)
  store i64 %26, i64* %17, align 8
  %27 = load i32*, i32** %16, align 8
  %28 = call i64 @pmd_none_or_trans_huge_or_clear_bad(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %45

31:                                               ; preds = %22
  %32 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %33 = load i32*, i32** %16, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* %17, align 8
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %14, align 4
  %38 = load i64*, i64** %15, align 8
  %39 = call i32 @unuse_pte_range(%struct.vm_area_struct* %32, i32* %33, i64 %34, i64 %35, i32 %36, i32 %37, i64* %38)
  store i32 %39, i32* %18, align 4
  %40 = load i32, i32* %18, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %31
  %43 = load i32, i32* %18, align 4
  store i32 %43, i32* %8, align 4
  br label %53

44:                                               ; preds = %31
  br label %45

45:                                               ; preds = %44, %30
  %46 = load i32*, i32** %16, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %16, align 8
  %48 = load i64, i64* %17, align 8
  store i64 %48, i64* %11, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* %12, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %22, label %52

52:                                               ; preds = %45
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %52, %42
  %54 = load i32, i32* %8, align 4
  ret i32 %54
}

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i64 @pmd_addr_end(i64, i64) #1

declare dso_local i64 @pmd_none_or_trans_huge_or_clear_bad(i32*) #1

declare dso_local i32 @unuse_pte_range(%struct.vm_area_struct*, i32*, i64, i64, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
