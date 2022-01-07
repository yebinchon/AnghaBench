; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_iov_iter.c_copy_page_from_iter.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_iov_iter.c_copy_page_from_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.iov_iter = type { i32 }

@ITER_BVEC = common dso_local global i32 0, align 4
@ITER_KVEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @copy_page_from_iter(%struct.page* %0, i64 %1, i64 %2, %struct.iov_iter* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.iov_iter*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.iov_iter* %3, %struct.iov_iter** %9, align 8
  %12 = load %struct.page*, %struct.page** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* %8, align 8
  %15 = call i32 @page_copy_sane(%struct.page* %12, i64 %13, i64 %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %64

22:                                               ; preds = %4
  %23 = load %struct.iov_iter*, %struct.iov_iter** %9, align 8
  %24 = call i64 @iov_iter_is_pipe(%struct.iov_iter* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load %struct.iov_iter*, %struct.iov_iter** %9, align 8
  %28 = call i64 @iov_iter_is_discard(%struct.iov_iter* %27)
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi i1 [ true, %22 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = call i32 @WARN_ON(i32 1)
  store i64 0, i64* %5, align 8
  br label %64

37:                                               ; preds = %30
  %38 = load %struct.iov_iter*, %struct.iov_iter** %9, align 8
  %39 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ITER_BVEC, align 4
  %42 = load i32, i32* @ITER_KVEC, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %37
  %47 = load %struct.page*, %struct.page** %6, align 8
  %48 = call i8* @kmap_atomic(%struct.page* %47)
  store i8* %48, i8** %10, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = load i64, i64* %7, align 8
  %51 = getelementptr i8, i8* %49, i64 %50
  %52 = load i64, i64* %8, align 8
  %53 = load %struct.iov_iter*, %struct.iov_iter** %9, align 8
  %54 = call i64 @_copy_from_iter(i8* %51, i64 %52, %struct.iov_iter* %53)
  store i64 %54, i64* %11, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = call i32 @kunmap_atomic(i8* %55)
  %57 = load i64, i64* %11, align 8
  store i64 %57, i64* %5, align 8
  br label %64

58:                                               ; preds = %37
  %59 = load %struct.page*, %struct.page** %6, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load %struct.iov_iter*, %struct.iov_iter** %9, align 8
  %63 = call i64 @copy_page_from_iter_iovec(%struct.page* %59, i64 %60, i64 %61, %struct.iov_iter* %62)
  store i64 %63, i64* %5, align 8
  br label %64

64:                                               ; preds = %58, %46, %35, %21
  %65 = load i64, i64* %5, align 8
  ret i64 %65
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @page_copy_sane(%struct.page*, i64, i64) #1

declare dso_local i64 @iov_iter_is_pipe(%struct.iov_iter*) #1

declare dso_local i64 @iov_iter_is_discard(%struct.iov_iter*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i64 @_copy_from_iter(i8*, i64, %struct.iov_iter*) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i64 @copy_page_from_iter_iovec(%struct.page*, i64, i64, %struct.iov_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
