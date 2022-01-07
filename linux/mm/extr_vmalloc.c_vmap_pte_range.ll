; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_vmalloc.c_vmap_pte_range.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_vmalloc.c_vmap_pte_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@init_mm = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64, i32, %struct.page**, i32*)* @vmap_pte_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmap_pte_range(i32* %0, i64 %1, i64 %2, i32 %3, %struct.page** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.page**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.page*, align 8
  store i32* %0, i32** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.page** %4, %struct.page*** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i64, i64* %9, align 8
  %18 = call i32* @pte_alloc_kernel(i32* %16, i64 %17)
  store i32* %18, i32** %14, align 8
  %19 = load i32*, i32** %14, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %6
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %73

24:                                               ; preds = %6
  br label %25

25:                                               ; preds = %63, %24
  %26 = load %struct.page**, %struct.page*** %12, align 8
  %27 = load i32*, i32** %13, align 8
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.page*, %struct.page** %26, i64 %29
  %31 = load %struct.page*, %struct.page** %30, align 8
  store %struct.page* %31, %struct.page** %15, align 8
  %32 = load i32*, i32** %14, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pte_none(i32 %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @WARN_ON(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %25
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %73

43:                                               ; preds = %25
  %44 = load %struct.page*, %struct.page** %15, align 8
  %45 = icmp ne %struct.page* %44, null
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i64 @WARN_ON(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %7, align 4
  br label %73

53:                                               ; preds = %43
  %54 = load i64, i64* %9, align 8
  %55 = load i32*, i32** %14, align 8
  %56 = load %struct.page*, %struct.page** %15, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @mk_pte(%struct.page* %56, i32 %57)
  %59 = call i32 @set_pte_at(i32* @init_mm, i64 %54, i32* %55, i32 %58)
  %60 = load i32*, i32** %13, align 8
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %53
  %64 = load i32*, i32** %14, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %14, align 8
  %66 = load i64, i64* @PAGE_SIZE, align 8
  %67 = load i64, i64* %9, align 8
  %68 = add i64 %67, %66
  store i64 %68, i64* %9, align 8
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* %10, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %25, label %72

72:                                               ; preds = %63
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %72, %50, %40, %21
  %74 = load i32, i32* %7, align 4
  ret i32 %74
}

declare dso_local i32* @pte_alloc_kernel(i32*, i64) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @pte_none(i32) #1

declare dso_local i32 @set_pte_at(i32*, i64, i32*, i32) #1

declare dso_local i32 @mk_pte(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
