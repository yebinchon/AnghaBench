; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_vmalloc.c_vmap_pud_range.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_vmalloc.c_vmap_pud_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@init_mm = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64, i32, %struct.page**, i32*)* @vmap_pud_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmap_pud_range(i32* %0, i64 %1, i64 %2, i32 %3, %struct.page** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.page**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.page** %4, %struct.page*** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i64, i64* %9, align 8
  %18 = call i32* @pud_alloc(i32* @init_mm, i32* %16, i64 %17)
  store i32* %18, i32** %14, align 8
  %19 = load i32*, i32** %14, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %6
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %49

24:                                               ; preds = %6
  br label %25

25:                                               ; preds = %41, %24
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* %10, align 8
  %28 = call i64 @pud_addr_end(i64 %26, i64 %27)
  store i64 %28, i64* %15, align 8
  %29 = load i32*, i32** %14, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %15, align 8
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.page**, %struct.page*** %12, align 8
  %34 = load i32*, i32** %13, align 8
  %35 = call i64 @vmap_pmd_range(i32* %29, i64 %30, i64 %31, i32 %32, %struct.page** %33, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %25
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %7, align 4
  br label %49

40:                                               ; preds = %25
  br label %41

41:                                               ; preds = %40
  %42 = load i32*, i32** %14, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %14, align 8
  %44 = load i64, i64* %15, align 8
  store i64 %44, i64* %9, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* %10, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %25, label %48

48:                                               ; preds = %41
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %48, %37, %21
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

declare dso_local i32* @pud_alloc(i32*, i32*, i64) #1

declare dso_local i64 @pud_addr_end(i64, i64) #1

declare dso_local i64 @vmap_pmd_range(i32*, i64, i64, i32, %struct.page**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
