; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_dump_sysfs_pstate_config.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_dump_sysfs_pstate_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [53 x i8] c"/sys/devices/system/cpu/cpu%d/cpufreq/scaling_driver\00", align 1
@base_cpu = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@outf = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"NSFOD %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"%s: failed to read file\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"/sys/devices/system/cpu/cpu%d/cpufreq/scaling_governor\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"cpu%d: cpufreq driver: %s\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"cpu%d: cpufreq governor: %s\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"/sys/devices/system/cpu/cpufreq/boost\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"%s: failed to parse number from file\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"cpufreq boost: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"/sys/devices/system/cpu/intel_pstate/no_turbo\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"cpufreq intel_pstate no_turbo: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dump_sysfs_pstate_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_sysfs_pstate_config() #0 {
  %1 = alloca [64 x i8], align 16
  %2 = alloca [64 x i8], align 16
  %3 = alloca [64 x i8], align 16
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %7 = load i32, i32* @base_cpu, align 4
  %8 = call i32 (i8*, i8*, ...) @sprintf(i8* %6, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %10 = call i32* @fopen(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %0
  %14 = load i32, i32* @outf, align 4
  %15 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %16 = call i32 (i32, i8*, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %15)
  br label %97

17:                                               ; preds = %0
  %18 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @fgets(i8* %18, i32 64, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %24 = call i32 @err(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %23)
  br label %25

25:                                               ; preds = %22, %17
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @fclose(i32* %26)
  %28 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %29 = load i32, i32* @base_cpu, align 4
  %30 = call i32 (i8*, i8*, ...) @sprintf(i8* %28, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i32 %29)
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %32 = call i32* @fopen(i8* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %32, i32** %4, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %25
  %36 = load i32, i32* @outf, align 4
  %37 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  br label %97

39:                                               ; preds = %25
  %40 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @fgets(i8* %40, i32 64, i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %46 = call i32 @err(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %45)
  br label %47

47:                                               ; preds = %44, %39
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @fclose(i32* %48)
  %50 = load i32, i32* @outf, align 4
  %51 = load i32, i32* @base_cpu, align 4
  %52 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %53 = call i32 (i32, i8*, ...) @fprintf(i32 %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %51, i8* %52)
  %54 = load i32, i32* @outf, align 4
  %55 = load i32, i32* @base_cpu, align 4
  %56 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %55, i8* %56)
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %59 = call i32 (i8*, i8*, ...) @sprintf(i8* %58, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  %60 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %61 = call i32* @fopen(i8* %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %61, i32** %4, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %77

64:                                               ; preds = %47
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @fscanf(i32* %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32* %5)
  %67 = icmp ne i32 %66, 1
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %70 = call i32 @err(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i8* %69)
  br label %71

71:                                               ; preds = %68, %64
  %72 = load i32, i32* @outf, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32 %73)
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @fclose(i32* %75)
  br label %77

77:                                               ; preds = %71, %47
  %78 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %79 = call i32 (i8*, i8*, ...) @sprintf(i8* %78, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0))
  %80 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %81 = call i32* @fopen(i8* %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %81, i32** %4, align 8
  %82 = load i32*, i32** %4, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %97

84:                                               ; preds = %77
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 @fscanf(i32* %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32* %5)
  %87 = icmp ne i32 %86, 1
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %90 = call i32 @err(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i8* %89)
  br label %91

91:                                               ; preds = %88, %84
  %92 = load i32, i32* @outf, align 4
  %93 = load i32, i32* %5, align 4
  %94 = call i32 (i32, i8*, ...) @fprintf(i32 %92, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i32 %93)
  %95 = load i32*, i32** %4, align 8
  %96 = call i32 @fclose(i32* %95)
  br label %97

97:                                               ; preds = %13, %35, %91, %77
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @fgets(i8*, i32, i32*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @fscanf(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
