; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-ipc.c_sst_byt_stream_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-ipc.c_sst_byt_stream_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_byt = type { i32 }
%struct.sst_byt_stream = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_byt_stream_buffer(%struct.sst_byt* %0, %struct.sst_byt_stream* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.sst_byt*, align 8
  %6 = alloca %struct.sst_byt_stream*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.sst_byt* %0, %struct.sst_byt** %5, align 8
  store %struct.sst_byt_stream* %1, %struct.sst_byt_stream** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.sst_byt_stream*, %struct.sst_byt_stream** %6, align 8
  %10 = getelementptr inbounds %struct.sst_byt_stream, %struct.sst_byt_stream* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load %struct.sst_byt_stream*, %struct.sst_byt_stream** %6, align 8
  %15 = getelementptr inbounds %struct.sst_byt_stream, %struct.sst_byt_stream* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  store i8* %13, i8** %20, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load %struct.sst_byt_stream*, %struct.sst_byt_stream** %6, align 8
  %23 = getelementptr inbounds %struct.sst_byt_stream, %struct.sst_byt_stream* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i8* %21, i8** %28, align 8
  %29 = load %struct.sst_byt_stream*, %struct.sst_byt_stream** %6, align 8
  %30 = getelementptr inbounds %struct.sst_byt_stream, %struct.sst_byt_stream* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.sst_byt_stream*, %struct.sst_byt_stream** %6, align 8
  %35 = getelementptr inbounds %struct.sst_byt_stream, %struct.sst_byt_stream* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %33, %38
  %40 = load %struct.sst_byt_stream*, %struct.sst_byt_stream** %6, align 8
  %41 = getelementptr inbounds %struct.sst_byt_stream, %struct.sst_byt_stream* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = mul nsw i32 %39, %44
  %46 = sdiv i32 %45, 8
  %47 = mul nsw i32 %46, 4
  %48 = sdiv i32 %47, 1000
  %49 = load %struct.sst_byt_stream*, %struct.sst_byt_stream** %6, align 8
  %50 = getelementptr inbounds %struct.sst_byt_stream, %struct.sst_byt_stream* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  store i32 %48, i32* %52, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
