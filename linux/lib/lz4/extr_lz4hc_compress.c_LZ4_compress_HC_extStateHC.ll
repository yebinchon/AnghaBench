; ModuleID = '/home/carl/AnghaBench/linux/lib/lz4/extr_lz4hc_compress.c_LZ4_compress_HC_extStateHC.c'
source_filename = "/home/carl/AnghaBench/linux/lib/lz4/extr_lz4hc_compress.c_LZ4_compress_HC_extStateHC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@limitedOutput = common dso_local global i32 0, align 4
@noLimit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i32, i32, i32)* @LZ4_compress_HC_extStateHC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LZ4_compress_HC_extStateHC(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_2__*
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32* %17, i32** %14, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = ptrtoint i8* %18 to i64
  %20 = and i64 %19, 7
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %50

23:                                               ; preds = %6
  %24 = load i32*, i32** %14, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = bitcast i8* %25 to i32*
  %27 = call i32 @LZ4HC_init(i32* %24, i32* %26)
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @LZ4_compressBound(i32 %29)
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %23
  %33 = load i32*, i32** %14, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @limitedOutput, align 4
  %40 = call i32 @LZ4HC_compress_generic(i32* %33, i8* %34, i8* %35, i32 %36, i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %7, align 4
  br label %50

41:                                               ; preds = %23
  %42 = load i32*, i32** %14, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* @noLimit, align 4
  %49 = call i32 @LZ4HC_compress_generic(i32* %42, i8* %43, i8* %44, i32 %45, i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %41, %32, %22
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local i32 @LZ4HC_init(i32*, i32*) #1

declare dso_local i32 @LZ4_compressBound(i32) #1

declare dso_local i32 @LZ4HC_compress_generic(i32*, i8*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
