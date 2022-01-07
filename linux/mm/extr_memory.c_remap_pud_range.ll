; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory.c_remap_pud_range.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory.c_remap_pud_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*, i32*, i64, i64, i64, i32)* @remap_pud_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remap_pud_range(%struct.mm_struct* %0, i32* %1, i64 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mm_struct*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load i64, i64* %10, align 8
  %18 = load i64, i64* @PAGE_SHIFT, align 8
  %19 = lshr i64 %17, %18
  %20 = load i64, i64* %12, align 8
  %21 = sub i64 %20, %19
  store i64 %21, i64* %12, align 8
  %22 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load i64, i64* %10, align 8
  %25 = call i32* @pud_alloc(%struct.mm_struct* %22, i32* %23, i64 %24)
  store i32* %25, i32** %14, align 8
  %26 = load i32*, i32** %14, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %6
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %60

31:                                               ; preds = %6
  br label %32

32:                                               ; preds = %52, %31
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* %11, align 8
  %35 = call i64 @pud_addr_end(i64 %33, i64 %34)
  store i64 %35, i64* %15, align 8
  %36 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %37 = load i32*, i32** %14, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* %15, align 8
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* @PAGE_SHIFT, align 8
  %43 = lshr i64 %41, %42
  %44 = add i64 %40, %43
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @remap_pmd_range(%struct.mm_struct* %36, i32* %37, i64 %38, i64 %39, i64 %44, i32 %45)
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %16, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %32
  %50 = load i32, i32* %16, align 4
  store i32 %50, i32* %7, align 4
  br label %60

51:                                               ; preds = %32
  br label %52

52:                                               ; preds = %51
  %53 = load i32*, i32** %14, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %14, align 8
  %55 = load i64, i64* %15, align 8
  store i64 %55, i64* %10, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* %11, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %32, label %59

59:                                               ; preds = %52
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %59, %49, %28
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

declare dso_local i32* @pud_alloc(%struct.mm_struct*, i32*, i64) #1

declare dso_local i64 @pud_addr_end(i64, i64) #1

declare dso_local i32 @remap_pmd_range(%struct.mm_struct*, i32*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
