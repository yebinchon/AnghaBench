; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_python.c_pyrf_context_switch_event__repr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_python.c_pyrf_context_switch_event__repr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pyrf_event = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [79 x i8] c"{ type: context_switch, next_prev_pid: %u, next_prev_tid: %u, switch_out: %u }\00", align 1
@PERF_RECORD_MISC_SWITCH_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.pyrf_event*)* @pyrf_context_switch_event__repr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pyrf_context_switch_event__repr(%struct.pyrf_event* %0) #0 {
  %2 = alloca %struct.pyrf_event*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store %struct.pyrf_event* %0, %struct.pyrf_event** %2, align 8
  %5 = load %struct.pyrf_event*, %struct.pyrf_event** %2, align 8
  %6 = getelementptr inbounds %struct.pyrf_event, %struct.pyrf_event* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.pyrf_event*, %struct.pyrf_event** %2, align 8
  %11 = getelementptr inbounds %struct.pyrf_event, %struct.pyrf_event* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.pyrf_event*, %struct.pyrf_event** %2, align 8
  %16 = getelementptr inbounds %struct.pyrf_event, %struct.pyrf_event* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PERF_RECORD_MISC_SWITCH_OUT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @asprintf(i8** %4, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %14, i32 %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = call i32* (...) @PyErr_NoMemory()
  store i32* %29, i32** %3, align 8
  br label %35

30:                                               ; preds = %1
  %31 = load i8*, i8** %4, align 8
  %32 = call i32* @_PyUnicode_FromString(i8* %31)
  store i32* %32, i32** %3, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @free(i8* %33)
  br label %35

35:                                               ; preds = %30, %28
  %36 = load i32*, i32** %3, align 8
  ret i32* %36
}

declare dso_local i64 @asprintf(i8**, i8*, i32, i32, i32) #1

declare dso_local i32* @PyErr_NoMemory(...) #1

declare dso_local i32* @_PyUnicode_FromString(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
