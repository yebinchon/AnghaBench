; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_compr_rtime.c_jffs2_rtime_compress.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_compr_rtime.c_jffs2_rtime_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32*, i32*)* @jffs2_rtime_compress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jffs2_rtime_compress(i8* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [256 x i16], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %16 = getelementptr inbounds [256 x i16], [256 x i16]* %10, i64 0, i64 0
  %17 = call i32 @memset(i16* %16, i32 0, i32 512)
  br label %18

18:                                               ; preds = %92, %4
  %19 = load i32, i32* %12, align 4
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load i32, i32* %11, align 4
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %26, 2
  %28 = icmp sle i32 %24, %27
  br label %29

29:                                               ; preds = %23, %18
  %30 = phi i1 [ false, %18 ], [ %28, %23 ]
  br i1 %30, label %31, label %100

31:                                               ; preds = %29
  store i32 0, i32* %14, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1
  store i8 %36, i8* %15, align 1
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* %12, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %12, align 4
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %11, align 4
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  store i8 %42, i8* %47, align 1
  %48 = load i8, i8* %15, align 1
  %49 = zext i8 %48 to i64
  %50 = getelementptr inbounds [256 x i16], [256 x i16]* %10, i64 0, i64 %49
  %51 = load i16, i16* %50, align 2
  %52 = zext i16 %51 to i32
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %12, align 4
  %54 = trunc i32 %53 to i16
  %55 = load i8, i8* %15, align 1
  %56 = zext i8 %55 to i64
  %57 = getelementptr inbounds [256 x i16], [256 x i16]* %10, i64 0, i64 %56
  store i16 %54, i16* %57, align 2
  br label %58

58:                                               ; preds = %87, %31
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %85

62:                                               ; preds = %58
  %63 = load i32, i32* %12, align 4
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %67, label %85

67:                                               ; preds = %62
  %68 = load i8*, i8** %6, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = load i8*, i8** %6, align 8
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %13, align 4
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i8, i8* %74, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp eq i32 %73, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %67
  %83 = load i32, i32* %14, align 4
  %84 = icmp slt i32 %83, 255
  br label %85

85:                                               ; preds = %82, %67, %62, %58
  %86 = phi i1 [ false, %67 ], [ false, %62 ], [ false, %58 ], [ %84, %82 ]
  br i1 %86, label %87, label %92

87:                                               ; preds = %85
  %88 = load i32, i32* %12, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %14, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %14, align 4
  br label %58

92:                                               ; preds = %85
  %93 = load i32, i32* %14, align 4
  %94 = trunc i32 %93 to i8
  %95 = load i8*, i8** %7, align 8
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %11, align 4
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8, i8* %95, i64 %98
  store i8 %94, i8* %99, align 1
  br label %18

100:                                              ; preds = %29
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %12, align 4
  %103 = icmp sge i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  store i32 -1, i32* %5, align 4
  br label %110

105:                                              ; preds = %100
  %106 = load i32, i32* %12, align 4
  %107 = load i32*, i32** %8, align 8
  store i32 %106, i32* %107, align 4
  %108 = load i32, i32* %11, align 4
  %109 = load i32*, i32** %9, align 8
  store i32 %108, i32* %109, align 4
  store i32 0, i32* %5, align 4
  br label %110

110:                                              ; preds = %105, %104
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i32 @memset(i16*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
