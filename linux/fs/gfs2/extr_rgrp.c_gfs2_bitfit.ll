; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_bitfit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_bitfit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BFITNOENT = common dso_local global i32 0, align 4
@GFS2_NBBY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i8)* @gfs2_bitfit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_bitfit(i8* %0, i32 %1, i32 %2, i8 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8 %3, i8* %9, align 1
  %16 = load i32, i32* %8, align 4
  %17 = shl i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = and i64 %18, 31
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %10, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = bitcast i8* %21 to i32*
  %23 = load i32, i32* %8, align 4
  %24 = ashr i32 %23, 5
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  store i32* %26, i32** %11, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @ALIGN(i32 %28, i32 4)
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %27, i64 %30
  %32 = bitcast i8* %31 to i32*
  store i32* %32, i32** %12, align 8
  store i32 1431655765, i32* %14, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %14, align 4
  %35 = shl i32 %34, %33
  store i32 %35, i32* %14, align 4
  %36 = load i32*, i32** %11, align 8
  %37 = load i32, i32* %14, align 4
  %38 = load i8, i8* %9, align 1
  %39 = call i32 @gfs2_bit_search(i32* %36, i32 %37, i8 zeroext %38)
  store i32 %39, i32* %13, align 4
  %40 = load i32*, i32** %11, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %11, align 8
  br label %42

42:                                               ; preds = %51, %4
  %43 = load i32, i32* %13, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32*, i32** %11, align 8
  %47 = load i32*, i32** %12, align 8
  %48 = icmp ult i32* %46, %47
  br label %49

49:                                               ; preds = %45, %42
  %50 = phi i1 [ false, %42 ], [ %48, %45 ]
  br i1 %50, label %51, label %57

51:                                               ; preds = %49
  %52 = load i32*, i32** %11, align 8
  %53 = load i8, i8* %9, align 1
  %54 = call i32 @gfs2_bit_search(i32* %52, i32 1431655765, i8 zeroext %53)
  store i32 %54, i32* %13, align 4
  %55 = load i32*, i32** %11, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %11, align 8
  br label %42

57:                                               ; preds = %49
  %58 = load i32*, i32** %11, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = icmp eq i32* %58, %59
  br i1 %60, label %61, label %76

61:                                               ; preds = %57
  %62 = load i32, i32* %7, align 4
  %63 = zext i32 %62 to i64
  %64 = and i64 %63, 3
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %61
  %67 = load i32, i32* %7, align 4
  %68 = zext i32 %67 to i64
  %69 = and i64 %68, 3
  %70 = mul i64 8, %69
  %71 = sub i64 64, %70
  %72 = trunc i64 %71 to i32
  %73 = ashr i32 -1, %72
  %74 = load i32, i32* %13, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %13, align 4
  br label %76

76:                                               ; preds = %66, %61, %57
  %77 = load i32, i32* %13, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load i32, i32* @BFITNOENT, align 4
  store i32 %80, i32* %5, align 4
  br label %101

81:                                               ; preds = %76
  %82 = load i32*, i32** %11, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 -1
  store i32* %83, i32** %11, align 8
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @__ffs64(i32 %84)
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %15, align 4
  %87 = sdiv i32 %86, 2
  store i32 %87, i32* %15, align 4
  %88 = load i32*, i32** %11, align 8
  %89 = bitcast i32* %88 to i8*
  %90 = load i8*, i8** %6, align 8
  %91 = ptrtoint i8* %89 to i64
  %92 = ptrtoint i8* %90 to i64
  %93 = sub i64 %91, %92
  %94 = load i32, i32* @GFS2_NBBY, align 4
  %95 = sext i32 %94 to i64
  %96 = mul nsw i64 %93, %95
  %97 = load i32, i32* %15, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %96, %98
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %81, %79
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @gfs2_bit_search(i32*, i32, i8 zeroext) #1

declare dso_local i32 @__ffs64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
