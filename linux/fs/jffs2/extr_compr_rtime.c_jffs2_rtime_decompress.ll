; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_compr_rtime.c_jffs2_rtime_decompress.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_compr_rtime.c_jffs2_rtime_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32)* @jffs2_rtime_decompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jffs2_rtime_decompress(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [256 x i16], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = getelementptr inbounds [256 x i16], [256 x i16]* %9, i64 0, i64 0
  %16 = call i32 @memset(i16* %15, i32 0, i32 512)
  br label %17

17:                                               ; preds = %93, %4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %94

21:                                               ; preds = %17
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %11, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %11, align 4
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i8, i8* %22, i64 %25
  %27 = load i8, i8* %26, align 1
  store i8 %27, i8* %12, align 1
  %28 = load i8, i8* %12, align 1
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* %10, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %10, align 4
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  store i8 %28, i8* %33, align 1
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %11, align 4
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  store i32 %40, i32* %14, align 4
  %41 = load i8, i8* %12, align 1
  %42 = zext i8 %41 to i64
  %43 = getelementptr inbounds [256 x i16], [256 x i16]* %9, i64 0, i64 %42
  %44 = load i16, i16* %43, align 2
  %45 = zext i16 %44 to i32
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %10, align 4
  %47 = trunc i32 %46 to i16
  %48 = load i8, i8* %12, align 1
  %49 = zext i8 %48 to i64
  %50 = getelementptr inbounds [256 x i16], [256 x i16]* %9, i64 0, i64 %49
  store i16 %47, i16* %50, align 2
  %51 = load i32, i32* %14, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %93

53:                                               ; preds = %21
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %14, align 4
  %56 = add nsw i32 %54, %55
  %57 = load i32, i32* %10, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %78

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %63, %59
  %61 = load i32, i32* %14, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %77

63:                                               ; preds = %60
  %64 = load i8*, i8** %6, align 8
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %13, align 4
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i8, i8* %64, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = load i8*, i8** %6, align 8
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %10, align 4
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i8, i8* %70, i64 %73
  store i8 %69, i8* %74, align 1
  %75 = load i32, i32* %14, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %14, align 4
  br label %60

77:                                               ; preds = %60
  br label %92

78:                                               ; preds = %53
  %79 = load i8*, i8** %6, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i8*, i8** %6, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @memcpy(i8* %82, i8* %86, i32 %87)
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %10, align 4
  br label %92

92:                                               ; preds = %78, %77
  br label %93

93:                                               ; preds = %92, %21
  br label %17

94:                                               ; preds = %17
  ret i32 0
}

declare dso_local i32 @memset(i16*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
