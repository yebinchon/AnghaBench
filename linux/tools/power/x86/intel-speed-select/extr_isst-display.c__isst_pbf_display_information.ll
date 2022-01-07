; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-display.c__isst_pbf_display_information.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-display.c__isst_pbf_display_information.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isst_pbf_info = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"speed-select-base-freq\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"high-priority-base-frequency(MHz)\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@DISP_FREQ_MULTIPLIER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"high-priority-cpu-mask\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"high-priority-cpu-list\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"low-priority-base-frequency(MHz)\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"tjunction-temperature(C)\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"thermal-design-power(W)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32, %struct.isst_pbf_info*, i32)* @_isst_pbf_display_information to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_isst_pbf_display_information(i32 %0, i32* %1, i32 %2, %struct.isst_pbf_info* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.isst_pbf_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [256 x i8], align 16
  %12 = alloca [256 x i8], align 16
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.isst_pbf_info* %3, %struct.isst_pbf_info** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %14 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %13, i32 256, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* %10, align 4
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %18 = call i32 @format_and_print(i32* %15, i32 %16, i8* %17, i8* null)
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %20 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %19, i32 256, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %22 = load %struct.isst_pbf_info*, %struct.isst_pbf_info** %9, align 8
  %23 = getelementptr inbounds %struct.isst_pbf_info, %struct.isst_pbf_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @DISP_FREQ_MULTIPLIER, align 4
  %26 = mul nsw i32 %24, %25
  %27 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %21, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %10, align 4
  %30 = add nsw i32 %29, 1
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %33 = call i32 @format_and_print(i32* %28, i32 %30, i8* %31, i8* %32)
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %35 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %34, i32 256, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %37 = load %struct.isst_pbf_info*, %struct.isst_pbf_info** %9, align 8
  %38 = getelementptr inbounds %struct.isst_pbf_info, %struct.isst_pbf_info* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.isst_pbf_info*, %struct.isst_pbf_info** %9, align 8
  %41 = getelementptr inbounds %struct.isst_pbf_info, %struct.isst_pbf_info* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @printcpumask(i32 256, i8* %36, i32 %39, i32 %42)
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  %47 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %48 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %49 = call i32 @format_and_print(i32* %44, i32 %46, i8* %47, i8* %48)
  %50 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %51 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %50, i32 256, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %52 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %53 = load %struct.isst_pbf_info*, %struct.isst_pbf_info** %9, align 8
  %54 = getelementptr inbounds %struct.isst_pbf_info, %struct.isst_pbf_info* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.isst_pbf_info*, %struct.isst_pbf_info** %9, align 8
  %57 = getelementptr inbounds %struct.isst_pbf_info, %struct.isst_pbf_info* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @printcpulist(i32 256, i8* %52, i32 %55, i32 %58)
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  %63 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %64 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %65 = call i32 @format_and_print(i32* %60, i32 %62, i8* %63, i8* %64)
  %66 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %67 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %66, i32 256, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %68 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %69 = load %struct.isst_pbf_info*, %struct.isst_pbf_info** %9, align 8
  %70 = getelementptr inbounds %struct.isst_pbf_info, %struct.isst_pbf_info* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @DISP_FREQ_MULTIPLIER, align 4
  %73 = mul nsw i32 %71, %72
  %74 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %68, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  %78 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %79 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %80 = call i32 @format_and_print(i32* %75, i32 %77, i8* %78, i8* %79)
  %81 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %82 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %81, i32 256, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %83 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %84 = load %struct.isst_pbf_info*, %struct.isst_pbf_info** %9, align 8
  %85 = getelementptr inbounds %struct.isst_pbf_info, %struct.isst_pbf_info* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %83, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  %91 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %92 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %93 = call i32 @format_and_print(i32* %88, i32 %90, i8* %91, i8* %92)
  %94 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %95 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %94, i32 256, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %96 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %97 = load %struct.isst_pbf_info*, %struct.isst_pbf_info** %9, align 8
  %98 = getelementptr inbounds %struct.isst_pbf_info, %struct.isst_pbf_info* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %96, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  %101 = load i32*, i32** %7, align 8
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  %104 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %105 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %106 = call i32 @format_and_print(i32* %101, i32 %103, i8* %104, i8* %105)
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @format_and_print(i32*, i32, i8*, i8*) #1

declare dso_local i32 @printcpumask(i32, i8*, i32, i32) #1

declare dso_local i32 @printcpulist(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
