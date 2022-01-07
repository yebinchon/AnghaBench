; ModuleID = '/home/carl/AnghaBench/linux/lib/crypto/extr_arc4.c_arc4_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/lib/crypto/extr_arc4.c_arc4_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arc4_ctx = type { i64*, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arc4_crypt(%struct.arc4_ctx* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.arc4_ctx*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.arc4_ctx* %0, %struct.arc4_ctx** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load %struct.arc4_ctx*, %struct.arc4_ctx** %5, align 8
  %18 = getelementptr inbounds %struct.arc4_ctx, %struct.arc4_ctx* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  store i64* %19, i64** %9, align 8
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %98

23:                                               ; preds = %4
  %24 = load %struct.arc4_ctx*, %struct.arc4_ctx** %5, align 8
  %25 = getelementptr inbounds %struct.arc4_ctx, %struct.arc4_ctx* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %10, align 8
  %27 = load %struct.arc4_ctx*, %struct.arc4_ctx** %5, align 8
  %28 = getelementptr inbounds %struct.arc4_ctx, %struct.arc4_ctx* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %11, align 8
  %30 = load i64*, i64** %9, align 8
  %31 = load i64, i64* %10, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %12, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* %12, align 8
  %36 = add i64 %34, %35
  %37 = and i64 %36, 255
  store i64 %37, i64* %11, align 8
  %38 = load i64*, i64** %9, align 8
  %39 = load i64, i64* %11, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %13, align 8
  br label %42

42:                                               ; preds = %90, %23
  %43 = load i64, i64* %12, align 8
  %44 = load i64*, i64** %9, align 8
  %45 = load i64, i64* %11, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  store i64 %43, i64* %46, align 8
  %47 = load i64, i64* %12, align 8
  %48 = load i64, i64* %13, align 8
  %49 = add i64 %47, %48
  %50 = and i64 %49, 255
  store i64 %50, i64* %12, align 8
  %51 = load i64, i64* %13, align 8
  %52 = load i64*, i64** %9, align 8
  %53 = load i64, i64* %10, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  store i64 %51, i64* %54, align 8
  %55 = load i64, i64* %10, align 8
  %56 = add i64 %55, 1
  %57 = and i64 %56, 255
  store i64 %57, i64* %10, align 8
  %58 = load i64*, i64** %9, align 8
  %59 = load i64, i64* %10, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %15, align 8
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* %15, align 8
  %64 = add i64 %62, %63
  %65 = and i64 %64, 255
  store i64 %65, i64* %14, align 8
  %66 = load i64*, i64** %9, align 8
  %67 = load i64, i64* %14, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %16, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %7, align 8
  %72 = load i32, i32* %70, align 4
  %73 = sext i32 %72 to i64
  %74 = load i64*, i64** %9, align 8
  %75 = load i64, i64* %12, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = xor i64 %73, %77
  %79 = trunc i64 %78 to i32
  %80 = load i32*, i32** %6, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %6, align 8
  store i32 %79, i32* %80, align 4
  %82 = load i32, i32* %8, align 4
  %83 = add i32 %82, -1
  store i32 %83, i32* %8, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %42
  br label %91

86:                                               ; preds = %42
  %87 = load i64, i64* %14, align 8
  store i64 %87, i64* %11, align 8
  %88 = load i64, i64* %15, align 8
  store i64 %88, i64* %12, align 8
  %89 = load i64, i64* %16, align 8
  store i64 %89, i64* %13, align 8
  br label %90

90:                                               ; preds = %86
  br i1 true, label %42, label %91

91:                                               ; preds = %90, %85
  %92 = load i64, i64* %10, align 8
  %93 = load %struct.arc4_ctx*, %struct.arc4_ctx** %5, align 8
  %94 = getelementptr inbounds %struct.arc4_ctx, %struct.arc4_ctx* %93, i32 0, i32 1
  store i64 %92, i64* %94, align 8
  %95 = load i64, i64* %11, align 8
  %96 = load %struct.arc4_ctx*, %struct.arc4_ctx** %5, align 8
  %97 = getelementptr inbounds %struct.arc4_ctx, %struct.arc4_ctx* %96, i32 0, i32 2
  store i64 %95, i64* %97, align 8
  br label %98

98:                                               ; preds = %91, %22
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
