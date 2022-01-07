; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-display.c_format_and_print.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-display.c_format_and_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"  \00", align 1
@format_and_print.delimiters = internal global [256 x i8] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"\0A}\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@last_level = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"%s\22%s\22: \00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"\22%s\22\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"\0A%s},\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"\0A%s}\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"%s\22%s\22: {\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*, i8*)* @format_and_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @format_and_print(i32* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %13 = call i32 (...) @out_format_is_json()
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %4
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @format_and_print_txt(i32* %16, i32 %17, i8* %18, i8* %19)
  br label %146

21:                                               ; preds = %4
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load i8*, i8** %7, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 (i32*, i8*, ...) @fprintf(i32* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %33

30:                                               ; preds = %24
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 (i32*, i8*, ...) @fprintf(i32* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %27
  br label %144

34:                                               ; preds = %21
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %53, %34
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %35
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* @format_and_print.delimiters, i64 0, i64 %41
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = sub i64 256, %44
  %46 = trunc i64 %45 to i32
  %47 = load i8*, i8** %9, align 8
  %48 = call i64 @snprintf(i8* %42, i32 %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %47)
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %11, align 4
  br label %53

53:                                               ; preds = %39
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %35

56:                                               ; preds = %35
  %57 = load i32, i32* @last_level, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 (i32*, i8*, ...) @fprintf(i32* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %56
  %64 = load i8*, i8** %8, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %80

66:                                               ; preds = %63
  %67 = load i32, i32* @last_level, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 (i32*, i8*, ...) @fprintf(i32* %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %73

73:                                               ; preds = %70, %66
  %74 = load i32*, i32** %5, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 (i32*, i8*, ...) @fprintf(i32* %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @format_and_print.delimiters, i64 0, i64 0), i8* %75)
  %77 = load i32*, i32** %5, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = call i32 (i32*, i8*, ...) @fprintf(i32* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %78)
  br label %143

80:                                               ; preds = %63
  %81 = load i32, i32* @last_level, align 4
  %82 = sub nsw i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %83

83:                                               ; preds = %123, %80
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp sge i32 %84, %85
  br i1 %86, label %87, label %126

87:                                               ; preds = %83
  store i32 0, i32* %12, align 4
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %106, %87
  %90 = load i32, i32* %11, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %109

92:                                               ; preds = %89
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [256 x i8], [256 x i8]* @format_and_print.delimiters, i64 0, i64 %94
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = sub i64 256, %97
  %99 = trunc i64 %98 to i32
  %100 = load i8*, i8** %9, align 8
  %101 = call i64 @snprintf(i8* %95, i32 %99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %100)
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %103, %101
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %12, align 4
  br label %106

106:                                              ; preds = %92
  %107 = load i32, i32* %11, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %11, align 4
  br label %89

109:                                              ; preds = %89
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %6, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %109
  %114 = load i8*, i8** %7, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i32*, i32** %5, align 8
  %118 = call i32 (i32*, i8*, ...) @fprintf(i32* %117, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @format_and_print.delimiters, i64 0, i64 0))
  br label %122

119:                                              ; preds = %113, %109
  %120 = load i32*, i32** %5, align 8
  %121 = call i32 (i32*, i8*, ...) @fprintf(i32* %120, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @format_and_print.delimiters, i64 0, i64 0))
  br label %122

122:                                              ; preds = %119, %116
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %10, align 4
  br label %83

126:                                              ; preds = %83
  %127 = load i32, i32* @last_level, align 4
  %128 = load i32, i32* %6, align 4
  %129 = sub nsw i32 %127, %128
  %130 = call i32 @abs(i32 %129) #3
  %131 = icmp slt i32 %130, 3
  br i1 %131, label %132, label %135

132:                                              ; preds = %126
  %133 = load i32*, i32** %5, align 8
  %134 = call i32 (i32*, i8*, ...) @fprintf(i32* %133, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %135

135:                                              ; preds = %132, %126
  %136 = load i8*, i8** %7, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %142

138:                                              ; preds = %135
  %139 = load i32*, i32** %5, align 8
  %140 = load i8*, i8** %7, align 8
  %141 = call i32 (i32*, i8*, ...) @fprintf(i32* %139, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @format_and_print.delimiters, i64 0, i64 0), i8* %140)
  br label %142

142:                                              ; preds = %138, %135
  br label %143

143:                                              ; preds = %142, %73
  br label %144

144:                                              ; preds = %143, %33
  %145 = load i32, i32* %6, align 4
  store i32 %145, i32* @last_level, align 4
  br label %146

146:                                              ; preds = %144, %15
  ret void
}

declare dso_local i32 @out_format_is_json(...) #1

declare dso_local i32 @format_and_print_txt(i32*, i32, i8*, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i64 @snprintf(i8*, i32, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
