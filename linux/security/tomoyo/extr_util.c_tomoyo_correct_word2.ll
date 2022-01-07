; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_util.c_tomoyo_correct_word2.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_util.c_tomoyo_correct_word2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @tomoyo_correct_word2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tomoyo_correct_word2(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load i64, i64* %5, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %136

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %130, %108, %63, %52, %39, %38, %15
  %17 = load i64, i64* %5, align 8
  %18 = add i64 %17, -1
  store i64 %18, i64* %5, align 8
  %19 = icmp ne i64 %17, 0
  br i1 %19, label %20, label %131

20:                                               ; preds = %16
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %4, align 8
  %23 = load i8, i8* %21, align 1
  store i8 %23, i8* %8, align 1
  %24 = load i8, i8* %8, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %25, 92
  br i1 %26, label %27, label %111

27:                                               ; preds = %20
  %28 = load i64, i64* %5, align 8
  %29 = add i64 %28, -1
  store i64 %29, i64* %5, align 8
  %30 = icmp ne i64 %28, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  br label %136

32:                                               ; preds = %27
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %4, align 8
  %35 = load i8, i8* %33, align 1
  store i8 %35, i8* %8, align 1
  %36 = load i8, i8* %8, align 1
  %37 = zext i8 %36 to i32
  switch i32 %37, label %110 [
    i32 92, label %38
    i32 36, label %39
    i32 43, label %39
    i32 63, label %39
    i32 42, label %39
    i32 64, label %39
    i32 120, label %39
    i32 88, label %39
    i32 97, label %39
    i32 65, label %39
    i32 45, label %39
    i32 123, label %40
    i32 125, label %53
    i32 48, label %64
    i32 49, label %64
    i32 50, label %64
    i32 51, label %64
  ]

38:                                               ; preds = %32
  br label %16

39:                                               ; preds = %32, %32, %32, %32, %32, %32, %32, %32, %32, %32
  br label %16

40:                                               ; preds = %32
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 -3
  %43 = load i8*, i8** %6, align 8
  %44 = icmp ult i8* %42, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = load i8*, i8** %4, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 -3
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 47
  br i1 %50, label %51, label %52

51:                                               ; preds = %45, %40
  br label %110

52:                                               ; preds = %45
  store i32 1, i32* %7, align 4
  br label %16

53:                                               ; preds = %32
  %54 = load i8*, i8** %4, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 47
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %110

59:                                               ; preds = %53
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  br label %110

63:                                               ; preds = %59
  store i32 0, i32* %7, align 4
  br label %16

64:                                               ; preds = %32, %32, %32, %32
  %65 = load i64, i64* %5, align 8
  %66 = add i64 %65, -1
  store i64 %66, i64* %5, align 8
  %67 = icmp ne i64 %65, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i64, i64* %5, align 8
  %70 = add i64 %69, -1
  store i64 %70, i64* %5, align 8
  %71 = icmp ne i64 %69, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %68, %64
  br label %110

73:                                               ; preds = %68
  %74 = load i8*, i8** %4, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %4, align 8
  %76 = load i8, i8* %74, align 1
  store i8 %76, i8* %9, align 1
  %77 = load i8*, i8** %4, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %4, align 8
  %79 = load i8, i8* %77, align 1
  store i8 %79, i8* %10, align 1
  %80 = load i8, i8* %9, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp slt i32 %81, 48
  br i1 %82, label %95, label %83

83:                                               ; preds = %73
  %84 = load i8, i8* %9, align 1
  %85 = zext i8 %84 to i32
  %86 = icmp sgt i32 %85, 55
  br i1 %86, label %95, label %87

87:                                               ; preds = %83
  %88 = load i8, i8* %10, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp slt i32 %89, 48
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = load i8, i8* %10, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp sgt i32 %93, 55
  br i1 %94, label %95, label %96

95:                                               ; preds = %91, %87, %83, %73
  br label %110

96:                                               ; preds = %91
  %97 = load i8, i8* %8, align 1
  %98 = load i8, i8* %9, align 1
  %99 = load i8, i8* %10, align 1
  %100 = call zeroext i8 @tomoyo_make_byte(i8 zeroext %97, i8 zeroext %98, i8 zeroext %99)
  store i8 %100, i8* %8, align 1
  %101 = load i8, i8* %8, align 1
  %102 = zext i8 %101 to i32
  %103 = icmp sle i32 %102, 32
  br i1 %103, label %108, label %104

104:                                              ; preds = %96
  %105 = load i8, i8* %8, align 1
  %106 = zext i8 %105 to i32
  %107 = icmp sge i32 %106, 127
  br i1 %107, label %108, label %109

108:                                              ; preds = %104, %96
  br label %16

109:                                              ; preds = %104
  br label %110

110:                                              ; preds = %109, %32, %95, %72, %62, %58, %51
  br label %136

111:                                              ; preds = %20
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  %115 = load i8, i8* %8, align 1
  %116 = zext i8 %115 to i32
  %117 = icmp eq i32 %116, 47
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  br label %136

119:                                              ; preds = %114, %111
  %120 = load i8, i8* %8, align 1
  %121 = zext i8 %120 to i32
  %122 = icmp sle i32 %121, 32
  br i1 %122, label %127, label %123

123:                                              ; preds = %119
  %124 = load i8, i8* %8, align 1
  %125 = zext i8 %124 to i32
  %126 = icmp sge i32 %125, 127
  br i1 %126, label %127, label %128

127:                                              ; preds = %123, %119
  br label %136

128:                                              ; preds = %123
  br label %129

129:                                              ; preds = %128
  br label %130

130:                                              ; preds = %129
  br label %16

131:                                              ; preds = %16
  %132 = load i32, i32* %7, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  br label %136

135:                                              ; preds = %131
  store i32 1, i32* %3, align 4
  br label %137

136:                                              ; preds = %134, %127, %118, %110, %31, %14
  store i32 0, i32* %3, align 4
  br label %137

137:                                              ; preds = %136, %135
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local zeroext i8 @tomoyo_make_byte(i8 zeroext, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
