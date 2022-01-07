; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-display.c_isst_clos_display_assoc_information.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-display.c_isst_clos_display_assoc_information.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"package-%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"die-%d\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"cpu-%d\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"get-assoc\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"clos\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isst_clos_display_assoc_information(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [256 x i8], align 16
  %8 = alloca [256 x i8], align 16
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @get_physical_package_id(i32 %10)
  %12 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %9, i32 256, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32*, i32** %5, align 8
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %15 = call i32 @format_and_print(i32* %13, i32 1, i8* %14, i8* null)
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @get_physical_die_id(i32 %17)
  %19 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %16, i32 256, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %22 = call i32 @format_and_print(i32* %20, i32 2, i8* %21, i8* null)
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %24 = load i32, i32* %4, align 4
  %25 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %23, i32 256, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %28 = call i32 @format_and_print(i32* %26, i32 3, i8* %27, i8* null)
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %30 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %29, i32 256, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %33 = call i32 @format_and_print(i32* %31, i32 4, i8* %32, i8* null)
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %35 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %34, i32 256, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %37 = load i32, i32* %6, align 4
  %38 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %36, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %37)
  %39 = load i32*, i32** %5, align 8
  %40 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %42 = call i32 @format_and_print(i32* %39, i32 5, i8* %40, i8* %41)
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @format_and_print(i32* %43, i32 1, i8* null, i8* null)
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
