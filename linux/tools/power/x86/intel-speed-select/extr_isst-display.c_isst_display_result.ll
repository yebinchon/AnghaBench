; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-display.c_isst_display_result.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-display.c_isst_display_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"package-%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"die-%d\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"cpu-%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"failed(error %d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isst_display_result(i32 %0, i32* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [256 x i8], align 16
  %12 = alloca [256 x i8], align 16
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @get_physical_package_id(i32 %14)
  %16 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %13, i32 256, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32*, i32** %7, align 8
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %19 = call i32 @format_and_print(i32* %17, i32 1, i8* %18, i8* null)
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @get_physical_die_id(i32 %21)
  %23 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %20, i32 256, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i32*, i32** %7, align 8
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %26 = call i32 @format_and_print(i32* %24, i32 2, i8* %25, i8* null)
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %28 = load i32, i32* %6, align 4
  %29 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %27, i32 256, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = load i32*, i32** %7, align 8
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %32 = call i32 @format_and_print(i32* %30, i32 3, i8* %31, i8* null)
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %33, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %34)
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %38 = call i32 @format_and_print(i32* %36, i32 4, i8* %37, i8* null)
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %39, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %40)
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %5
  %45 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %46 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %45, i32 256, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %51

47:                                               ; preds = %5
  %48 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %49 = load i32, i32* %10, align 4
  %50 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %48, i32 256, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %47, %44
  %52 = load i32*, i32** %7, align 8
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %55 = call i32 @format_and_print(i32* %52, i32 5, i8* %53, i8* %54)
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @format_and_print(i32* %56, i32 1, i8* null, i8* null)
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @get_physical_package_id(i32) #1

declare dso_local i32 @format_and_print(i32*, i32, i8*, i8*) #1

declare dso_local i32 @get_physical_die_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
