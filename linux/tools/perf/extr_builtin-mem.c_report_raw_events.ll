; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-mem.c_report_raw_events.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-mem.c_report_raw_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_mem = type { i64, i32, i32, i32, i32 }
%struct.perf_data = type { i32, i32, i32 }
%struct.perf_session = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PERF_DATA_MODE_READ = common dso_local global i32 0, align 4
@input_name = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"# PID, TID, IP, ADDR, PHYS ADDR, LOCAL WEIGHT, DSRC, SYMBOL\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"# PID, TID, IP, ADDR, LOCAL WEIGHT, DSRC, SYMBOL\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_mem*)* @report_raw_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @report_raw_events(%struct.perf_mem* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_mem*, align 8
  %4 = alloca %struct.perf_data, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.perf_session*, align 8
  store %struct.perf_mem* %0, %struct.perf_mem** %3, align 8
  %7 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %4, i32 0, i32 0
  %8 = load %struct.perf_mem*, %struct.perf_mem** %3, align 8
  %9 = getelementptr inbounds %struct.perf_mem, %struct.perf_mem* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  %11 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %4, i32 0, i32 1
  %12 = load i32, i32* @PERF_DATA_MODE_READ, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %4, i32 0, i32 2
  %14 = load i32, i32* @input_name, align 4
  store i32 %14, i32* %13, align 4
  %15 = load %struct.perf_mem*, %struct.perf_mem** %3, align 8
  %16 = getelementptr inbounds %struct.perf_mem, %struct.perf_mem* %15, i32 0, i32 3
  %17 = call %struct.perf_session* @perf_session__new(%struct.perf_data* %4, i32 0, i32* %16)
  store %struct.perf_session* %17, %struct.perf_session** %6, align 8
  %18 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %19 = call i64 @IS_ERR(%struct.perf_session* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %23 = call i32 @PTR_ERR(%struct.perf_session* %22)
  store i32 %23, i32* %2, align 4
  br label %66

24:                                               ; preds = %1
  %25 = load %struct.perf_mem*, %struct.perf_mem** %3, align 8
  %26 = getelementptr inbounds %struct.perf_mem, %struct.perf_mem* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %31 = load %struct.perf_mem*, %struct.perf_mem** %3, align 8
  %32 = getelementptr inbounds %struct.perf_mem, %struct.perf_mem* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.perf_mem*, %struct.perf_mem** %3, align 8
  %35 = getelementptr inbounds %struct.perf_mem, %struct.perf_mem* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @perf_session__cpu_bitmap(%struct.perf_session* %30, i32 %33, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  br label %62

41:                                               ; preds = %29
  br label %42

42:                                               ; preds = %41, %24
  %43 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %44 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = call i32 @symbol__init(i32* %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %62

50:                                               ; preds = %42
  %51 = load %struct.perf_mem*, %struct.perf_mem** %3, align 8
  %52 = getelementptr inbounds %struct.perf_mem, %struct.perf_mem* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = call i32 @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  br label %59

57:                                               ; preds = %50
  %58 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %55
  %60 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %61 = call i32 @perf_session__process_events(%struct.perf_session* %60)
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %59, %49, %40
  %63 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %64 = call i32 @perf_session__delete(%struct.perf_session* %63)
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %62, %21
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.perf_session* @perf_session__new(%struct.perf_data*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.perf_session*) #1

declare dso_local i32 @PTR_ERR(%struct.perf_session*) #1

declare dso_local i32 @perf_session__cpu_bitmap(%struct.perf_session*, i32, i32) #1

declare dso_local i32 @symbol__init(i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @perf_session__process_events(%struct.perf_session*) #1

declare dso_local i32 @perf_session__delete(%struct.perf_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
