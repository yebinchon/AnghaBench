; ModuleID = '/home/carl/AnghaBench/linux/samples/uhid/extr_uhid-example.c_keyboard.c'
source_filename = "/home/carl/AnghaBench/linux/samples/uhid/extr_uhid-example.c_keyboard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STDIN_FILENO = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Read HUP on stdin\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Cannot read stdin: %m\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@btn1_down = common dso_local global i32 0, align 4
@btn2_down = common dso_local global i32 0, align 4
@btn3_down = common dso_local global i32 0, align 4
@abs_hor = common dso_local global i32 0, align 4
@abs_ver = common dso_local global i32 0, align 4
@wheel = common dso_local global i32 0, align 4
@ECANCELED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Invalid input: %c\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @keyboard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keyboard(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [128 x i8], align 16
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* @STDIN_FILENO, align 4
  %8 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %9 = call i64 @read(i32 %7, i8* %8, i32 128)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i32, i32* @stderr, align 4
  %14 = call i32 (i32, i8*, ...) @fprintf(i32 %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EFAULT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %144

17:                                               ; preds = %1
  %18 = load i64, i64* %5, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 (i32, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @errno, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %144

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25
  store i64 0, i64* %6, align 8
  br label %27

27:                                               ; preds = %140, %26
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %143

31:                                               ; preds = %27
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  switch i32 %35, label %132 [
    i32 49, label %36
    i32 50, label %49
    i32 51, label %62
    i32 97, label %75
    i32 100, label %84
    i32 119, label %93
    i32 115, label %102
    i32 114, label %111
    i32 102, label %120
    i32 113, label %129
  ]

36:                                               ; preds = %31
  %37 = load i32, i32* @btn1_down, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  store i32 %40, i32* @btn1_down, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i64 @send_event(i32 %41)
  store i64 %42, i64* %5, align 8
  %43 = load i64, i64* %5, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load i64, i64* %5, align 8
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %2, align 4
  br label %144

48:                                               ; preds = %36
  br label %139

49:                                               ; preds = %31
  %50 = load i32, i32* @btn2_down, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  store i32 %53, i32* @btn2_down, align 4
  %54 = load i32, i32* %3, align 4
  %55 = call i64 @send_event(i32 %54)
  store i64 %55, i64* %5, align 8
  %56 = load i64, i64* %5, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %49
  %59 = load i64, i64* %5, align 8
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %2, align 4
  br label %144

61:                                               ; preds = %49
  br label %139

62:                                               ; preds = %31
  %63 = load i32, i32* @btn3_down, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  store i32 %66, i32* @btn3_down, align 4
  %67 = load i32, i32* %3, align 4
  %68 = call i64 @send_event(i32 %67)
  store i64 %68, i64* %5, align 8
  %69 = load i64, i64* %5, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %62
  %72 = load i64, i64* %5, align 8
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %2, align 4
  br label %144

74:                                               ; preds = %62
  br label %139

75:                                               ; preds = %31
  store i32 -20, i32* @abs_hor, align 4
  %76 = load i32, i32* %3, align 4
  %77 = call i64 @send_event(i32 %76)
  store i64 %77, i64* %5, align 8
  store i32 0, i32* @abs_hor, align 4
  %78 = load i64, i64* %5, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i64, i64* %5, align 8
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %2, align 4
  br label %144

83:                                               ; preds = %75
  br label %139

84:                                               ; preds = %31
  store i32 20, i32* @abs_hor, align 4
  %85 = load i32, i32* %3, align 4
  %86 = call i64 @send_event(i32 %85)
  store i64 %86, i64* %5, align 8
  store i32 0, i32* @abs_hor, align 4
  %87 = load i64, i64* %5, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i64, i64* %5, align 8
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %2, align 4
  br label %144

92:                                               ; preds = %84
  br label %139

93:                                               ; preds = %31
  store i32 -20, i32* @abs_ver, align 4
  %94 = load i32, i32* %3, align 4
  %95 = call i64 @send_event(i32 %94)
  store i64 %95, i64* %5, align 8
  store i32 0, i32* @abs_ver, align 4
  %96 = load i64, i64* %5, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i64, i64* %5, align 8
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %2, align 4
  br label %144

101:                                              ; preds = %93
  br label %139

102:                                              ; preds = %31
  store i32 20, i32* @abs_ver, align 4
  %103 = load i32, i32* %3, align 4
  %104 = call i64 @send_event(i32 %103)
  store i64 %104, i64* %5, align 8
  store i32 0, i32* @abs_ver, align 4
  %105 = load i64, i64* %5, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load i64, i64* %5, align 8
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %2, align 4
  br label %144

110:                                              ; preds = %102
  br label %139

111:                                              ; preds = %31
  store i32 1, i32* @wheel, align 4
  %112 = load i32, i32* %3, align 4
  %113 = call i64 @send_event(i32 %112)
  store i64 %113, i64* %5, align 8
  store i32 0, i32* @wheel, align 4
  %114 = load i64, i64* %5, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load i64, i64* %5, align 8
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %2, align 4
  br label %144

119:                                              ; preds = %111
  br label %139

120:                                              ; preds = %31
  store i32 -1, i32* @wheel, align 4
  %121 = load i32, i32* %3, align 4
  %122 = call i64 @send_event(i32 %121)
  store i64 %122, i64* %5, align 8
  store i32 0, i32* @wheel, align 4
  %123 = load i64, i64* %5, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load i64, i64* %5, align 8
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %2, align 4
  br label %144

128:                                              ; preds = %120
  br label %139

129:                                              ; preds = %31
  %130 = load i32, i32* @ECANCELED, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %2, align 4
  br label %144

132:                                              ; preds = %31
  %133 = load i32, i32* @stderr, align 4
  %134 = load i64, i64* %6, align 8
  %135 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = call i32 (i32, i8*, ...) @fprintf(i32 %133, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %137)
  br label %139

139:                                              ; preds = %132, %128, %119, %110, %101, %92, %83, %74, %61, %48
  br label %140

140:                                              ; preds = %139
  %141 = load i64, i64* %6, align 8
  %142 = add nsw i64 %141, 1
  store i64 %142, i64* %6, align 8
  br label %27

143:                                              ; preds = %27
  store i32 0, i32* %2, align 4
  br label %144

144:                                              ; preds = %143, %129, %125, %116, %107, %98, %89, %80, %71, %58, %45, %20, %12
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @send_event(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
