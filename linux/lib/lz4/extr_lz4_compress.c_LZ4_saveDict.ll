; ModuleID = '/home/carl/AnghaBench/linux/lib/lz4/extr_lz4_compress.c_LZ4_saveDict.c'
source_filename = "/home/carl/AnghaBench/linux/lib/lz4/extr_lz4_compress.c_LZ4_saveDict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32* }

@KB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LZ4_saveDict(%struct.TYPE_5__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %7, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %13, i64 %17
  store i32* %18, i32** %8, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @KB, align 4
  %21 = mul nsw i32 64, %20
  %22 = icmp sgt i32 %19, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @KB, align 4
  %25 = mul nsw i32 64, %24
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %23, %3
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sgt i32 %27, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %32, %26
  %37 = load i8*, i8** %5, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = sub i64 0, %40
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @memmove(i8* %37, i32* %42, i32 %43)
  %45 = load i8*, i8** %5, align 8
  %46 = bitcast i8* %45 to i32*
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  store i32* %46, i32** %48, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i32 @memmove(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
