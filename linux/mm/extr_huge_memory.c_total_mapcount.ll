; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_total_mapcount.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_total_mapcount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@HPAGE_PMD_NR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @total_mapcount(%struct.page* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  %7 = load %struct.page*, %struct.page** %3, align 8
  %8 = call i32 @PageTail(%struct.page* %7)
  %9 = load %struct.page*, %struct.page** %3, align 8
  %10 = call i32 @VM_BUG_ON_PAGE(i32 %8, %struct.page* %9)
  %11 = load %struct.page*, %struct.page** %3, align 8
  %12 = call i32 @PageCompound(%struct.page* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @likely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.page*, %struct.page** %3, align 8
  %20 = getelementptr inbounds %struct.page, %struct.page* %19, i32 0, i32 0
  %21 = call i32 @atomic_read(i32* %20)
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %2, align 4
  br label %70

23:                                               ; preds = %1
  %24 = load %struct.page*, %struct.page** %3, align 8
  %25 = call i32 @compound_mapcount(%struct.page* %24)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.page*, %struct.page** %3, align 8
  %27 = call i64 @PageHuge(%struct.page* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %70

31:                                               ; preds = %23
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %47, %31
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @HPAGE_PMD_NR, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load %struct.page*, %struct.page** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.page, %struct.page* %38, i64 %40
  %42 = getelementptr inbounds %struct.page, %struct.page* %41, i32 0, i32 0
  %43 = call i32 @atomic_read(i32* %42)
  %44 = add nsw i32 %43, 1
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %37
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %33

50:                                               ; preds = %33
  %51 = load %struct.page*, %struct.page** %3, align 8
  %52 = call i32 @PageAnon(%struct.page* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @HPAGE_PMD_NR, align 4
  %58 = mul nsw i32 %56, %57
  %59 = sub nsw i32 %55, %58
  store i32 %59, i32* %2, align 4
  br label %70

60:                                               ; preds = %50
  %61 = load %struct.page*, %struct.page** %3, align 8
  %62 = call i64 @PageDoubleMap(%struct.page* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i32, i32* @HPAGE_PMD_NR, align 4
  %66 = load i32, i32* %6, align 4
  %67 = sub nsw i32 %66, %65
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %64, %60
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %54, %29, %18
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @PageTail(%struct.page*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @PageCompound(%struct.page*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @compound_mapcount(%struct.page*) #1

declare dso_local i64 @PageHuge(%struct.page*) #1

declare dso_local i32 @PageAnon(%struct.page*) #1

declare dso_local i64 @PageDoubleMap(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
