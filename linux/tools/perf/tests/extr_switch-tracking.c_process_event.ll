; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_switch-tracking.c_process_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_switch-tracking.c_process_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evlist = type { i32 }
%union.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.switch_tracking = type { i32 }

@PERF_RECORD_SAMPLE = common dso_local global i64 0, align 8
@PERF_RECORD_COMM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"Test COMM 1\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Test COMM 2\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Test COMM 3\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Test COMM 4\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Unexpected comm event\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evlist*, %union.perf_event*, %struct.switch_tracking*)* @process_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_event(%struct.evlist* %0, %union.perf_event* %1, %struct.switch_tracking* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.evlist*, align 8
  %6 = alloca %union.perf_event*, align 8
  %7 = alloca %struct.switch_tracking*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.evlist* %0, %struct.evlist** %5, align 8
  store %union.perf_event* %1, %union.perf_event** %6, align 8
  store %struct.switch_tracking* %2, %struct.switch_tracking** %7, align 8
  %10 = load %union.perf_event*, %union.perf_event** %6, align 8
  %11 = bitcast %union.perf_event* %10 to %struct.TYPE_2__*
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PERF_RECORD_SAMPLE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.evlist*, %struct.evlist** %5, align 8
  %18 = load %union.perf_event*, %union.perf_event** %6, align 8
  %19 = load %struct.switch_tracking*, %struct.switch_tracking** %7, align 8
  %20 = call i32 @process_sample_event(%struct.evlist* %17, %union.perf_event* %18, %struct.switch_tracking* %19)
  store i32 %20, i32* %4, align 4
  br label %75

21:                                               ; preds = %3
  %22 = load %union.perf_event*, %union.perf_event** %6, align 8
  %23 = bitcast %union.perf_event* %22 to %struct.TYPE_2__*
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PERF_RECORD_COMM, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %74

28:                                               ; preds = %21
  store i32 0, i32* %9, align 4
  %29 = load %struct.switch_tracking*, %struct.switch_tracking** %7, align 8
  %30 = load %union.perf_event*, %union.perf_event** %6, align 8
  %31 = call i32 @check_comm(%struct.switch_tracking* %29, %union.perf_event* %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 -1, i32* %4, align 4
  br label %75

35:                                               ; preds = %28
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %9, align 4
  %39 = load %struct.switch_tracking*, %struct.switch_tracking** %7, align 8
  %40 = load %union.perf_event*, %union.perf_event** %6, align 8
  %41 = call i32 @check_comm(%struct.switch_tracking* %39, %union.perf_event* %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 1)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  store i32 -1, i32* %4, align 4
  br label %75

45:                                               ; preds = %35
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %9, align 4
  %49 = load %struct.switch_tracking*, %struct.switch_tracking** %7, align 8
  %50 = load %union.perf_event*, %union.perf_event** %6, align 8
  %51 = call i32 @check_comm(%struct.switch_tracking* %49, %union.perf_event* %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 2)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  store i32 -1, i32* %4, align 4
  br label %75

55:                                               ; preds = %45
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %9, align 4
  %59 = load %struct.switch_tracking*, %struct.switch_tracking** %7, align 8
  %60 = load %union.perf_event*, %union.perf_event** %6, align 8
  %61 = call i32 @check_comm(%struct.switch_tracking* %59, %union.perf_event* %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 3)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  store i32 -1, i32* %4, align 4
  br label %75

65:                                               ; preds = %55
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 1
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %75

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %73, %21
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %74, %71, %64, %54, %44, %34, %16
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @process_sample_event(%struct.evlist*, %union.perf_event*, %struct.switch_tracking*) #1

declare dso_local i32 @check_comm(%struct.switch_tracking*, %union.perf_event*, i8*, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
