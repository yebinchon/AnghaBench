; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtsock.c_xs_alloc_sparse_pages.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtsock.c_xs_alloc_sparse_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_buf = type { i32, i32, i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@XDRBUF_SPARSE_PAGES = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.xdr_buf*, i64, i32)* @xs_alloc_sparse_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @xs_alloc_sparse_pages(%struct.xdr_buf* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.xdr_buf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.xdr_buf* %0, %struct.xdr_buf** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* %6, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %14 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @XDRBUF_SPARSE_PAGES, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %12, %3
  %20 = load i64, i64* %6, align 8
  store i64 %20, i64* %4, align 8
  br label %94

21:                                               ; preds = %12
  %22 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %23 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %6, align 8
  %27 = add i64 %25, %26
  %28 = load i64, i64* @PAGE_SIZE, align 8
  %29 = add i64 %27, %28
  %30 = sub i64 %29, 1
  %31 = load i32, i32* @PAGE_SHIFT, align 4
  %32 = zext i32 %31 to i64
  %33 = lshr i64 %30, %32
  store i64 %33, i64* %9, align 8
  store i64 0, i64* %8, align 8
  br label %34

34:                                               ; preds = %89, %21
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %92

38:                                               ; preds = %34
  %39 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %40 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %39, i32 0, i32 2
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %89

47:                                               ; preds = %38
  %48 = load i32, i32* %7, align 4
  %49 = call i64 @alloc_page(i32 %48)
  %50 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %51 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %50, i32 0, i32 2
  %52 = load i64*, i64** %51, align 8
  %53 = load i64, i64* %8, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  store i64 %49, i64* %54, align 8
  %55 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %56 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %55, i32 0, i32 3
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i64, i64* %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i64 %49, i64* %60, align 8
  %61 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %62 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %61, i32 0, i32 2
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* %8, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %88, label %68

68:                                               ; preds = %47
  %69 = load i64, i64* @PAGE_SIZE, align 8
  %70 = load i64, i64* %8, align 8
  %71 = mul i64 %70, %69
  store i64 %71, i64* %8, align 8
  %72 = load i64, i64* %8, align 8
  %73 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %74 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = icmp ugt i64 %72, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %68
  %79 = load i64, i64* %8, align 8
  %80 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %81 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = sub i64 %79, %83
  br label %86

85:                                               ; preds = %68
  br label %86

86:                                               ; preds = %85, %78
  %87 = phi i64 [ %84, %78 ], [ 0, %85 ]
  store i64 %87, i64* %4, align 8
  br label %94

88:                                               ; preds = %47
  br label %89

89:                                               ; preds = %88, %46
  %90 = load i64, i64* %8, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %8, align 8
  br label %34

92:                                               ; preds = %34
  %93 = load i64, i64* %6, align 8
  store i64 %93, i64* %4, align 8
  br label %94

94:                                               ; preds = %92, %86, %19
  %95 = load i64, i64* %4, align 8
  ret i64 %95
}

declare dso_local i64 @alloc_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
