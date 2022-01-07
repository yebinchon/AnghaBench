; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_ucs2_string.c_ucs2_as_utf8.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_ucs2_string.c_ucs2_as_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ucs2_as_utf8(i8* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %8, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i64 @ucs2_strnlen(i32* %11, i64 %12)
  store i64 %13, i64* %9, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %104, %3
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = load i64, i64* %9, align 8
  %21 = icmp ult i64 %19, %20
  br label %22

22:                                               ; preds = %17, %14
  %23 = phi i1 [ false, %14 ], [ %21, %17 ]
  br i1 %23, label %24, label %107

24:                                               ; preds = %22
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp sge i32 %30, 2048
  br i1 %31, label %32, label %65

32:                                               ; preds = %24
  %33 = load i64, i64* %6, align 8
  %34 = icmp ult i64 %33, 3
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %107

36:                                               ; preds = %32
  %37 = load i64, i64* %6, align 8
  %38 = sub i64 %37, 3
  store i64 %38, i64* %6, align 8
  %39 = load i32, i32* %10, align 4
  %40 = and i32 %39, 61440
  %41 = ashr i32 %40, 12
  %42 = or i32 224, %41
  %43 = trunc i32 %42 to i8
  %44 = load i8*, i8** %4, align 8
  %45 = load i64, i64* %8, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %8, align 8
  %47 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8 %43, i8* %47, align 1
  %48 = load i32, i32* %10, align 4
  %49 = and i32 %48, 4032
  %50 = ashr i32 %49, 6
  %51 = or i32 128, %50
  %52 = trunc i32 %51 to i8
  %53 = load i8*, i8** %4, align 8
  %54 = load i64, i64* %8, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %8, align 8
  %56 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8 %52, i8* %56, align 1
  %57 = load i32, i32* %10, align 4
  %58 = and i32 %57, 63
  %59 = or i32 128, %58
  %60 = trunc i32 %59 to i8
  %61 = load i8*, i8** %4, align 8
  %62 = load i64, i64* %8, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %8, align 8
  %64 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8 %60, i8* %64, align 1
  br label %103

65:                                               ; preds = %24
  %66 = load i32, i32* %10, align 4
  %67 = icmp sge i32 %66, 128
  br i1 %67, label %68, label %92

68:                                               ; preds = %65
  %69 = load i64, i64* %6, align 8
  %70 = icmp ult i64 %69, 2
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  br label %107

72:                                               ; preds = %68
  %73 = load i64, i64* %6, align 8
  %74 = sub i64 %73, 2
  store i64 %74, i64* %6, align 8
  %75 = load i32, i32* %10, align 4
  %76 = and i32 %75, 1984
  %77 = ashr i32 %76, 6
  %78 = or i32 192, %77
  %79 = trunc i32 %78 to i8
  %80 = load i8*, i8** %4, align 8
  %81 = load i64, i64* %8, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %8, align 8
  %83 = getelementptr inbounds i8, i8* %80, i64 %81
  store i8 %79, i8* %83, align 1
  %84 = load i32, i32* %10, align 4
  %85 = and i32 %84, 63
  %86 = or i32 128, %85
  %87 = trunc i32 %86 to i8
  %88 = load i8*, i8** %4, align 8
  %89 = load i64, i64* %8, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %8, align 8
  %91 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8 %87, i8* %91, align 1
  br label %102

92:                                               ; preds = %65
  %93 = load i64, i64* %6, align 8
  %94 = sub i64 %93, 1
  store i64 %94, i64* %6, align 8
  %95 = load i32, i32* %10, align 4
  %96 = and i32 %95, 127
  %97 = trunc i32 %96 to i8
  %98 = load i8*, i8** %4, align 8
  %99 = load i64, i64* %8, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %8, align 8
  %101 = getelementptr inbounds i8, i8* %98, i64 %99
  store i8 %97, i8* %101, align 1
  br label %102

102:                                              ; preds = %92, %72
  br label %103

103:                                              ; preds = %102, %36
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %7, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %7, align 4
  br label %14

107:                                              ; preds = %71, %35, %22
  %108 = load i64, i64* %6, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load i8*, i8** %4, align 8
  %112 = load i64, i64* %8, align 8
  %113 = getelementptr inbounds i8, i8* %111, i64 %112
  store i8 0, i8* %113, align 1
  br label %114

114:                                              ; preds = %110, %107
  %115 = load i64, i64* %8, align 8
  ret i64 %115
}

declare dso_local i64 @ucs2_strnlen(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
