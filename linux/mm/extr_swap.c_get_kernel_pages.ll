; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swap.c_get_kernel_pages.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swap.c_get_kernel_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvec = type { i64, i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_kernel_pages(%struct.kvec* %0, i32 %1, i32 %2, %struct.page** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.page**, align 8
  %10 = alloca i32, align 4
  store %struct.kvec* %0, %struct.kvec** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.page** %3, %struct.page*** %9, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %47, %4
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %50

15:                                               ; preds = %11
  %16 = load %struct.kvec*, %struct.kvec** %6, align 8
  %17 = load i32, i32* %10, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.kvec, %struct.kvec* %16, i64 %18
  %20 = getelementptr inbounds %struct.kvec, %struct.kvec* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PAGE_SIZE, align 8
  %23 = icmp ne i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @WARN_ON(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %15
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %5, align 4
  br label %52

29:                                               ; preds = %15
  %30 = load %struct.kvec*, %struct.kvec** %6, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.kvec, %struct.kvec* %30, i64 %32
  %34 = getelementptr inbounds %struct.kvec, %struct.kvec* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.page* @kmap_to_page(i32 %35)
  %37 = load %struct.page**, %struct.page*** %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.page*, %struct.page** %37, i64 %39
  store %struct.page* %36, %struct.page** %40, align 8
  %41 = load %struct.page**, %struct.page*** %9, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.page*, %struct.page** %41, i64 %43
  %45 = load %struct.page*, %struct.page** %44, align 8
  %46 = call i32 @get_page(%struct.page* %45)
  br label %47

47:                                               ; preds = %29
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %10, align 4
  br label %11

50:                                               ; preds = %11
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %50, %27
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.page* @kmap_to_page(i32) #1

declare dso_local i32 @get_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
