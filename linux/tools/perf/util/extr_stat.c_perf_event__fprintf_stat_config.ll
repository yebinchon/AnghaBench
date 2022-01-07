; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_stat.c_perf_event__fprintf_stat_config.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_stat.c_perf_event__fprintf_stat_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.perf_event = type { i32 }
%struct.perf_stat_config = type { i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"... aggr_mode %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"... scale     %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"... interval  %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @perf_event__fprintf_stat_config(%union.perf_event* %0, i32* %1) #0 {
  %3 = alloca %union.perf_event*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.perf_stat_config, align 4
  %6 = alloca i64, align 8
  store %union.perf_event* %0, %union.perf_event** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %union.perf_event*, %union.perf_event** %3, align 8
  %8 = bitcast %union.perf_event* %7 to i32*
  %9 = call i32 @perf_event__read_stat_config(%struct.perf_stat_config* %5, i32* %8)
  %10 = load i32*, i32** %4, align 8
  %11 = call i64 (i32*, i8*, ...) @fprintf(i32* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 %11, i64* %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %5, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 (i32*, i8*, ...) @fprintf(i32* %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = load i64, i64* %6, align 8
  %17 = add i64 %16, %15
  store i64 %17, i64* %6, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %5, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 (i32*, i8*, ...) @fprintf(i32* %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %20)
  %22 = load i64, i64* %6, align 8
  %23 = add i64 %22, %21
  store i64 %23, i64* %6, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %5, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i64 (i32*, i8*, ...) @fprintf(i32* %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %26)
  %28 = load i64, i64* %6, align 8
  %29 = add i64 %28, %27
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  ret i64 %30
}

declare dso_local i32 @perf_event__read_stat_config(%struct.perf_stat_config*, i32*) #1

declare dso_local i64 @fprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
