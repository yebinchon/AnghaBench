; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xdr.c_xdr_copy_to_scratch.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xdr.c_xdr_copy_to_scratch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.xdr_stream*, i64)* @xdr_copy_to_scratch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @xdr_copy_to_scratch(%struct.xdr_stream* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %10 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %7, align 8
  %13 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %14 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %18 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = ptrtoint i8* %16 to i64
  %22 = ptrtoint i8* %20 to i64
  %23 = sub i64 %21, %22
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %26 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ugt i64 %24, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %69

31:                                               ; preds = %2
  %32 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i8* @__xdr_inline_decode(%struct.xdr_stream* %32, i64 %33)
  store i8* %34, i8** %6, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i8* null, i8** %3, align 8
  br label %73

38:                                               ; preds = %31
  %39 = load i8*, i8** %7, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @memcpy(i8* %39, i8* %40, i64 %41)
  %43 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %44 = call i32 @xdr_set_next_buffer(%struct.xdr_stream* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %38
  br label %69

47:                                               ; preds = %38
  %48 = load i64, i64* %8, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 %48
  store i8* %50, i8** %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %5, align 8
  %53 = sub i64 %52, %51
  store i64 %53, i64* %5, align 8
  %54 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %55 = load i64, i64* %5, align 8
  %56 = call i8* @__xdr_inline_decode(%struct.xdr_stream* %54, i64 %55)
  store i8* %56, i8** %6, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  store i8* null, i8** %3, align 8
  br label %73

60:                                               ; preds = %47
  %61 = load i8*, i8** %7, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = load i64, i64* %5, align 8
  %64 = call i32 @memcpy(i8* %61, i8* %62, i64 %63)
  %65 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %66 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %3, align 8
  br label %73

69:                                               ; preds = %46, %30
  %70 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %71 = load i64, i64* %5, align 8
  %72 = call i32 @trace_rpc_xdr_overflow(%struct.xdr_stream* %70, i64 %71)
  store i8* null, i8** %3, align 8
  br label %73

73:                                               ; preds = %69, %60, %59, %37
  %74 = load i8*, i8** %3, align 8
  ret i8* %74
}

declare dso_local i8* @__xdr_inline_decode(%struct.xdr_stream*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @xdr_set_next_buffer(%struct.xdr_stream*) #1

declare dso_local i32 @trace_rpc_xdr_overflow(%struct.xdr_stream*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
