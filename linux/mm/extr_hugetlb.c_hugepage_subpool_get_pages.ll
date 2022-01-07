; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_hugepage_subpool_get_pages.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_hugepage_subpool_get_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hugepage_subpool = type { i32, i64, i32, i64, i32 }

@ENOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.hugepage_subpool*, i64)* @hugepage_subpool_get_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hugepage_subpool_get_pages(%struct.hugepage_subpool* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.hugepage_subpool*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.hugepage_subpool* %0, %struct.hugepage_subpool** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  store i64 %7, i64* %6, align 8
  %8 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %4, align 8
  %9 = icmp ne %struct.hugepage_subpool* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load i64, i64* %6, align 8
  store i64 %11, i64* %3, align 8
  br label %78

12:                                               ; preds = %2
  %13 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %4, align 8
  %14 = getelementptr inbounds %struct.hugepage_subpool, %struct.hugepage_subpool* %13, i32 0, i32 4
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %4, align 8
  %17 = getelementptr inbounds %struct.hugepage_subpool, %struct.hugepage_subpool* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %41

20:                                               ; preds = %12
  %21 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %4, align 8
  %22 = getelementptr inbounds %struct.hugepage_subpool, %struct.hugepage_subpool* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = add nsw i64 %23, %24
  %26 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %4, align 8
  %27 = getelementptr inbounds %struct.hugepage_subpool, %struct.hugepage_subpool* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = icmp sle i64 %25, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %20
  %32 = load i64, i64* %5, align 8
  %33 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %4, align 8
  %34 = getelementptr inbounds %struct.hugepage_subpool, %struct.hugepage_subpool* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, %32
  store i64 %36, i64* %34, align 8
  br label %40

37:                                               ; preds = %20
  %38 = load i64, i64* @ENOMEM, align 8
  %39 = sub nsw i64 0, %38
  store i64 %39, i64* %6, align 8
  br label %73

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %12
  %42 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %4, align 8
  %43 = getelementptr inbounds %struct.hugepage_subpool, %struct.hugepage_subpool* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, -1
  br i1 %45, label %46, label %72

46:                                               ; preds = %41
  %47 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %4, align 8
  %48 = getelementptr inbounds %struct.hugepage_subpool, %struct.hugepage_subpool* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %72

51:                                               ; preds = %46
  %52 = load i64, i64* %5, align 8
  %53 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %4, align 8
  %54 = getelementptr inbounds %struct.hugepage_subpool, %struct.hugepage_subpool* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %52, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = load i64, i64* %5, align 8
  %59 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %4, align 8
  %60 = getelementptr inbounds %struct.hugepage_subpool, %struct.hugepage_subpool* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %58, %61
  store i64 %62, i64* %6, align 8
  %63 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %4, align 8
  %64 = getelementptr inbounds %struct.hugepage_subpool, %struct.hugepage_subpool* %63, i32 0, i32 3
  store i64 0, i64* %64, align 8
  br label %71

65:                                               ; preds = %51
  store i64 0, i64* %6, align 8
  %66 = load i64, i64* %5, align 8
  %67 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %4, align 8
  %68 = getelementptr inbounds %struct.hugepage_subpool, %struct.hugepage_subpool* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %69, %66
  store i64 %70, i64* %68, align 8
  br label %71

71:                                               ; preds = %65, %57
  br label %72

72:                                               ; preds = %71, %46, %41
  br label %73

73:                                               ; preds = %72, %37
  %74 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %4, align 8
  %75 = getelementptr inbounds %struct.hugepage_subpool, %struct.hugepage_subpool* %74, i32 0, i32 4
  %76 = call i32 @spin_unlock(i32* %75)
  %77 = load i64, i64* %6, align 8
  store i64 %77, i64* %3, align 8
  br label %78

78:                                               ; preds = %73, %10
  %79 = load i64, i64* %3, align 8
  ret i64 %79
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
