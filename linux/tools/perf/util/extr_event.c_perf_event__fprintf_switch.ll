; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_event.c_perf_event__fprintf_switch.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_event.c_perf_event__fprintf_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.perf_event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i32 }

@PERF_RECORD_MISC_SWITCH_OUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"IN         \00", align 1
@PERF_RECORD_MISC_SWITCH_OUT_PREEMPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"OUT        \00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"OUT preempt\00", align 1
@PERF_RECORD_SWITCH = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c" %s  %s pid/tid: %5u/%-5u\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"prev\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @perf_event__fprintf_switch(%union.perf_event* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %union.perf_event*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %union.perf_event* %0, %union.perf_event** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %union.perf_event*, %union.perf_event** %4, align 8
  %9 = bitcast %union.perf_event* %8 to %struct.TYPE_4__*
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @PERF_RECORD_MISC_SWITCH_OUT, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %28

17:                                               ; preds = %2
  %18 = load %union.perf_event*, %union.perf_event** %4, align 8
  %19 = bitcast %union.perf_event* %18 to %struct.TYPE_4__*
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @PERF_RECORD_MISC_SWITCH_OUT_PREEMPT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0)
  br label %28

28:                                               ; preds = %17, %16
  %29 = phi i8* [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %16 ], [ %27, %17 ]
  store i8* %29, i8** %7, align 8
  %30 = load %union.perf_event*, %union.perf_event** %4, align 8
  %31 = bitcast %union.perf_event* %30 to %struct.TYPE_4__*
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PERF_RECORD_SWITCH, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load i32*, i32** %5, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = call i64 (i32*, i8*, i8*, ...) @fprintf(i32* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %38)
  store i64 %39, i64* %3, align 8
  br label %56

40:                                               ; preds = %28
  %41 = load i32*, i32** %5, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %47 = load %union.perf_event*, %union.perf_event** %4, align 8
  %48 = bitcast %union.perf_event* %47 to %struct.TYPE_3__*
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %union.perf_event*, %union.perf_event** %4, align 8
  %52 = bitcast %union.perf_event* %51 to %struct.TYPE_3__*
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i64 (i32*, i8*, i8*, ...) @fprintf(i32* %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %42, i8* %46, i32 %50, i32 %54)
  store i64 %55, i64* %3, align 8
  br label %56

56:                                               ; preds = %40, %36
  %57 = load i64, i64* %3, align 8
  ret i64 %57
}

declare dso_local i64 @fprintf(i32*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
