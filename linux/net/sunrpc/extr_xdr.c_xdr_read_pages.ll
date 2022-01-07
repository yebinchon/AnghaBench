; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xdr.c_xdr_read_pages.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xdr.c_xdr_read_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32, i32*, i32*, i32*, %struct.kvec*, %struct.xdr_buf* }
%struct.kvec = type { i32, i64 }
%struct.xdr_buf = type { %struct.kvec* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdr_read_pages(%struct.xdr_stream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xdr_buf*, align 8
  %7 = alloca %struct.kvec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %12 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %11, i32 0, i32 5
  %13 = load %struct.xdr_buf*, %struct.xdr_buf** %12, align 8
  store %struct.xdr_buf* %13, %struct.xdr_buf** %6, align 8
  %14 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @xdr_align_pages(%struct.xdr_stream* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %81

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = call i8* @XDR_QUADLEN(i32 %21)
  %23 = ptrtoint i8* %22 to i32
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = shl i32 %24, 2
  %26 = load i32, i32* %5, align 4
  %27 = sub i32 %25, %26
  store i32 %27, i32* %10, align 4
  %28 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %29 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %28, i32 0, i32 0
  %30 = load %struct.kvec*, %struct.kvec** %29, align 8
  store %struct.kvec* %30, %struct.kvec** %7, align 8
  %31 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %32 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %31, i32 0, i32 4
  store %struct.kvec* %30, %struct.kvec** %32, align 8
  %33 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %34 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sub i32 %35, %36
  %38 = shl i32 %37, 2
  %39 = load i32, i32* %10, align 4
  %40 = add i32 %38, %39
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.kvec*, %struct.kvec** %7, align 8
  %43 = getelementptr inbounds %struct.kvec, %struct.kvec* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ugt i32 %41, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %20
  %47 = load %struct.kvec*, %struct.kvec** %7, align 8
  %48 = getelementptr inbounds %struct.kvec, %struct.kvec* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %46, %20
  %51 = load %struct.kvec*, %struct.kvec** %7, align 8
  %52 = getelementptr inbounds %struct.kvec, %struct.kvec* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = load i32, i32* %10, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = bitcast i8* %57 to i32*
  %59 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %60 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %59, i32 0, i32 3
  store i32* %58, i32** %60, align 8
  %61 = load %struct.kvec*, %struct.kvec** %7, align 8
  %62 = getelementptr inbounds %struct.kvec, %struct.kvec* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i8*
  %65 = load i32, i32* %9, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = bitcast i8* %67 to i32*
  %69 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %70 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %69, i32 0, i32 2
  store i32* %68, i32** %70, align 8
  %71 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %72 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %71, i32 0, i32 1
  store i32* null, i32** %72, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %10, align 4
  %75 = sub i32 %73, %74
  %76 = call i8* @XDR_QUADLEN(i32 %75)
  %77 = ptrtoint i8* %76 to i32
  %78 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %79 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* %5, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %50, %19
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @xdr_align_pages(%struct.xdr_stream*, i32) #1

declare dso_local i8* @XDR_QUADLEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
