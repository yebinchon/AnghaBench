; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_iov_iter.c_pipe_get_pages_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_iov_iter.c_pipe_get_pages_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iov_iter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.page = type { i32 }

@EFAULT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.iov_iter*, %struct.page***, i64, i64*)* @pipe_get_pages_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pipe_get_pages_alloc(%struct.iov_iter* %0, %struct.page*** %1, i64 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.iov_iter*, align 8
  %7 = alloca %struct.page***, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.page**, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.iov_iter* %0, %struct.iov_iter** %6, align 8
  store %struct.page*** %1, %struct.page**** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %88

17:                                               ; preds = %4
  %18 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %19 = call i32 @sanity(%struct.iov_iter* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load i64, i64* @EFAULT, align 8
  %23 = sub i64 0, %22
  store i64 %23, i64* %5, align 8
  br label %88

24:                                               ; preds = %17
  %25 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %26 = load i64*, i64** %9, align 8
  %27 = call i32 @data_start(%struct.iov_iter* %25, i32* %12, i64* %26)
  %28 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %29 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %12, align 4
  %34 = sub nsw i32 %32, %33
  %35 = sub nsw i32 %34, 1
  %36 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %37 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, 1
  %42 = and i32 %35, %41
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @PAGE_SIZE, align 4
  %46 = mul nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = load i64*, i64** %9, align 8
  %49 = load i64, i64* %48, align 8
  %50 = sub i64 %47, %49
  store i64 %50, i64* %11, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %11, align 8
  %53 = icmp ugt i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %24
  %55 = load i64, i64* %11, align 8
  store i64 %55, i64* %8, align 8
  br label %63

56:                                               ; preds = %24
  %57 = load i64, i64* %8, align 8
  %58 = load i64*, i64** %9, align 8
  %59 = load i64, i64* %58, align 8
  %60 = add i64 %57, %59
  %61 = load i32, i32* @PAGE_SIZE, align 4
  %62 = call i32 @DIV_ROUND_UP(i64 %60, i32 %61)
  store i32 %62, i32* %13, align 4
  br label %63

63:                                               ; preds = %56, %54
  %64 = load i32, i32* %13, align 4
  %65 = call %struct.page** @get_pages_array(i32 %64)
  store %struct.page** %65, %struct.page*** %10, align 8
  %66 = load %struct.page**, %struct.page*** %10, align 8
  %67 = icmp ne %struct.page** %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = load i64, i64* @ENOMEM, align 8
  %70 = sub i64 0, %69
  store i64 %70, i64* %5, align 8
  br label %88

71:                                               ; preds = %63
  %72 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %73 = load i64, i64* %8, align 8
  %74 = load %struct.page**, %struct.page*** %10, align 8
  %75 = load i32, i32* %12, align 4
  %76 = load i64*, i64** %9, align 8
  %77 = call i64 @__pipe_get_pages(%struct.iov_iter* %72, i64 %73, %struct.page** %74, i32 %75, i64* %76)
  store i64 %77, i64* %11, align 8
  %78 = load i64, i64* %11, align 8
  %79 = icmp ugt i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %71
  %81 = load %struct.page**, %struct.page*** %10, align 8
  %82 = load %struct.page***, %struct.page**** %7, align 8
  store %struct.page** %81, %struct.page*** %82, align 8
  br label %86

83:                                               ; preds = %71
  %84 = load %struct.page**, %struct.page*** %10, align 8
  %85 = call i32 @kvfree(%struct.page** %84)
  br label %86

86:                                               ; preds = %83, %80
  %87 = load i64, i64* %11, align 8
  store i64 %87, i64* %5, align 8
  br label %88

88:                                               ; preds = %86, %68, %21, %16
  %89 = load i64, i64* %5, align 8
  ret i64 %89
}

declare dso_local i32 @sanity(%struct.iov_iter*) #1

declare dso_local i32 @data_start(%struct.iov_iter*, i32*, i64*) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local %struct.page** @get_pages_array(i32) #1

declare dso_local i64 @__pipe_get_pages(%struct.iov_iter*, i64, %struct.page**, i32, i64*) #1

declare dso_local i32 @kvfree(%struct.page**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
