; ModuleID = '/home/carl/AnghaBench/linux/fs/nls/extr_nls_cp936.c_uni2char.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nls/extr_nls_cp936.c_uni2char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENAMETOOLONG = common dso_local global i32 0, align 4
@u2c_00 = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@page_uni2charset = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @uni2char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uni2char(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, 255
  %15 = trunc i32 %14 to i8
  store i8 %15, i8* %9, align 1
  %16 = load i32, i32* %5, align 4
  %17 = ashr i32 %16, 8
  %18 = and i32 %17, 255
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %10, align 1
  %20 = load i32, i32* %7, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @ENAMETOOLONG, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %134

25:                                               ; preds = %3
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 8364
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  store i8 -128, i8* %30, align 1
  store i32 1, i32* %4, align 4
  br label %134

31:                                               ; preds = %25
  %32 = load i8, i8* %10, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %82

35:                                               ; preds = %31
  %36 = load i8*, i8** @u2c_00, align 8
  %37 = load i8, i8* %9, align 1
  %38 = zext i8 %37 to i32
  %39 = mul nsw i32 %38, 2
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %36, i64 %40
  %42 = load i8, i8* %41, align 1
  store i8 %42, i8* %11, align 1
  %43 = load i8*, i8** @u2c_00, align 8
  %44 = load i8, i8* %9, align 1
  %45 = zext i8 %44 to i32
  %46 = mul nsw i32 %45, 2
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %43, i64 %48
  %50 = load i8, i8* %49, align 1
  store i8 %50, i8* %12, align 1
  %51 = load i8, i8* %11, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %35
  %55 = load i8, i8* %12, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = load i8, i8* %9, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp slt i32 %60, 128
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i8, i8* %9, align 1
  %64 = load i8*, i8** %6, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  store i8 %63, i8* %65, align 1
  store i32 1, i32* %4, align 4
  br label %134

66:                                               ; preds = %58
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %134

69:                                               ; preds = %54, %35
  %70 = load i32, i32* %7, align 4
  %71 = icmp sle i32 %70, 1
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32, i32* @ENAMETOOLONG, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %134

75:                                               ; preds = %69
  %76 = load i8, i8* %11, align 1
  %77 = load i8*, i8** %6, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  store i8 %76, i8* %78, align 1
  %79 = load i8, i8* %12, align 1
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  store i8 %79, i8* %81, align 1
  store i32 2, i32* %4, align 4
  br label %134

82:                                               ; preds = %31
  %83 = load i8**, i8*** @page_uni2charset, align 8
  %84 = load i8, i8* %10, align 1
  %85 = zext i8 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  %87 = load i8*, i8** %86, align 8
  store i8* %87, i8** %8, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %131

90:                                               ; preds = %82
  %91 = load i32, i32* %7, align 4
  %92 = icmp sle i32 %91, 1
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32, i32* @ENAMETOOLONG, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %134

96:                                               ; preds = %90
  %97 = load i8*, i8** %8, align 8
  %98 = load i8, i8* %9, align 1
  %99 = zext i8 %98 to i32
  %100 = mul nsw i32 %99, 2
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %97, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = load i8*, i8** %6, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 0
  store i8 %103, i8* %105, align 1
  %106 = load i8*, i8** %8, align 8
  %107 = load i8, i8* %9, align 1
  %108 = zext i8 %107 to i32
  %109 = mul nsw i32 %108, 2
  %110 = add nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %106, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = load i8*, i8** %6, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 1
  store i8 %113, i8* %115, align 1
  %116 = load i8*, i8** %6, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 0
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %96
  %122 = load i8*, i8** %6, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 1
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %121
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %4, align 4
  br label %134

130:                                              ; preds = %121, %96
  store i32 2, i32* %4, align 4
  br label %134

131:                                              ; preds = %82
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %131, %130, %127, %93, %75, %72, %66, %62, %28, %22
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
