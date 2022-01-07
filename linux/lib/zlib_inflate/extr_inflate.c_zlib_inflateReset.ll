; ModuleID = '/home/carl/AnghaBench/linux/lib/zlib_inflate/extr_inflate.c_zlib_inflateReset.c'
source_filename = "/home/carl/AnghaBench/linux/lib/zlib_inflate/extr_inflate.c_zlib_inflateReset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i64, i64, i32* }
%struct.inflate_state = type { i32, i32, i32, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i32, i64 }

@Z_STREAM_ERROR = common dso_local global i32 0, align 4
@HEAD = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zlib_inflateReset(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.inflate_state*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = icmp eq %struct.TYPE_3__* %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 4
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %7, %1
  %13 = load i32, i32* @Z_STREAM_ERROR, align 4
  store i32 %13, i32* %2, align 4
  br label %62

14:                                               ; preds = %7
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 4
  %17 = load i32*, i32** %16, align 8
  %18 = bitcast i32* %17 to %struct.inflate_state*
  store %struct.inflate_state* %18, %struct.inflate_state** %4, align 8
  %19 = load %struct.inflate_state*, %struct.inflate_state** %4, align 8
  %20 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %19, i32 0, i32 14
  store i64 0, i64* %20, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 3
  store i64 0, i64* %24, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  store i32* null, i32** %26, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load i32, i32* @HEAD, align 4
  %30 = load %struct.inflate_state*, %struct.inflate_state** %4, align 8
  %31 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %30, i32 0, i32 13
  store i32 %29, i32* %31, align 8
  %32 = load %struct.inflate_state*, %struct.inflate_state** %4, align 8
  %33 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %32, i32 0, i32 12
  store i64 0, i64* %33, align 8
  %34 = load %struct.inflate_state*, %struct.inflate_state** %4, align 8
  %35 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %34, i32 0, i32 11
  store i64 0, i64* %35, align 8
  %36 = load %struct.inflate_state*, %struct.inflate_state** %4, align 8
  %37 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %36, i32 0, i32 0
  store i32 32768, i32* %37, align 8
  %38 = load %struct.inflate_state*, %struct.inflate_state** %4, align 8
  %39 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %38, i32 0, i32 10
  store i64 0, i64* %39, align 8
  %40 = load %struct.inflate_state*, %struct.inflate_state** %4, align 8
  %41 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %40, i32 0, i32 9
  store i64 0, i64* %41, align 8
  %42 = load %struct.inflate_state*, %struct.inflate_state** %4, align 8
  %43 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.inflate_state*, %struct.inflate_state** %4, align 8
  %46 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %45, i32 0, i32 6
  store i32 %44, i32* %46, align 4
  %47 = load %struct.inflate_state*, %struct.inflate_state** %4, align 8
  %48 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %47, i32 0, i32 7
  store i32 %44, i32* %48, align 8
  %49 = load %struct.inflate_state*, %struct.inflate_state** %4, align 8
  %50 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %49, i32 0, i32 8
  store i32 %44, i32* %50, align 4
  %51 = load %struct.inflate_state*, %struct.inflate_state** %4, align 8
  %52 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = shl i32 1, %53
  %55 = load %struct.inflate_state*, %struct.inflate_state** %4, align 8
  %56 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.inflate_state*, %struct.inflate_state** %4, align 8
  %58 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %57, i32 0, i32 4
  store i64 0, i64* %58, align 8
  %59 = load %struct.inflate_state*, %struct.inflate_state** %4, align 8
  %60 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %59, i32 0, i32 3
  store i64 0, i64* %60, align 8
  %61 = load i32, i32* @Z_OK, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %14, %12
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
