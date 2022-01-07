; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xdr.c__copy_from_pages.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xdr.c__copy_from_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_copy_from_pages(i8* %0, %struct.page** %1, i64 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.page**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.page**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store %struct.page** %1, %struct.page*** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.page**, %struct.page*** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @PAGE_SHIFT, align 8
  %15 = lshr i64 %13, %14
  %16 = getelementptr inbounds %struct.page*, %struct.page** %12, i64 %15
  store %struct.page** %16, %struct.page*** %9, align 8
  %17 = load i64, i64* @PAGE_MASK, align 8
  %18 = xor i64 %17, -1
  %19 = load i64, i64* %7, align 8
  %20 = and i64 %19, %18
  store i64 %20, i64* %7, align 8
  br label %21

21:                                               ; preds = %55, %4
  %22 = load i64, i64* @PAGE_SIZE, align 8
  %23 = load i64, i64* %7, align 8
  %24 = sub i64 %22, %23
  store i64 %24, i64* %11, align 8
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp ugt i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i64, i64* %8, align 8
  store i64 %29, i64* %11, align 8
  br label %30

30:                                               ; preds = %28, %21
  %31 = load %struct.page**, %struct.page*** %9, align 8
  %32 = load %struct.page*, %struct.page** %31, align 8
  %33 = call i8* @kmap_atomic(%struct.page* %32)
  store i8* %33, i8** %10, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @memcpy(i8* %34, i8* %37, i64 %38)
  %40 = load i8*, i8** %10, align 8
  %41 = call i32 @kunmap_atomic(i8* %40)
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* %7, align 8
  %44 = add i64 %43, %42
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* @PAGE_SIZE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %30
  store i64 0, i64* %7, align 8
  %49 = load %struct.page**, %struct.page*** %9, align 8
  %50 = getelementptr inbounds %struct.page*, %struct.page** %49, i32 1
  store %struct.page** %50, %struct.page*** %9, align 8
  br label %51

51:                                               ; preds = %48, %30
  %52 = load i64, i64* %11, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 %52
  store i8* %54, i8** %5, align 8
  br label %55

55:                                               ; preds = %51
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* %8, align 8
  %58 = sub i64 %57, %56
  store i64 %58, i64* %8, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %21, label %60

60:                                               ; preds = %55
  ret void
}

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
