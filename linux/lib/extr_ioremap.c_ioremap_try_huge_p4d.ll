; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_ioremap.c_ioremap_try_huge_p4d.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_ioremap.c_ioremap_try_huge_p4d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@P4D_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64, i64, i32)* @ioremap_try_huge_p4d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioremap_try_huge_p4d(i32* %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = call i32 (...) @ioremap_p4d_enabled()
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %50

15:                                               ; preds = %5
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* %8, align 8
  %18 = sub i64 %16, %17
  %19 = load i64, i64* @P4D_SIZE, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  br label %50

22:                                               ; preds = %15
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @P4D_SIZE, align 8
  %25 = call i32 @IS_ALIGNED(i64 %23, i64 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %50

28:                                               ; preds = %22
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* @P4D_SIZE, align 8
  %31 = call i32 @IS_ALIGNED(i64 %29, i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  br label %50

34:                                               ; preds = %28
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @p4d_present(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load i32*, i32** %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @p4d_free_pud_page(i32* %40, i64 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  store i32 0, i32* %6, align 4
  br label %50

45:                                               ; preds = %39, %34
  %46 = load i32*, i32** %7, align 8
  %47 = load i64, i64* %10, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @p4d_set_huge(i32* %46, i64 %47, i32 %48)
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %45, %44, %33, %27, %21, %14
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i32 @ioremap_p4d_enabled(...) #1

declare dso_local i32 @IS_ALIGNED(i64, i64) #1

declare dso_local i64 @p4d_present(i32) #1

declare dso_local i32 @p4d_free_pud_page(i32*, i64) #1

declare dso_local i32 @p4d_set_huge(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
