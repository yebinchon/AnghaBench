; ModuleID = '/home/carl/AnghaBench/linux/lib/zstd/extr_compress.c_ZSTD_count.c'
source_filename = "/home/carl/AnghaBench/linux/lib/zstd/extr_compress.c_ZSTD_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i64*, i64*)* @ZSTD_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_count(i64* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load i64*, i64** %5, align 8
  store i64* %11, i64** %8, align 8
  %12 = load i64*, i64** %7, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 -7
  store i64* %13, i64** %9, align 8
  br label %14

14:                                               ; preds = %26, %3
  %15 = load i64*, i64** %5, align 8
  %16 = load i64*, i64** %9, align 8
  %17 = icmp ult i64* %15, %16
  br i1 %17, label %18, label %43

18:                                               ; preds = %14
  %19 = load i64*, i64** %6, align 8
  %20 = call i64 @ZSTD_readST(i64* %19)
  %21 = load i64*, i64** %5, align 8
  %22 = call i64 @ZSTD_readST(i64* %21)
  %23 = xor i64 %20, %22
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %18
  %27 = load i64*, i64** %5, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 8
  store i64* %28, i64** %5, align 8
  %29 = load i64*, i64** %6, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 8
  store i64* %30, i64** %6, align 8
  br label %14

31:                                               ; preds = %18
  %32 = load i64, i64* %10, align 8
  %33 = call i32 @ZSTD_NbCommonBytes(i64 %32)
  %34 = load i64*, i64** %5, align 8
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  store i64* %36, i64** %5, align 8
  %37 = load i64*, i64** %5, align 8
  %38 = load i64*, i64** %8, align 8
  %39 = ptrtoint i64* %37 to i64
  %40 = ptrtoint i64* %38 to i64
  %41 = sub i64 %39, %40
  %42 = sdiv exact i64 %41, 8
  store i64 %42, i64* %4, align 8
  br label %99

43:                                               ; preds = %14
  %44 = call i64 (...) @ZSTD_64bits()
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %43
  %47 = load i64*, i64** %5, align 8
  %48 = load i64*, i64** %7, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 -3
  %50 = icmp ult i64* %47, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %46
  %52 = load i64*, i64** %6, align 8
  %53 = call i64 @ZSTD_read32(i64* %52)
  %54 = load i64*, i64** %5, align 8
  %55 = call i64 @ZSTD_read32(i64* %54)
  %56 = icmp eq i64 %53, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load i64*, i64** %5, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 4
  store i64* %59, i64** %5, align 8
  %60 = load i64*, i64** %6, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 4
  store i64* %61, i64** %6, align 8
  br label %62

62:                                               ; preds = %57, %51, %46
  br label %63

63:                                               ; preds = %62, %43
  %64 = load i64*, i64** %5, align 8
  %65 = load i64*, i64** %7, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 -1
  %67 = icmp ult i64* %64, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %63
  %69 = load i64*, i64** %6, align 8
  %70 = call i64 @ZSTD_read16(i64* %69)
  %71 = load i64*, i64** %5, align 8
  %72 = call i64 @ZSTD_read16(i64* %71)
  %73 = icmp eq i64 %70, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = load i64*, i64** %5, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 2
  store i64* %76, i64** %5, align 8
  %77 = load i64*, i64** %6, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 2
  store i64* %78, i64** %6, align 8
  br label %79

79:                                               ; preds = %74, %68, %63
  %80 = load i64*, i64** %5, align 8
  %81 = load i64*, i64** %7, align 8
  %82 = icmp ult i64* %80, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %79
  %84 = load i64*, i64** %6, align 8
  %85 = load i64, i64* %84, align 8
  %86 = load i64*, i64** %5, align 8
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %85, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = load i64*, i64** %5, align 8
  %91 = getelementptr inbounds i64, i64* %90, i32 1
  store i64* %91, i64** %5, align 8
  br label %92

92:                                               ; preds = %89, %83, %79
  %93 = load i64*, i64** %5, align 8
  %94 = load i64*, i64** %8, align 8
  %95 = ptrtoint i64* %93 to i64
  %96 = ptrtoint i64* %94 to i64
  %97 = sub i64 %95, %96
  %98 = sdiv exact i64 %97, 8
  store i64 %98, i64* %4, align 8
  br label %99

99:                                               ; preds = %92, %31
  %100 = load i64, i64* %4, align 8
  ret i64 %100
}

declare dso_local i64 @ZSTD_readST(i64*) #1

declare dso_local i32 @ZSTD_NbCommonBytes(i64) #1

declare dso_local i64 @ZSTD_64bits(...) #1

declare dso_local i64 @ZSTD_read32(i64*) #1

declare dso_local i64 @ZSTD_read16(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
