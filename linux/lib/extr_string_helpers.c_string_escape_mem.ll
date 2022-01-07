; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_string_helpers.c_string_escape_mem.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_string_helpers.c_string_escape_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESCAPE_NP = common dso_local global i32 0, align 4
@ESCAPE_SPACE = common dso_local global i32 0, align 4
@ESCAPE_SPECIAL = common dso_local global i32 0, align 4
@ESCAPE_NULL = common dso_local global i32 0, align 4
@ESCAPE_OCTAL = common dso_local global i32 0, align 4
@ESCAPE_HEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @string_escape_mem(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %17 = load i8*, i8** %9, align 8
  store i8* %17, i8** %13, align 8
  %18 = load i8*, i8** %13, align 8
  %19 = load i64, i64* %10, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  store i8* %20, i8** %14, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %6
  %24 = load i8*, i8** %12, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br label %28

28:                                               ; preds = %23, %6
  %29 = phi i1 [ false, %6 ], [ %27, %23 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %15, align 4
  br label %31

31:                                               ; preds = %112, %110, %99, %88, %77, %66, %28
  %32 = load i64, i64* %8, align 8
  %33 = add i64 %32, -1
  store i64 %33, i64* %8, align 8
  %34 = icmp ne i64 %32, 0
  br i1 %34, label %35, label %116

35:                                               ; preds = %31
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %7, align 8
  %38 = load i8, i8* %36, align 1
  store i8 %38, i8* %16, align 1
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @ESCAPE_NP, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = load i8, i8* %16, align 1
  %45 = call i64 @isprint(i8 zeroext %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %43, %35
  %48 = load i32, i32* %15, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i8*, i8** %12, align 8
  %52 = load i8, i8* %16, align 1
  %53 = call i32 @strchr(i8* %51, i8 zeroext %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50, %43
  br label %112

56:                                               ; preds = %50, %47
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @ESCAPE_SPACE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load i8, i8* %16, align 1
  %63 = load i8*, i8** %14, align 8
  %64 = call i64 @escape_space(i8 zeroext %62, i8** %13, i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %31

67:                                               ; preds = %61, %56
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @ESCAPE_SPECIAL, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load i8, i8* %16, align 1
  %74 = load i8*, i8** %14, align 8
  %75 = call i64 @escape_special(i8 zeroext %73, i8** %13, i8* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %31

78:                                               ; preds = %72, %67
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @ESCAPE_NULL, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load i8, i8* %16, align 1
  %85 = load i8*, i8** %14, align 8
  %86 = call i64 @escape_null(i8 zeroext %84, i8** %13, i8* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %31

89:                                               ; preds = %83, %78
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* @ESCAPE_OCTAL, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load i8, i8* %16, align 1
  %96 = load i8*, i8** %14, align 8
  %97 = call i64 @escape_octal(i8 zeroext %95, i8** %13, i8* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %31

100:                                              ; preds = %94, %89
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* @ESCAPE_HEX, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = load i8, i8* %16, align 1
  %107 = load i8*, i8** %14, align 8
  %108 = call i64 @escape_hex(i8 zeroext %106, i8** %13, i8* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %31

111:                                              ; preds = %105, %100
  br label %112

112:                                              ; preds = %111, %55
  %113 = load i8, i8* %16, align 1
  %114 = load i8*, i8** %14, align 8
  %115 = call i32 @escape_passthrough(i8 zeroext %113, i8** %13, i8* %114)
  br label %31

116:                                              ; preds = %31
  %117 = load i8*, i8** %13, align 8
  %118 = load i8*, i8** %9, align 8
  %119 = ptrtoint i8* %117 to i64
  %120 = ptrtoint i8* %118 to i64
  %121 = sub i64 %119, %120
  %122 = trunc i64 %121 to i32
  ret i32 %122
}

declare dso_local i64 @isprint(i8 zeroext) #1

declare dso_local i32 @strchr(i8*, i8 zeroext) #1

declare dso_local i64 @escape_space(i8 zeroext, i8**, i8*) #1

declare dso_local i64 @escape_special(i8 zeroext, i8**, i8*) #1

declare dso_local i64 @escape_null(i8 zeroext, i8**, i8*) #1

declare dso_local i64 @escape_octal(i8 zeroext, i8**, i8*) #1

declare dso_local i64 @escape_hex(i8 zeroext, i8**, i8*) #1

declare dso_local i32 @escape_passthrough(i8 zeroext, i8**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
