; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-display.c_isst_ctdp_display_core_info.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-display.c_isst_ctdp_display_core_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"package-%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"die-%d\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"cpu-%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isst_ctdp_display_core_info(i32 %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [256 x i8], align 16
  %10 = alloca [256 x i8], align 16
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @get_physical_package_id(i32 %12)
  %14 = call i32 @snprintf(i8* %11, i32 256, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32*, i32** %6, align 8
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %17 = call i32 @format_and_print(i32* %15, i32 1, i8* %16, i8* null)
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @get_physical_die_id(i32 %19)
  %21 = call i32 @snprintf(i8* %18, i32 256, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %24 = call i32 @format_and_print(i32* %22, i32 2, i8* %23, i8* null)
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @snprintf(i8* %25, i32 256, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %30 = call i32 @format_and_print(i32* %28, i32 3, i8* %29, i8* null)
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @snprintf(i8* %31, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %32)
  %34 = load i32*, i32** %6, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %37 = call i32 @format_and_print(i32* %34, i32 4, i8* %35, i8* %36)
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @format_and_print(i32* %38, i32 1, i8* null, i8* null)
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @get_physical_package_id(i32) #1

declare dso_local i32 @format_and_print(i32*, i32, i8*, i8*) #1

declare dso_local i32 @get_physical_die_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
