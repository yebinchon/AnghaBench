; ModuleID = '/home/carl/AnghaBench/linux/fs/nls/extr_nls_cp932.c_uni2char.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nls/extr_nls_cp932.c_uni2char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENAMETOOLONG = common dso_local global i32 0, align 4
@page_uni2charset = common dso_local global i8** null, align 8
@EINVAL = common dso_local global i32 0, align 4
@u2c_00hi = common dso_local global i8** null, align 8
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
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, 255
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* %9, align 1
  %14 = load i32, i32* %5, align 4
  %15 = ashr i32 %14, 8
  %16 = and i32 %15, 255
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %10, align 1
  %18 = load i32, i32* %7, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @ENAMETOOLONG, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %150

23:                                               ; preds = %3
  %24 = load i8, i8* %10, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %25, 255
  br i1 %26, label %27, label %42

27:                                               ; preds = %23
  %28 = load i8, i8* %9, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp sle i32 97, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load i8, i8* %9, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp sle i32 %33, 159
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load i8, i8* %9, align 1
  %37 = zext i8 %36 to i32
  %38 = add nsw i32 %37, 64
  %39 = trunc i32 %38 to i8
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  store i8 %39, i8* %41, align 1
  store i32 1, i32* %4, align 4
  br label %150

42:                                               ; preds = %31, %27, %23
  %43 = load i8**, i8*** @page_uni2charset, align 8
  %44 = load i8, i8* %10, align 1
  %45 = zext i8 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %8, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %91

50:                                               ; preds = %42
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %51, 2
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* @ENAMETOOLONG, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %150

56:                                               ; preds = %50
  %57 = load i8*, i8** %8, align 8
  %58 = load i8, i8* %9, align 1
  %59 = zext i8 %58 to i32
  %60 = mul nsw i32 %59, 2
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %57, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = load i8*, i8** %6, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  store i8 %63, i8* %65, align 1
  %66 = load i8*, i8** %8, align 8
  %67 = load i8, i8* %9, align 1
  %68 = zext i8 %67 to i32
  %69 = mul nsw i32 %68, 2
  %70 = add nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %66, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = load i8*, i8** %6, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  store i8 %73, i8* %75, align 1
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 0
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %56
  %82 = load i8*, i8** %6, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %150

90:                                               ; preds = %81, %56
  store i32 2, i32* %4, align 4
  br label %150

91:                                               ; preds = %42
  %92 = load i8, i8* %10, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %147

95:                                               ; preds = %91
  %96 = load i8, i8* %9, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp sle i32 %97, 127
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load i8, i8* %9, align 1
  %101 = load i8*, i8** %6, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 0
  store i8 %100, i8* %102, align 1
  store i32 1, i32* %4, align 4
  br label %150

103:                                              ; preds = %95
  %104 = load i8, i8* %9, align 1
  %105 = zext i8 %104 to i32
  %106 = icmp sle i32 160, %105
  br i1 %106, label %107, label %143

107:                                              ; preds = %103
  %108 = load i8**, i8*** @u2c_00hi, align 8
  %109 = load i8, i8* %9, align 1
  %110 = zext i8 %109 to i32
  %111 = sub nsw i32 %110, 160
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %108, i64 %112
  %114 = load i8*, i8** %113, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 0
  %116 = load i8, i8* %115, align 1
  %117 = load i8*, i8** %6, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 0
  store i8 %116, i8* %118, align 1
  %119 = load i8**, i8*** @u2c_00hi, align 8
  %120 = load i8, i8* %9, align 1
  %121 = zext i8 %120 to i32
  %122 = sub nsw i32 %121, 160
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8*, i8** %119, i64 %123
  %125 = load i8*, i8** %124, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 1
  %127 = load i8, i8* %126, align 1
  %128 = load i8*, i8** %6, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 1
  store i8 %127, i8* %129, align 1
  %130 = load i8*, i8** %6, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 0
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %107
  %136 = load i8*, i8** %6, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 1
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  store i32 2, i32* %4, align 4
  br label %150

142:                                              ; preds = %135, %107
  br label %143

143:                                              ; preds = %142, %103
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* @EINVAL, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %4, align 4
  br label %150

147:                                              ; preds = %91
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %4, align 4
  br label %150

150:                                              ; preds = %147, %144, %141, %99, %90, %87, %53, %35, %20
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
