; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xdr.c_xdr_align_pages.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xdr.c_xdr_align_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32, %struct.xdr_buf* }
%struct.xdr_buf = type { i32, i32, %struct.kvec* }
%struct.kvec = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, i32)* @xdr_align_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xdr_align_pages(%struct.xdr_stream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xdr_buf*, align 8
  %7 = alloca %struct.kvec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %13 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %12, i32 0, i32 1
  %14 = load %struct.xdr_buf*, %struct.xdr_buf** %13, align 8
  store %struct.xdr_buf* %14, %struct.xdr_buf** %6, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i8* @XDR_QUADLEN(i32 %15)
  %17 = ptrtoint i8* %16 to i32
  store i32 %17, i32* %8, align 4
  %18 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %19 = call i32 @xdr_stream_pos(%struct.xdr_stream* %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %21 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %109

25:                                               ; preds = %2
  %26 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %27 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %26, i32 0, i32 2
  %28 = load %struct.kvec*, %struct.kvec** %27, align 8
  store %struct.kvec* %28, %struct.kvec** %7, align 8
  %29 = load %struct.kvec*, %struct.kvec** %7, align 8
  %30 = getelementptr inbounds %struct.kvec, %struct.kvec* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ugt i32 %31, %32
  br i1 %33, label %34, label %56

34:                                               ; preds = %25
  %35 = load %struct.kvec*, %struct.kvec** %7, align 8
  %36 = getelementptr inbounds %struct.kvec, %struct.kvec* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %9, align 4
  %39 = sub i32 %37, %38
  store i32 %39, i32* %11, align 4
  %40 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @xdr_shrink_bufhead(%struct.xdr_buf* %40, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @trace_rpc_xdr_alignment(%struct.xdr_stream* %43, i32 %44, i32 %45)
  %47 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %48 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sub i32 %49, %50
  %52 = call i8* @XDR_QUADLEN(i32 %51)
  %53 = ptrtoint i8* %52 to i32
  %54 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %55 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  br label %56

56:                                               ; preds = %34, %25
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %59 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ugt i32 %57, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %64 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = shl i32 %66, 2
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %62, %56
  %69 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %70 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp ule i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %76 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %5, align 4
  br label %107

78:                                               ; preds = %68
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %81 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ult i32 %79, %82
  br i1 %83, label %84, label %106

84:                                               ; preds = %78
  %85 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %86 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %5, align 4
  %89 = sub i32 %87, %88
  store i32 %89, i32* %11, align 4
  %90 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @xdr_shrink_pagelen(%struct.xdr_buf* %90, i32 %91)
  store i32 %92, i32* %10, align 4
  %93 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @trace_rpc_xdr_alignment(%struct.xdr_stream* %93, i32 %94, i32 %95)
  %97 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %98 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sub i32 %99, %100
  %102 = call i8* @XDR_QUADLEN(i32 %101)
  %103 = ptrtoint i8* %102 to i32
  %104 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %105 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  br label %106

106:                                              ; preds = %84, %78
  br label %107

107:                                              ; preds = %106, %74
  %108 = load i32, i32* %5, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %107, %24
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i8* @XDR_QUADLEN(i32) #1

declare dso_local i32 @xdr_stream_pos(%struct.xdr_stream*) #1

declare dso_local i32 @xdr_shrink_bufhead(%struct.xdr_buf*, i32) #1

declare dso_local i32 @trace_rpc_xdr_alignment(%struct.xdr_stream*, i32, i32) #1

declare dso_local i32 @xdr_shrink_pagelen(%struct.xdr_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
