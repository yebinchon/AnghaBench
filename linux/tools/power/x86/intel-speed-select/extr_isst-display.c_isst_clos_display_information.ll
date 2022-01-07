; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-display.c_isst_clos_display_information.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-display.c_isst_clos_display_information.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isst_clos_config = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"package-%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"die-%d\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"cpu-%d\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"core-power\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"clos\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"epp\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"clos-proportional-priority\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"clos-min\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"clos-max\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"clos-desired\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isst_clos_display_information(i32 %0, i32* %1, i32 %2, %struct.isst_clos_config* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.isst_clos_config*, align 8
  %9 = alloca [256 x i8], align 16
  %10 = alloca [256 x i8], align 16
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.isst_clos_config* %3, %struct.isst_clos_config** %8, align 8
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @get_physical_package_id(i32 %12)
  %14 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %11, i32 256, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32*, i32** %6, align 8
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %17 = call i32 @format_and_print(i32* %15, i32 1, i8* %16, i8* null)
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @get_physical_die_id(i32 %19)
  %21 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %18, i32 256, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %24 = call i32 @format_and_print(i32* %22, i32 2, i8* %23, i8* null)
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %26 = load i32, i32* %5, align 4
  %27 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %25, i32 256, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %30 = call i32 @format_and_print(i32* %28, i32 3, i8* %29, i8* null)
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %32 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %31, i32 256, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %35 = call i32 @format_and_print(i32* %33, i32 4, i8* %34, i8* null)
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %37 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %36, i32 256, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %39 = load i32, i32* %7, align 4
  %40 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %38, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %39)
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %44 = call i32 @format_and_print(i32* %41, i32 5, i8* %42, i8* %43)
  %45 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %46 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %45, i32 256, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %47 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %48 = load %struct.isst_clos_config*, %struct.isst_clos_config** %8, align 8
  %49 = getelementptr inbounds %struct.isst_clos_config, %struct.isst_clos_config* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %47, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %50)
  %52 = load i32*, i32** %6, align 8
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %55 = call i32 @format_and_print(i32* %52, i32 5, i8* %53, i8* %54)
  %56 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %57 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %56, i32 256, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %58 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %59 = load %struct.isst_clos_config*, %struct.isst_clos_config** %8, align 8
  %60 = getelementptr inbounds %struct.isst_clos_config, %struct.isst_clos_config* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %58, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %61)
  %63 = load i32*, i32** %6, align 8
  %64 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %65 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %66 = call i32 @format_and_print(i32* %63, i32 5, i8* %64, i8* %65)
  %67 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %68 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %67, i32 256, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %69 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %70 = load %struct.isst_clos_config*, %struct.isst_clos_config** %8, align 8
  %71 = getelementptr inbounds %struct.isst_clos_config, %struct.isst_clos_config* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %69, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %72)
  %74 = load i32*, i32** %6, align 8
  %75 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %76 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %77 = call i32 @format_and_print(i32* %74, i32 5, i8* %75, i8* %76)
  %78 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %79 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %78, i32 256, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %80 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %81 = load %struct.isst_clos_config*, %struct.isst_clos_config** %8, align 8
  %82 = getelementptr inbounds %struct.isst_clos_config, %struct.isst_clos_config* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %80, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %83)
  %85 = load i32*, i32** %6, align 8
  %86 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %87 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %88 = call i32 @format_and_print(i32* %85, i32 5, i8* %86, i8* %87)
  %89 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %90 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %89, i32 256, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  %91 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %92 = load %struct.isst_clos_config*, %struct.isst_clos_config** %8, align 8
  %93 = getelementptr inbounds %struct.isst_clos_config, %struct.isst_clos_config* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %91, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %94)
  %96 = load i32*, i32** %6, align 8
  %97 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %98 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %99 = call i32 @format_and_print(i32* %96, i32 5, i8* %97, i8* %98)
  %100 = load i32*, i32** %6, align 8
  %101 = call i32 @format_and_print(i32* %100, i32 1, i8* null, i8* null)
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
