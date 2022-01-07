; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xdr.c_xdr_shrink_pagelen.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xdr.c_xdr_shrink_pagelen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_buf = type { i32, i32, i64, i64, i32, %struct.TYPE_2__*, %struct.kvec* }
%struct.TYPE_2__ = type { i32 }
%struct.kvec = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_buf*, i64)* @xdr_shrink_pagelen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xdr_shrink_pagelen(%struct.xdr_buf* %0, i64 %1) #0 {
  %3 = alloca %struct.xdr_buf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.kvec*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.xdr_buf* %0, %struct.xdr_buf** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %13 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %15 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %16 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %15, i32 0, i32 6
  %17 = load %struct.kvec*, %struct.kvec** %16, align 8
  store %struct.kvec* %17, %struct.kvec** %5, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = icmp ugt i64 %18, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %25 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %28 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %27, i32 0, i32 5
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sub i32 %26, %31
  %33 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %34 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sub i32 %32, %35
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %121

39:                                               ; preds = %2
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.kvec*, %struct.kvec** %5, align 8
  %42 = getelementptr inbounds %struct.kvec, %struct.kvec* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sub i32 %40, %43
  store i32 %44, i32* %10, align 4
  %45 = load i64, i64* %4, align 8
  %46 = load i32, i32* %10, align 4
  %47 = zext i32 %46 to i64
  %48 = icmp ult i64 %45, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %39
  %50 = load i64, i64* %4, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %49, %39
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.kvec*, %struct.kvec** %5, align 8
  %55 = getelementptr inbounds %struct.kvec, %struct.kvec* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = add i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load i64, i64* %4, align 8
  store i64 %58, i64* %6, align 8
  %59 = load %struct.kvec*, %struct.kvec** %5, align 8
  %60 = getelementptr inbounds %struct.kvec, %struct.kvec* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = zext i32 %61 to i64
  %63 = load i64, i64* %4, align 8
  %64 = icmp ugt i64 %62, %63
  br i1 %64, label %65, label %93

65:                                               ; preds = %52
  %66 = load %struct.kvec*, %struct.kvec** %5, align 8
  %67 = getelementptr inbounds %struct.kvec, %struct.kvec* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to i8*
  %70 = load i64, i64* %4, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  store i8* %71, i8** %11, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = load %struct.kvec*, %struct.kvec** %5, align 8
  %74 = getelementptr inbounds %struct.kvec, %struct.kvec* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.kvec*, %struct.kvec** %5, align 8
  %77 = getelementptr inbounds %struct.kvec, %struct.kvec* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = zext i32 %78 to i64
  %80 = load i64, i64* %4, align 8
  %81 = sub i64 %79, %80
  %82 = call i32 @memmove(i8* %72, i64 %75, i64 %81)
  %83 = load %struct.kvec*, %struct.kvec** %5, align 8
  %84 = getelementptr inbounds %struct.kvec, %struct.kvec* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = zext i32 %85 to i64
  %87 = load i64, i64* %4, align 8
  %88 = sub i64 %86, %87
  %89 = load i32, i32* %9, align 4
  %90 = zext i32 %89 to i64
  %91 = add i64 %90, %88
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %9, align 4
  br label %98

93:                                               ; preds = %52
  %94 = load %struct.kvec*, %struct.kvec** %5, align 8
  %95 = getelementptr inbounds %struct.kvec, %struct.kvec* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = zext i32 %96 to i64
  store i64 %97, i64* %6, align 8
  br label %98

98:                                               ; preds = %93, %65
  %99 = load %struct.kvec*, %struct.kvec** %5, align 8
  %100 = getelementptr inbounds %struct.kvec, %struct.kvec* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = inttoptr i64 %101 to i8*
  %103 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %104 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %107 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = zext i32 %109 to i64
  %111 = add nsw i64 %108, %110
  %112 = load i64, i64* %4, align 8
  %113 = sub i64 %111, %112
  %114 = load i64, i64* %6, align 8
  %115 = call i32 @_copy_from_pages(i8* %102, i32 %105, i64 %113, i64 %114)
  %116 = load i64, i64* %6, align 8
  %117 = load i32, i32* %9, align 4
  %118 = zext i32 %117 to i64
  %119 = add i64 %118, %116
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %9, align 4
  br label %121

121:                                              ; preds = %98, %2
  %122 = load i64, i64* %4, align 8
  %123 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %124 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = zext i32 %125 to i64
  %127 = sub i64 %126, %122
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %124, align 8
  %129 = load i64, i64* %4, align 8
  %130 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %131 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = zext i32 %132 to i64
  %134 = sub i64 %133, %129
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %131, align 4
  %136 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %137 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %140 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = zext i32 %141 to i64
  %143 = icmp sgt i64 %138, %142
  br i1 %143, label %144, label %151

144:                                              ; preds = %121
  %145 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %146 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = zext i32 %147 to i64
  %149 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %150 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %149, i32 0, i32 2
  store i64 %148, i64* %150, align 8
  br label %151

151:                                              ; preds = %144, %121
  %152 = load i32, i32* %9, align 4
  ret i32 %152
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memmove(i8*, i64, i64) #1

declare dso_local i32 @_copy_from_pages(i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
