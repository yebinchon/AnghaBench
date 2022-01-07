; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-stat.c___cmd_record.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-stat.c___cmd_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.perf_session*, %struct.perf_data }
%struct.perf_session = type { i32 }
%struct.perf_data = type { i64 }
%struct.TYPE_3__ = type { i32 }

@perf_stat = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@stat_options = common dso_local global i32 0, align 4
@stat_record_usage = common dso_local global i32 0, align 4
@PARSE_OPT_STOP_AT_NON_OPTION = common dso_local global i32 0, align 4
@output_name = common dso_local global i64 0, align 8
@stat_config = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@forever = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"Cannot use -r option with perf stat record.\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Perf session creation failed\0A\00", align 1
@evsel_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @__cmd_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cmd_record(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.perf_session*, align 8
  %7 = alloca %struct.perf_data*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.perf_data* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @perf_stat, i32 0, i32 2), %struct.perf_data** %7, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i8**, i8*** %5, align 8
  %10 = load i32, i32* @stat_options, align 4
  %11 = load i32, i32* @stat_record_usage, align 4
  %12 = load i32, i32* @PARSE_OPT_STOP_AT_NON_OPTION, align 4
  %13 = call i32 @parse_options(i32 %8, i8** %9, i32 %10, i32 %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i64, i64* @output_name, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i64, i64* @output_name, align 8
  %18 = load %struct.perf_data*, %struct.perf_data** %7, align 8
  %19 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  br label %20

20:                                               ; preds = %16, %2
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @stat_config, i32 0, i32 0), align 4
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i64, i64* @forever, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23, %20
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %46

28:                                               ; preds = %23
  %29 = load %struct.perf_data*, %struct.perf_data** %7, align 8
  %30 = call %struct.perf_session* @perf_session__new(%struct.perf_data* %29, i32 0, i32* null)
  store %struct.perf_session* %30, %struct.perf_session** %6, align 8
  %31 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %32 = call i64 @IS_ERR(%struct.perf_session* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %37 = call i32 @PTR_ERR(%struct.perf_session* %36)
  store i32 %37, i32* %3, align 4
  br label %46

38:                                               ; preds = %28
  %39 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %40 = call i32 @init_features(%struct.perf_session* %39)
  %41 = load i32, i32* @evsel_list, align 4
  %42 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %43 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  store %struct.perf_session* %44, %struct.perf_session** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @perf_stat, i32 0, i32 1), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @perf_stat, i32 0, i32 0), align 8
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %38, %34, %26
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @parse_options(i32, i8**, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.perf_session* @perf_session__new(%struct.perf_data*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.perf_session*) #1

declare dso_local i32 @PTR_ERR(%struct.perf_session*) #1

declare dso_local i32 @init_features(%struct.perf_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
