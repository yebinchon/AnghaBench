; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xdr.c_xdr_inline_decode.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xdr.c_xdr_inline_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xdr_inline_decode(%struct.xdr_stream* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp eq i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %14 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i32*
  store i32* %16, i32** %3, align 8
  br label %46

17:                                               ; preds = %2
  %18 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %19 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %22 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %17
  %26 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %27 = call i32 @xdr_set_next_buffer(%struct.xdr_stream* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  br label %42

30:                                               ; preds = %25, %17
  %31 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i32* @__xdr_inline_decode(%struct.xdr_stream* %31, i64 %32)
  store i32* %33, i32** %6, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32*, i32** %6, align 8
  store i32* %37, i32** %3, align 8
  br label %46

38:                                               ; preds = %30
  %39 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %40 = load i64, i64* %5, align 8
  %41 = call i32* @xdr_copy_to_scratch(%struct.xdr_stream* %39, i64 %40)
  store i32* %41, i32** %3, align 8
  br label %46

42:                                               ; preds = %29
  %43 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @trace_rpc_xdr_overflow(%struct.xdr_stream* %43, i64 %44)
  store i32* null, i32** %3, align 8
  br label %46

46:                                               ; preds = %42, %38, %36, %12
  %47 = load i32*, i32** %3, align 8
  ret i32* %47
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @xdr_set_next_buffer(%struct.xdr_stream*) #1

declare dso_local i32* @__xdr_inline_decode(%struct.xdr_stream*, i64) #1

declare dso_local i32* @xdr_copy_to_scratch(%struct.xdr_stream*, i64) #1

declare dso_local i32 @trace_rpc_xdr_overflow(%struct.xdr_stream*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
