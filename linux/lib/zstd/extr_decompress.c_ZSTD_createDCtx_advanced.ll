; ModuleID = '/home/carl/AnghaBench/linux/lib/zstd/extr_decompress.c_ZSTD_createDCtx_advanced.c'
source_filename = "/home/carl/AnghaBench/linux/lib/zstd/extr_decompress.c_ZSTD_createDCtx_advanced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @ZSTD_createDCtx_advanced(i64 %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_8__, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = bitcast %struct.TYPE_8__* %3 to i64*
  store i64 %0, i64* %5, align 4
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9, %1
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %29

14:                                               ; preds = %9
  %15 = bitcast %struct.TYPE_8__* %3 to i64*
  %16 = load i64, i64* %15, align 4
  %17 = call i64 @ZSTD_malloc(i32 4, i64 %16)
  %18 = inttoptr i64 %17 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %4, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = icmp ne %struct.TYPE_9__* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %29

22:                                               ; preds = %14
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = call i32 @memcpy(i32* %24, %struct.TYPE_8__* %3, i32 8)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = call i32 @ZSTD_decompressBegin(%struct.TYPE_9__* %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %2, align 8
  br label %29

29:                                               ; preds = %22, %21, %13
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  ret %struct.TYPE_9__* %30
}

declare dso_local i64 @ZSTD_malloc(i32, i64) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @ZSTD_decompressBegin(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
