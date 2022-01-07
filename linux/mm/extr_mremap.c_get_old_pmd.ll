; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mremap.c_get_old_pmd.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mremap.c_get_old_pmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.mm_struct*, i64)* @get_old_pmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_old_pmd(%struct.mm_struct* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i32* @pgd_offset(%struct.mm_struct* %10, i64 %11)
  store i32* %12, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i64 @pgd_none_or_clear_bad(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %44

17:                                               ; preds = %2
  %18 = load i32*, i32** %6, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i32* @p4d_offset(i32* %18, i64 %19)
  store i32* %20, i32** %7, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call i64 @p4d_none_or_clear_bad(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32* null, i32** %3, align 8
  br label %44

25:                                               ; preds = %17
  %26 = load i32*, i32** %7, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i32* @pud_offset(i32* %26, i64 %27)
  store i32* %28, i32** %8, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = call i64 @pud_none_or_clear_bad(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32* null, i32** %3, align 8
  br label %44

33:                                               ; preds = %25
  %34 = load i32*, i32** %8, align 8
  %35 = load i64, i64* %5, align 8
  %36 = call i32* @pmd_offset(i32* %34, i64 %35)
  store i32* %36, i32** %9, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @pmd_none(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  store i32* null, i32** %3, align 8
  br label %44

42:                                               ; preds = %33
  %43 = load i32*, i32** %9, align 8
  store i32* %43, i32** %3, align 8
  br label %44

44:                                               ; preds = %42, %41, %32, %24, %16
  %45 = load i32*, i32** %3, align 8
  ret i32* %45
}

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i64) #1

declare dso_local i64 @pgd_none_or_clear_bad(i32*) #1

declare dso_local i32* @p4d_offset(i32*, i64) #1

declare dso_local i64 @p4d_none_or_clear_bad(i32*) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i64 @pud_none_or_clear_bad(i32*) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i64 @pmd_none(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
