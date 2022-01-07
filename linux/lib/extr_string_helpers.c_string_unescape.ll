; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_string_helpers.c_string_unescape.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_string_helpers.c_string_unescape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNESCAPE_SPACE = common dso_local global i32 0, align 4
@UNESCAPE_OCTAL = common dso_local global i32 0, align 4
@UNESCAPE_HEX = common dso_local global i32 0, align 4
@UNESCAPE_SPECIAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @string_unescape(i8* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %6, align 8
  store i8* %10, i8** %9, align 8
  br label %11

11:                                               ; preds = %80, %76, %67, %58, %49, %4
  %12 = load i8*, i8** %5, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load i64, i64* %7, align 8
  %18 = add i64 %17, -1
  store i64 %18, i64* %7, align 8
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %16, %11
  %21 = phi i1 [ false, %11 ], [ %19, %16 ]
  br i1 %21, label %22, label %86

22:                                               ; preds = %20
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 92
  br i1 %27, label %28, label %80

28:                                               ; preds = %22
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %80

34:                                               ; preds = %28
  %35 = load i64, i64* %7, align 8
  %36 = icmp ugt i64 %35, 1
  br i1 %36, label %37, label %80

37:                                               ; preds = %34
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %5, align 8
  %40 = load i64, i64* %7, align 8
  %41 = add i64 %40, -1
  store i64 %41, i64* %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @UNESCAPE_SPACE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %37
  %47 = call i64 @unescape_space(i8** %5, i8** %9)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %11

50:                                               ; preds = %46, %37
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @UNESCAPE_OCTAL, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = call i64 @unescape_octal(i8** %5, i8** %9)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %11

59:                                               ; preds = %55, %50
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @UNESCAPE_HEX, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = call i64 @unescape_hex(i8** %5, i8** %9)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  br label %11

68:                                               ; preds = %64, %59
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @UNESCAPE_SPECIAL, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = call i64 @unescape_special(i8** %5, i8** %9)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  br label %11

77:                                               ; preds = %73, %68
  %78 = load i8*, i8** %9, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %9, align 8
  store i8 92, i8* %78, align 1
  br label %80

80:                                               ; preds = %77, %34, %28, %22
  %81 = load i8*, i8** %5, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %5, align 8
  %83 = load i8, i8* %81, align 1
  %84 = load i8*, i8** %9, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %9, align 8
  store i8 %83, i8* %84, align 1
  br label %11

86:                                               ; preds = %20
  %87 = load i8*, i8** %9, align 8
  store i8 0, i8* %87, align 1
  %88 = load i8*, i8** %9, align 8
  %89 = load i8*, i8** %6, align 8
  %90 = ptrtoint i8* %88 to i64
  %91 = ptrtoint i8* %89 to i64
  %92 = sub i64 %90, %91
  %93 = trunc i64 %92 to i32
  ret i32 %93
}

declare dso_local i64 @unescape_space(i8**, i8**) #1

declare dso_local i64 @unescape_octal(i8**, i8**) #1

declare dso_local i64 @unescape_hex(i8**, i8**) #1

declare dso_local i64 @unescape_special(i8**, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
