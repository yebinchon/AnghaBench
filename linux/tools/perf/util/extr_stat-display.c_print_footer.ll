; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_stat-display.c_print_footer.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_stat-display.c_print_footer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_stat_config = type { i32, i64, i64, i64, i32, %struct.TYPE_2__, i64, i32, i32* }
%struct.TYPE_2__ = type { i32, i32 }

@NSEC_PER_SEC = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c" %17.9f seconds time elapsed\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c" %17.9f seconds user\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c" %17.9f seconds sys\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c" %17.*f +- %.*f seconds time elapsed\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"kernel/nmi_watchdog\00", align 1
@.str.7 = private unnamed_addr constant [157 x i8] c"Some events weren't counted. Try disabling the NMI watchdog:\0A\09echo 0 > /proc/sys/kernel/nmi_watchdog\0A\09perf stat ...\0A\09echo 1 > /proc/sys/kernel/nmi_watchdog\0A\00", align 1
@.str.8 = private unnamed_addr constant [87 x i8] c"The events in group usually have to be from the same PMU. Try reorganizing the group.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_stat_config*)* @print_footer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_footer(%struct.perf_stat_config* %0) #0 {
  %2 = alloca %struct.perf_stat_config*, align 8
  %3 = alloca double, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  store %struct.perf_stat_config* %0, %struct.perf_stat_config** %2, align 8
  %10 = load %struct.perf_stat_config*, %struct.perf_stat_config** %2, align 8
  %11 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call double @avg_stats(i32 %12)
  %14 = load double, double* @NSEC_PER_SEC, align 8
  %15 = fdiv double %13, %14
  store double %15, double* %3, align 8
  %16 = load %struct.perf_stat_config*, %struct.perf_stat_config** %2, align 8
  %17 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %16, i32 0, i32 8
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %4, align 8
  %19 = load %struct.perf_stat_config*, %struct.perf_stat_config** %2, align 8
  %20 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 (i32*, i8*, ...) @fprintf(i32* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %1
  %27 = load %struct.perf_stat_config*, %struct.perf_stat_config** %2, align 8
  %28 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %57

31:                                               ; preds = %26
  %32 = load i32*, i32** %4, align 8
  %33 = load double, double* %3, align 8
  %34 = call i32 (i32*, i8*, ...) @fprintf(i32* %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), double %33)
  %35 = load %struct.perf_stat_config*, %struct.perf_stat_config** %2, align 8
  %36 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %35, i32 0, i32 6
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %31
  %40 = load %struct.perf_stat_config*, %struct.perf_stat_config** %2, align 8
  %41 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = call double @timeval2double(i32* %42)
  store double %43, double* %6, align 8
  %44 = load %struct.perf_stat_config*, %struct.perf_stat_config** %2, align 8
  %45 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call double @timeval2double(i32* %46)
  store double %47, double* %7, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 (i32*, i8*, ...) @fprintf(i32* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32*, i32** %4, align 8
  %51 = load double, double* %6, align 8
  %52 = call i32 (i32*, i8*, ...) @fprintf(i32* %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), double %51)
  %53 = load i32*, i32** %4, align 8
  %54 = load double, double* %7, align 8
  %55 = call i32 (i32*, i8*, ...) @fprintf(i32* %53, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), double %54)
  br label %56

56:                                               ; preds = %39, %31
  br label %88

57:                                               ; preds = %26
  %58 = load %struct.perf_stat_config*, %struct.perf_stat_config** %2, align 8
  %59 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = call double @stddev_stats(i32 %60)
  %62 = load double, double* @NSEC_PER_SEC, align 8
  %63 = fdiv double %61, %62
  store double %63, double* %8, align 8
  %64 = load double, double* %8, align 8
  %65 = call i32 @get_precision(double %64)
  %66 = add nsw i32 %65, 2
  store i32 %66, i32* %9, align 4
  %67 = load %struct.perf_stat_config*, %struct.perf_stat_config** %2, align 8
  %68 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %57
  %72 = load %struct.perf_stat_config*, %struct.perf_stat_config** %2, align 8
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load double, double* %3, align 8
  %76 = call i32 @print_table(%struct.perf_stat_config* %72, i32* %73, i32 %74, double %75)
  br label %77

77:                                               ; preds = %71, %57
  %78 = load i32*, i32** %4, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load double, double* %3, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load double, double* %8, align 8
  %83 = call i32 (i32*, i8*, ...) @fprintf(i32* %78, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %79, double %80, i32 %81, double %82)
  %84 = load %struct.perf_stat_config*, %struct.perf_stat_config** %2, align 8
  %85 = load double, double* %8, align 8
  %86 = load double, double* %3, align 8
  %87 = call i32 @print_noise_pct(%struct.perf_stat_config* %84, double %85, double %86)
  br label %88

88:                                               ; preds = %77, %56
  %89 = load i32*, i32** %4, align 8
  %90 = call i32 (i32*, i8*, ...) @fprintf(i32* %89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %91 = load %struct.perf_stat_config*, %struct.perf_stat_config** %2, align 8
  %92 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %88
  %96 = call i64 @sysctl__read_int(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32* %5)
  %97 = icmp sge i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = load i32, i32* %5, align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32*, i32** %4, align 8
  %103 = call i32 (i32*, i8*, ...) @fprintf(i32* %102, i8* getelementptr inbounds ([157 x i8], [157 x i8]* @.str.7, i64 0, i64 0))
  br label %104

104:                                              ; preds = %101, %98, %95, %88
  %105 = load %struct.perf_stat_config*, %struct.perf_stat_config** %2, align 8
  %106 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load i32*, i32** %4, align 8
  %111 = call i32 (i32*, i8*, ...) @fprintf(i32* %110, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.8, i64 0, i64 0))
  br label %112

112:                                              ; preds = %109, %104
  ret void
}

declare dso_local double @avg_stats(i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local double @timeval2double(i32*) #1

declare dso_local double @stddev_stats(i32) #1

declare dso_local i32 @get_precision(double) #1

declare dso_local i32 @print_table(%struct.perf_stat_config*, i32*, i32, double) #1

declare dso_local i32 @print_noise_pct(%struct.perf_stat_config*, double, double) #1

declare dso_local i64 @sysctl__read_int(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
