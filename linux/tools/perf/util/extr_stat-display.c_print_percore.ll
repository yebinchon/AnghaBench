; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_stat-display.c_print_percore.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_stat-display.c_print_percore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_stat_config = type { i32, %struct.TYPE_2__*, i64, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.evsel = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_stat_config*, %struct.evsel*, i8*)* @print_percore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_percore(%struct.perf_stat_config* %0, %struct.evsel* %1, i8* %2) #0 {
  %4 = alloca %struct.perf_stat_config*, align 8
  %5 = alloca %struct.evsel*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.perf_stat_config* %0, %struct.perf_stat_config** %4, align 8
  store %struct.evsel* %1, %struct.evsel** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.perf_stat_config*, %struct.perf_stat_config** %4, align 8
  %12 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load %struct.perf_stat_config*, %struct.perf_stat_config** %4, align 8
  %15 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %8, align 8
  store i32 1, i32* %10, align 4
  %17 = load %struct.perf_stat_config*, %struct.perf_stat_config** %4, align 8
  %18 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = icmp ne %struct.TYPE_2__* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %3
  %22 = load %struct.perf_stat_config*, %struct.perf_stat_config** %4, align 8
  %23 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  br label %62

27:                                               ; preds = %21, %3
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %53, %27
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.perf_stat_config*, %struct.perf_stat_config** %4, align 8
  %31 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %29, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %28
  %37 = load i8*, i8** %6, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i32*, i32** %8, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @fprintf(i32* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %44)
  br label %46

46:                                               ; preds = %42, %39, %36
  %47 = load %struct.perf_stat_config*, %struct.perf_stat_config** %4, align 8
  %48 = load %struct.evsel*, %struct.evsel** %5, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @print_counter_aggrdata(%struct.perf_stat_config* %47, %struct.evsel* %48, i32 %49, i8* %50, i32 %51, i32* %10)
  br label %53

53:                                               ; preds = %46
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %28

56:                                               ; preds = %28
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @fputc(i8 signext 10, i32* %60)
  br label %62

62:                                               ; preds = %26, %59, %56
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i32 @print_counter_aggrdata(%struct.perf_stat_config*, %struct.evsel*, i32, i8*, i32, i32*) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
