; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xdr.c_xdr_reserve_space.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xdr.c_xdr_reserve_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32*, i32* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xdr_reserve_space(%struct.xdr_stream* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %9 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %6, align 8
  %11 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %12 = call i32 @xdr_commit_encode(%struct.xdr_stream* %11)
  %13 = load i64, i64* %5, align 8
  %14 = add i64 %13, 3
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = and i64 %15, -4
  store i64 %16, i64* %5, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i64, i64* %5, align 8
  %19 = lshr i64 %18, 2
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  store i32* %20, i32** %7, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %23 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ugt i32* %21, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %2
  %27 = load i32*, i32** %7, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = icmp ult i32* %27, %28
  br label %30

30:                                               ; preds = %26, %2
  %31 = phi i1 [ true, %2 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call i32* @xdr_get_next_encode_buffer(%struct.xdr_stream* %36, i64 %37)
  store i32* %38, i32** %3, align 8
  br label %72

39:                                               ; preds = %30
  %40 = load i32*, i32** %7, align 8
  %41 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %42 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %41, i32 0, i32 2
  store i32* %40, i32** %42, align 8
  %43 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %44 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = icmp ne %struct.TYPE_3__* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %39
  %48 = load i64, i64* %5, align 8
  %49 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %50 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %49, i32 0, i32 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %53, %48
  store i64 %54, i64* %52, align 8
  br label %63

55:                                               ; preds = %39
  %56 = load i64, i64* %5, align 8
  %57 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %58 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, %56
  store i64 %62, i64* %60, align 8
  br label %63

63:                                               ; preds = %55, %47
  %64 = load i64, i64* %5, align 8
  %65 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %66 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %69, %64
  store i64 %70, i64* %68, align 8
  %71 = load i32*, i32** %6, align 8
  store i32* %71, i32** %3, align 8
  br label %72

72:                                               ; preds = %63, %35
  %73 = load i32*, i32** %3, align 8
  ret i32* %73
}

declare dso_local i32 @xdr_commit_encode(%struct.xdr_stream*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @xdr_get_next_encode_buffer(%struct.xdr_stream*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
