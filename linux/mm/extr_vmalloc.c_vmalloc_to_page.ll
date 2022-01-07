; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_vmalloc.c_vmalloc_to_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_vmalloc.c_vmalloc_to_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @vmalloc_to_page(i8* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = ptrtoint i8* %12 to i64
  store i64 %13, i64* %4, align 8
  store %struct.page* null, %struct.page** %5, align 8
  %14 = load i64, i64* %4, align 8
  %15 = call i32* @pgd_offset_k(i64 %14)
  store i32* %15, i32** %6, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @is_vmalloc_or_module_addr(i8* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @VIRTUAL_BUG_ON(i32 %20)
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @pgd_none(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  store %struct.page* null, %struct.page** %2, align 8
  br label %88

27:                                               ; preds = %1
  %28 = load i32*, i32** %6, align 8
  %29 = load i64, i64* %4, align 8
  %30 = call i32* @p4d_offset(i32* %28, i64 %29)
  store i32* %30, i32** %7, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @p4d_none(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store %struct.page* null, %struct.page** %2, align 8
  br label %88

36:                                               ; preds = %27
  %37 = load i32*, i32** %7, align 8
  %38 = load i64, i64* %4, align 8
  %39 = call i32* @pud_offset(i32* %37, i64 %38)
  store i32* %39, i32** %8, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @pud_bad(i32 %41)
  %43 = call i32 @WARN_ON_ONCE(i64 %42)
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @pud_none(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %36
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @pud_bad(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48, %36
  store %struct.page* null, %struct.page** %2, align 8
  br label %88

54:                                               ; preds = %48
  %55 = load i32*, i32** %8, align 8
  %56 = load i64, i64* %4, align 8
  %57 = call i32* @pmd_offset(i32* %55, i64 %56)
  store i32* %57, i32** %9, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @pmd_bad(i32 %59)
  %61 = call i32 @WARN_ON_ONCE(i64 %60)
  %62 = load i32*, i32** %9, align 8
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @pmd_none(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %54
  %67 = load i32*, i32** %9, align 8
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @pmd_bad(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66, %54
  store %struct.page* null, %struct.page** %2, align 8
  br label %88

72:                                               ; preds = %66
  %73 = load i32*, i32** %9, align 8
  %74 = load i64, i64* %4, align 8
  %75 = call i32* @pte_offset_map(i32* %73, i64 %74)
  store i32* %75, i32** %10, align 8
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i64 @pte_present(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %72
  %82 = load i32, i32* %11, align 4
  %83 = call %struct.page* @pte_page(i32 %82)
  store %struct.page* %83, %struct.page** %5, align 8
  br label %84

84:                                               ; preds = %81, %72
  %85 = load i32*, i32** %10, align 8
  %86 = call i32 @pte_unmap(i32* %85)
  %87 = load %struct.page*, %struct.page** %5, align 8
  store %struct.page* %87, %struct.page** %2, align 8
  br label %88

88:                                               ; preds = %84, %71, %53, %35, %26
  %89 = load %struct.page*, %struct.page** %2, align 8
  ret %struct.page* %89
}

declare dso_local i32* @pgd_offset_k(i64) #1

declare dso_local i32 @VIRTUAL_BUG_ON(i32) #1

declare dso_local i32 @is_vmalloc_or_module_addr(i8*) #1

declare dso_local i64 @pgd_none(i32) #1

declare dso_local i32* @p4d_offset(i32*, i64) #1

declare dso_local i64 @p4d_none(i32) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i32 @WARN_ON_ONCE(i64) #1

declare dso_local i64 @pud_bad(i32) #1

declare dso_local i64 @pud_none(i32) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i64 @pmd_bad(i32) #1

declare dso_local i64 @pmd_none(i32) #1

declare dso_local i32* @pte_offset_map(i32*, i64) #1

declare dso_local i64 @pte_present(i32) #1

declare dso_local %struct.page* @pte_page(i32) #1

declare dso_local i32 @pte_unmap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
