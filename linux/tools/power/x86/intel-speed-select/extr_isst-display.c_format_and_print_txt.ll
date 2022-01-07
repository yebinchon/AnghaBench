; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-display.c_format_and_print_txt.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-display.c_format_and_print_txt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"  \00", align 1
@format_and_print_txt.delimiters = internal global [256 x i8] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s:%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*, i8*)* @format_and_print_txt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @format_and_print_txt(i32* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  br label %67

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 @strcpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @format_and_print_txt.delimiters, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %44

20:                                               ; preds = %15
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %40, %20
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %6, align 4
  %24 = sub nsw i32 %23, 1
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %21
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* @format_and_print_txt.delimiters, i64 0, i64 %28
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = sub i64 256, %31
  %33 = trunc i64 %32 to i32
  %34 = load i8*, i8** %9, align 8
  %35 = call i64 @snprintf(i8* %29, i32 %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %34)
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %11, align 4
  br label %40

40:                                               ; preds = %26
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  br label %21

43:                                               ; preds = %21
  br label %44

44:                                               ; preds = %43, %18
  %45 = load i8*, i8** %7, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load i8*, i8** %8, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @format_and_print_txt.delimiters, i64 0, i64 0))
  %53 = load i32*, i32** %5, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %54, i8* %55)
  br label %67

57:                                               ; preds = %47, %44
  %58 = load i8*, i8** %7, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @format_and_print_txt.delimiters, i64 0, i64 0))
  %63 = load i32*, i32** %5, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %64)
  br label %66

66:                                               ; preds = %60, %57
  br label %67

67:                                               ; preds = %14, %66, %50
  ret void
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
