; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_page_trans_huge_mapcount.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_page_trans_huge_mapcount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@HPAGE_PMD_NR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @page_trans_huge_mapcount(%struct.page* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.page*, %struct.page** %4, align 8
  %11 = call i32 @PageHuge(%struct.page* %10)
  %12 = load %struct.page*, %struct.page** %4, align 8
  %13 = call i32 @VM_BUG_ON_PAGE(i32 %11, %struct.page* %12)
  %14 = load %struct.page*, %struct.page** %4, align 8
  %15 = call i32 @PageTransCompound(%struct.page* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @likely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %2
  %22 = load %struct.page*, %struct.page** %4, align 8
  %23 = getelementptr inbounds %struct.page, %struct.page* %22, i32 0, i32 0
  %24 = call i32 @atomic_read(i32* %23)
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %9, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* %9, align 4
  %30 = load i32*, i32** %5, align 8
  store i32 %29, i32* %30, align 4
  br label %31

31:                                               ; preds = %28, %21
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %3, align 4
  br label %83

33:                                               ; preds = %2
  %34 = load %struct.page*, %struct.page** %4, align 8
  %35 = call %struct.page* @compound_head(%struct.page* %34)
  store %struct.page* %35, %struct.page** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %54, %33
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @HPAGE_PMD_NR, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %36
  %41 = load %struct.page*, %struct.page** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.page, %struct.page* %41, i64 %43
  %45 = getelementptr inbounds %struct.page, %struct.page* %44, i32 0, i32 0
  %46 = call i32 @atomic_read(i32* %45)
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @max(i32 %48, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %40
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %36

57:                                               ; preds = %36
  %58 = load %struct.page*, %struct.page** %4, align 8
  %59 = call i64 @PageDoubleMap(%struct.page* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load i32, i32* %7, align 4
  %63 = sub nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* @HPAGE_PMD_NR, align 4
  %65 = load i32, i32* %8, align 4
  %66 = sub nsw i32 %65, %64
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %61, %57
  %68 = load %struct.page*, %struct.page** %4, align 8
  %69 = call i32 @compound_mapcount(%struct.page* %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %8, align 4
  %76 = load i32*, i32** %5, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %67
  %79 = load i32, i32* %8, align 4
  %80 = load i32*, i32** %5, align 8
  store i32 %79, i32* %80, align 4
  br label %81

81:                                               ; preds = %78, %67
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %81, %31
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @PageHuge(%struct.page*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @PageTransCompound(%struct.page*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local %struct.page* @compound_head(%struct.page*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @PageDoubleMap(%struct.page*) #1

declare dso_local i32 @compound_mapcount(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
