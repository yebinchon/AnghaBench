; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_iov_iter.c_pipe_get_pages.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_iov_iter.c_pipe_get_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iov_iter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.page = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iov_iter*, %struct.page**, i64, i32, i64*)* @pipe_get_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pipe_get_pages(%struct.iov_iter* %0, %struct.page** %1, i64 %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iov_iter*, align 8
  %8 = alloca %struct.page**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.iov_iter* %0, %struct.iov_iter** %7, align 8
  store %struct.page** %1, %struct.page*** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %63

18:                                               ; preds = %5
  %19 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %20 = call i32 @sanity(%struct.iov_iter* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @EFAULT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %63

25:                                               ; preds = %18
  %26 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %27 = load i64*, i64** %11, align 8
  %28 = call i32 @data_start(%struct.iov_iter* %26, i32* %14, i64* %27)
  %29 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %30 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %14, align 4
  %35 = sub nsw i32 %33, %34
  %36 = sub nsw i32 %35, 1
  %37 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %38 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %41, 1
  %43 = and i32 %36, %42
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = zext i32 %45 to i64
  %47 = load i32, i32* %10, align 4
  %48 = zext i32 %47 to i64
  %49 = call i64 @min(i64 %46, i64 %48)
  %50 = load i64, i64* @PAGE_SIZE, align 8
  %51 = mul i64 %49, %50
  %52 = load i64*, i64** %11, align 8
  %53 = load i64, i64* %52, align 8
  %54 = sub i64 %51, %53
  store i64 %54, i64* %13, align 8
  %55 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* %13, align 8
  %58 = call i64 @min(i64 %56, i64 %57)
  %59 = load %struct.page**, %struct.page*** %8, align 8
  %60 = load i32, i32* %14, align 4
  %61 = load i64*, i64** %11, align 8
  %62 = call i32 @__pipe_get_pages(%struct.iov_iter* %55, i64 %58, %struct.page** %59, i32 %60, i64* %61)
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %25, %22, %17
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i32 @sanity(%struct.iov_iter*) #1

declare dso_local i32 @data_start(%struct.iov_iter*, i32*, i64*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @__pipe_get_pages(%struct.iov_iter*, i64, %struct.page**, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
