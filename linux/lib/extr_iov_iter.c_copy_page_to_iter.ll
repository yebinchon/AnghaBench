; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_iov_iter.c_copy_page_to_iter.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_iov_iter.c_copy_page_to_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.iov_iter = type { i32 }

@ITER_BVEC = common dso_local global i32 0, align 4
@ITER_KVEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @copy_page_to_iter(%struct.page* %0, i64 %1, i64 %2, %struct.iov_iter* %3) #0 {
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
  br label %70

22:                                               ; preds = %4
  %23 = load %struct.iov_iter*, %struct.iov_iter** %9, align 8
  %24 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ITER_BVEC, align 4
  %27 = load i32, i32* @ITER_KVEC, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %25, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %22
  %32 = load %struct.page*, %struct.page** %6, align 8
  %33 = call i8* @kmap_atomic(%struct.page* %32)
  store i8* %33, i8** %10, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr i8, i8* %34, i64 %35
  %37 = load i64, i64* %8, align 8
  %38 = load %struct.iov_iter*, %struct.iov_iter** %9, align 8
  %39 = call i64 @copy_to_iter(i8* %36, i64 %37, %struct.iov_iter* %38)
  store i64 %39, i64* %11, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = call i32 @kunmap_atomic(i8* %40)
  %42 = load i64, i64* %11, align 8
  store i64 %42, i64* %5, align 8
  br label %70

43:                                               ; preds = %22
  %44 = load %struct.iov_iter*, %struct.iov_iter** %9, align 8
  %45 = call i32 @iov_iter_is_discard(%struct.iov_iter* %44)
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i64, i64* %8, align 8
  store i64 %49, i64* %5, align 8
  br label %70

50:                                               ; preds = %43
  %51 = load %struct.iov_iter*, %struct.iov_iter** %9, align 8
  %52 = call i32 @iov_iter_is_pipe(%struct.iov_iter* %51)
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i64 @likely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %50
  %59 = load %struct.page*, %struct.page** %6, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load %struct.iov_iter*, %struct.iov_iter** %9, align 8
  %63 = call i64 @copy_page_to_iter_iovec(%struct.page* %59, i64 %60, i64 %61, %struct.iov_iter* %62)
  store i64 %63, i64* %5, align 8
  br label %70

64:                                               ; preds = %50
  %65 = load %struct.page*, %struct.page** %6, align 8
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* %8, align 8
  %68 = load %struct.iov_iter*, %struct.iov_iter** %9, align 8
  %69 = call i64 @copy_page_to_iter_pipe(%struct.page* %65, i64 %66, i64 %67, %struct.iov_iter* %68)
  store i64 %69, i64* %5, align 8
  br label %70

70:                                               ; preds = %64, %58, %48, %31, %21
  %71 = load i64, i64* %5, align 8
  ret i64 %71
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @page_copy_sane(%struct.page*, i64, i64) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i64 @copy_to_iter(i8*, i64, %struct.iov_iter*) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @iov_iter_is_discard(%struct.iov_iter*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @iov_iter_is_pipe(%struct.iov_iter*) #1

declare dso_local i64 @copy_page_to_iter_iovec(%struct.page*, i64, i64, %struct.iov_iter*) #1

declare dso_local i64 @copy_page_to_iter_pipe(%struct.page*, i64, i64, %struct.iov_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
