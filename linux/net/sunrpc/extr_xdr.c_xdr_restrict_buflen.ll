; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xdr.c_xdr_restrict_buflen.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xdr.c_xdr_restrict_buflen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i8*, i64, %struct.xdr_buf* }
%struct.xdr_buf = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdr_restrict_buflen(%struct.xdr_stream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xdr_buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %10 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %9, i32 0, i32 2
  %11 = load %struct.xdr_buf*, %struct.xdr_buf** %10, align 8
  store %struct.xdr_buf* %11, %struct.xdr_buf** %6, align 8
  %12 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %13 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %16 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = ptrtoint i8* %14 to i64
  %20 = ptrtoint i8* %18 to i64
  %21 = sub i64 %19, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %7, align 4
  %23 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %24 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %33 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30, %2
  store i32 -1, i32* %3, align 4
  br label %65

37:                                               ; preds = %30
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %40 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp sgt i32 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %65

44:                                               ; preds = %37
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %44
  %49 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %50 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr i8, i8* %51, i64 %53
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = sub i64 0, %56
  %58 = getelementptr i8, i8* %54, i64 %57
  %59 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %60 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  br label %61

61:                                               ; preds = %48, %44
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %64 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %61, %43, %36
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
