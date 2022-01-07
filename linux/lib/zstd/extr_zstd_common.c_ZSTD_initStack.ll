; ModuleID = '/home/carl/AnghaBench/linux/lib/zstd/extr_zstd_common.c_ZSTD_initStack.c'
source_filename = "/home/carl/AnghaBench/linux/lib/zstd/extr_zstd_common.c_ZSTD_initStack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32*, i32* }
%struct.TYPE_5__ = type { i8*, i8* }

@ZSTD_stackAlloc = common dso_local global i32* null, align 8
@ZSTD_stackFree = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ZSTD_initStack(%struct.TYPE_6__* noalias sret %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  store i8* %1, i8** %4, align 8
  store i64 %2, i64* %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %9 = load i32*, i32** @ZSTD_stackAlloc, align 8
  %10 = bitcast i32* %9 to i8*
  store i8* %10, i8** %8, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %12 = load i32*, i32** @ZSTD_stackFree, align 8
  store i32* %12, i32** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %13, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %7, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %3
  %21 = load i64, i64* %5, align 8
  %22 = icmp ult i64 %21, 16
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = load i8*, i8** %4, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call i8* @ZSTD_PTR_ALIGN(i8* %25)
  %27 = icmp ne i8* %24, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23, %20, %3
  %29 = bitcast %struct.TYPE_6__* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %29, i8 0, i64 24, i1 false)
  br label %43

30:                                               ; preds = %23
  %31 = load i8*, i8** %4, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = load i64, i64* %5, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %40 = call i32 @stack_push(%struct.TYPE_5__* %39, i32 16)
  %41 = bitcast %struct.TYPE_6__* %0 to i8*
  %42 = bitcast %struct.TYPE_6__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 24, i1 false)
  br label %43

43:                                               ; preds = %30, %28
  ret void
}

declare dso_local i8* @ZSTD_PTR_ALIGN(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @stack_push(%struct.TYPE_5__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
