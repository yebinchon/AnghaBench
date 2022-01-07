; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_switch-tracking.c_check_comm.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_switch-tracking.c_check_comm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_tracking = type { i32* }
%union.perf_event = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i64 }
%struct.TYPE_4__ = type { i64 }

@PERF_RECORD_COMM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Duplicate comm event\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"comm event: %s nr: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_tracking*, %union.perf_event*, i8*, i32)* @check_comm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_comm(%struct.switch_tracking* %0, %union.perf_event* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.switch_tracking*, align 8
  %7 = alloca %union.perf_event*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.switch_tracking* %0, %struct.switch_tracking** %6, align 8
  store %union.perf_event* %1, %union.perf_event** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %union.perf_event*, %union.perf_event** %7, align 8
  %11 = bitcast %union.perf_event* %10 to %struct.TYPE_4__*
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PERF_RECORD_COMM, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %62

16:                                               ; preds = %4
  %17 = load %union.perf_event*, %union.perf_event** %7, align 8
  %18 = bitcast %union.perf_event* %17 to %struct.TYPE_3__*
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = call i64 (...) @getpid()
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %62

23:                                               ; preds = %16
  %24 = load %union.perf_event*, %union.perf_event** %7, align 8
  %25 = bitcast %union.perf_event* %24 to %struct.TYPE_3__*
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i64 (...) @getpid()
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %62

30:                                               ; preds = %23
  %31 = load %union.perf_event*, %union.perf_event** %7, align 8
  %32 = bitcast %union.perf_event* %31 to %struct.TYPE_3__*
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = call i64 @strcmp(i32 %34, i8* %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %62

38:                                               ; preds = %30
  %39 = load %struct.switch_tracking*, %struct.switch_tracking** %6, align 8
  %40 = getelementptr inbounds %struct.switch_tracking, %struct.switch_tracking* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %63

49:                                               ; preds = %38
  %50 = load %struct.switch_tracking*, %struct.switch_tracking** %6, align 8
  %51 = getelementptr inbounds %struct.switch_tracking, %struct.switch_tracking* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 1, i32* %55, align 4
  %56 = load %union.perf_event*, %union.perf_event** %7, align 8
  %57 = bitcast %union.perf_event* %56 to %struct.TYPE_3__*
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @pr_debug3(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %60)
  store i32 1, i32* %5, align 4
  br label %63

62:                                               ; preds = %30, %23, %16, %4
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %49, %47
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i64 @getpid(...) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @pr_debug3(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
