; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_hugepage_subpool_put_pages.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_hugepage_subpool_put_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hugepage_subpool = type { i32, i64, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.hugepage_subpool*, i64)* @hugepage_subpool_put_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hugepage_subpool_put_pages(%struct.hugepage_subpool* %0, i64 %1) #0 {
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
  %11 = load i64, i64* %5, align 8
  store i64 %11, i64* %3, align 8
  br label %89

12:                                               ; preds = %2
  %13 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %4, align 8
  %14 = getelementptr inbounds %struct.hugepage_subpool, %struct.hugepage_subpool* %13, i32 0, i32 4
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %4, align 8
  %17 = getelementptr inbounds %struct.hugepage_subpool, %struct.hugepage_subpool* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %26

20:                                               ; preds = %12
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %4, align 8
  %23 = getelementptr inbounds %struct.hugepage_subpool, %struct.hugepage_subpool* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %24, %21
  store i64 %25, i64* %23, align 8
  br label %26

26:                                               ; preds = %20, %12
  %27 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %4, align 8
  %28 = getelementptr inbounds %struct.hugepage_subpool, %struct.hugepage_subpool* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %85

31:                                               ; preds = %26
  %32 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %4, align 8
  %33 = getelementptr inbounds %struct.hugepage_subpool, %struct.hugepage_subpool* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %4, align 8
  %36 = getelementptr inbounds %struct.hugepage_subpool, %struct.hugepage_subpool* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = icmp slt i64 %34, %38
  br i1 %39, label %40, label %85

40:                                               ; preds = %31
  %41 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %4, align 8
  %42 = getelementptr inbounds %struct.hugepage_subpool, %struct.hugepage_subpool* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = add nsw i64 %43, %44
  %46 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %4, align 8
  %47 = getelementptr inbounds %struct.hugepage_subpool, %struct.hugepage_subpool* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = icmp sle i64 %45, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  store i64 0, i64* %6, align 8
  br label %63

52:                                               ; preds = %40
  %53 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %4, align 8
  %54 = getelementptr inbounds %struct.hugepage_subpool, %struct.hugepage_subpool* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %5, align 8
  %57 = add nsw i64 %55, %56
  %58 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %4, align 8
  %59 = getelementptr inbounds %struct.hugepage_subpool, %struct.hugepage_subpool* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = sub nsw i64 %57, %61
  store i64 %62, i64* %6, align 8
  br label %63

63:                                               ; preds = %52, %51
  %64 = load i64, i64* %5, align 8
  %65 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %4, align 8
  %66 = getelementptr inbounds %struct.hugepage_subpool, %struct.hugepage_subpool* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, %64
  store i64 %68, i64* %66, align 8
  %69 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %4, align 8
  %70 = getelementptr inbounds %struct.hugepage_subpool, %struct.hugepage_subpool* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %4, align 8
  %73 = getelementptr inbounds %struct.hugepage_subpool, %struct.hugepage_subpool* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = icmp sgt i64 %71, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %63
  %78 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %4, align 8
  %79 = getelementptr inbounds %struct.hugepage_subpool, %struct.hugepage_subpool* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %4, align 8
  %83 = getelementptr inbounds %struct.hugepage_subpool, %struct.hugepage_subpool* %82, i32 0, i32 3
  store i64 %81, i64* %83, align 8
  br label %84

84:                                               ; preds = %77, %63
  br label %85

85:                                               ; preds = %84, %31, %26
  %86 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %4, align 8
  %87 = call i32 @unlock_or_release_subpool(%struct.hugepage_subpool* %86)
  %88 = load i64, i64* %6, align 8
  store i64 %88, i64* %3, align 8
  br label %89

89:                                               ; preds = %85, %10
  %90 = load i64, i64* %3, align 8
  ret i64 %90
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @unlock_or_release_subpool(%struct.hugepage_subpool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
