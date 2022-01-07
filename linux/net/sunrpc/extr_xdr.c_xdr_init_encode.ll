; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xdr.c_xdr_init_encode.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xdr.c_xdr_init_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { %struct.rpc_rqst*, i32*, i32*, %struct.kvec*, %struct.xdr_buf* }
%struct.kvec = type { i32, i64 }
%struct.xdr_buf = type { i32, i32, i64, %struct.TYPE_2__*, %struct.kvec* }
%struct.TYPE_2__ = type { i32 }
%struct.rpc_rqst = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xdr_init_encode(%struct.xdr_stream* %0, %struct.xdr_buf* %1, i32* %2, %struct.rpc_rqst* %3) #0 {
  %5 = alloca %struct.xdr_stream*, align 8
  %6 = alloca %struct.xdr_buf*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.rpc_rqst*, align 8
  %9 = alloca %struct.kvec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %5, align 8
  store %struct.xdr_buf* %1, %struct.xdr_buf** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.rpc_rqst* %3, %struct.rpc_rqst** %8, align 8
  %12 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %13 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %12, i32 0, i32 4
  %14 = load %struct.kvec*, %struct.kvec** %13, align 8
  store %struct.kvec* %14, %struct.kvec** %9, align 8
  %15 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %16 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %19 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %17, %20
  %22 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %23 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %22, i32 0, i32 3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %21, %27
  store i32 %28, i32* %10, align 4
  %29 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %30 = call i32 @xdr_set_scratch_buffer(%struct.xdr_stream* %29, i32* null, i32 0)
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %36 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %37 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %36, i32 0, i32 4
  store %struct.xdr_buf* %35, %struct.xdr_buf** %37, align 8
  %38 = load %struct.kvec*, %struct.kvec** %9, align 8
  %39 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %40 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %39, i32 0, i32 3
  store %struct.kvec* %38, %struct.kvec** %40, align 8
  %41 = load %struct.kvec*, %struct.kvec** %9, align 8
  %42 = getelementptr inbounds %struct.kvec, %struct.kvec* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = load %struct.kvec*, %struct.kvec** %9, align 8
  %46 = getelementptr inbounds %struct.kvec, %struct.kvec* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %44, i64 %48
  %50 = bitcast i8* %49 to i32*
  %51 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %52 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %51, i32 0, i32 1
  store i32* %50, i32** %52, align 8
  %53 = load %struct.kvec*, %struct.kvec** %9, align 8
  %54 = getelementptr inbounds %struct.kvec, %struct.kvec* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = bitcast i8* %59 to i32*
  %61 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %62 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %61, i32 0, i32 2
  store i32* %60, i32** %62, align 8
  %63 = load %struct.kvec*, %struct.kvec** %9, align 8
  %64 = getelementptr inbounds %struct.kvec, %struct.kvec* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = icmp sgt i32 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @BUG_ON(i32 %68)
  %70 = load i32*, i32** %7, align 8
  %71 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %72 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %70, %73
  br i1 %74, label %75, label %118

75:                                               ; preds = %4
  %76 = load i32*, i32** %7, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %118

78:                                               ; preds = %75
  %79 = load i32*, i32** %7, align 8
  %80 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %81 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ult i32* %79, %82
  br i1 %83, label %90, label %84

84:                                               ; preds = %78
  %85 = load i32*, i32** %7, align 8
  %86 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %87 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = icmp ugt i32* %85, %88
  br label %90

90:                                               ; preds = %84, %78
  %91 = phi i1 [ true, %78 ], [ %89, %84 ]
  %92 = zext i1 %91 to i32
  %93 = call i32 @BUG_ON(i32 %92)
  %94 = load i32*, i32** %7, align 8
  %95 = bitcast i32* %94 to i8*
  %96 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %97 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = bitcast i32* %98 to i8*
  %100 = ptrtoint i8* %95 to i64
  %101 = ptrtoint i8* %99 to i64
  %102 = sub i64 %100, %101
  store i64 %102, i64* %11, align 8
  %103 = load i32*, i32** %7, align 8
  %104 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %105 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %104, i32 0, i32 1
  store i32* %103, i32** %105, align 8
  %106 = load i64, i64* %11, align 8
  %107 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %108 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = add i64 %109, %106
  store i64 %110, i64* %108, align 8
  %111 = load i64, i64* %11, align 8
  %112 = load %struct.kvec*, %struct.kvec** %9, align 8
  %113 = getelementptr inbounds %struct.kvec, %struct.kvec* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = add i64 %115, %111
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %113, align 8
  br label %118

118:                                              ; preds = %90, %75, %4
  %119 = load %struct.rpc_rqst*, %struct.rpc_rqst** %8, align 8
  %120 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %121 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %120, i32 0, i32 0
  store %struct.rpc_rqst* %119, %struct.rpc_rqst** %121, align 8
  ret void
}

declare dso_local i32 @xdr_set_scratch_buffer(%struct.xdr_stream*, i32*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
