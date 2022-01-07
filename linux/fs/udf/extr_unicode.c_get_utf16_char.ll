; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_unicode.c_get_utf16_char.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_unicode.c_get_utf16_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SURROGATE_MASK = common dso_local global i32 0, align 4
@SURROGATE_PAIR = common dso_local global i32 0, align 4
@UNICODE_MAX = common dso_local global i32 0, align 4
@SURROGATE_LOW = common dso_local global i32 0, align 4
@PLANE_SIZE = common dso_local global i32 0, align 4
@SURROGATE_CHAR_MASK = common dso_local global i32 0, align 4
@SURROGATE_CHAR_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i32*)* @get_utf16_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_utf16_char(i32* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %12, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %8, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %8, align 4
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %33

23:                                               ; preds = %5
  %24 = load i32, i32* %11, align 4
  %25 = shl i32 %24, 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %8, align 4
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %25, %31
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %23, %5
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @SURROGATE_MASK, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* @SURROGATE_PAIR, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %99

39:                                               ; preds = %33
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* @UNICODE_MAX, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %11, align 4
  br label %100

46:                                               ; preds = %39
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @SURROGATE_LOW, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* @UNICODE_MAX, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %11, align 4
  br label %100

54:                                               ; preds = %46
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 2
  %57 = zext i1 %56 to i32
  %58 = call i32 @WARN_ON_ONCE(i32 %57)
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 %64, 8
  store i32 %65, i32* %13, align 4
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %13, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* @SURROGATE_MASK, align 4
  %76 = and i32 %74, %75
  %77 = load i32, i32* @SURROGATE_PAIR, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %84, label %79

79:                                               ; preds = %54
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* @SURROGATE_LOW, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %79, %54
  %85 = load i32, i32* @UNICODE_MAX, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %11, align 4
  br label %100

87:                                               ; preds = %79
  %88 = load i32, i32* @PLANE_SIZE, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* @SURROGATE_CHAR_MASK, align 4
  %91 = and i32 %89, %90
  %92 = load i32, i32* @SURROGATE_CHAR_BITS, align 4
  %93 = shl i32 %91, %92
  %94 = add nsw i32 %88, %93
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* @SURROGATE_CHAR_MASK, align 4
  %97 = and i32 %95, %96
  %98 = add nsw i32 %94, %97
  store i32 %98, i32* %11, align 4
  br label %99

99:                                               ; preds = %87, %33
  br label %100

100:                                              ; preds = %99, %84, %51, %43
  %101 = load i32, i32* %11, align 4
  %102 = load i32*, i32** %10, align 8
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %12, align 4
  %105 = sub nsw i32 %103, %104
  ret i32 %105
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
