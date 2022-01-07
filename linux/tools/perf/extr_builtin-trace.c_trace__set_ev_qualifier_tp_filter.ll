; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_trace__set_ev_qualifier_tp_filter.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_trace__set_ev_qualifier_tp_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace = type { %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.evsel*, %struct.evsel* }
%struct.evsel = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"id\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace*)* @trace__set_ev_qualifier_tp_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trace__set_ev_qualifier_tp_filter(%struct.trace* %0) #0 {
  %2 = alloca %struct.trace*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.evsel*, align 8
  %5 = alloca i8*, align 8
  store %struct.trace* %0, %struct.trace** %2, align 8
  store i32 -1, i32* %3, align 4
  %6 = load %struct.trace*, %struct.trace** %2, align 8
  %7 = getelementptr inbounds %struct.trace, %struct.trace* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = load %struct.trace*, %struct.trace** %2, align 8
  %13 = getelementptr inbounds %struct.trace, %struct.trace* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.trace*, %struct.trace** %2, align 8
  %17 = getelementptr inbounds %struct.trace, %struct.trace* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i8* @asprintf_expr_inout_ints(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %15, i32 %19)
  store i8* %20, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %47

24:                                               ; preds = %1
  %25 = load %struct.trace*, %struct.trace** %2, align 8
  %26 = getelementptr inbounds %struct.trace, %struct.trace* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load %struct.evsel*, %struct.evsel** %28, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @perf_evsel__append_tp_filter(%struct.evsel* %29, i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %24
  %34 = load %struct.trace*, %struct.trace** %2, align 8
  %35 = getelementptr inbounds %struct.trace, %struct.trace* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.evsel*, %struct.evsel** %37, align 8
  store %struct.evsel* %38, %struct.evsel** %4, align 8
  %39 = load %struct.evsel*, %struct.evsel** %4, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @perf_evsel__append_tp_filter(%struct.evsel* %39, i8* %40)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %33, %24
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @free(i8* %43)
  br label %45

45:                                               ; preds = %47, %42
  %46 = load i32, i32* %3, align 4
  ret i32 %46

47:                                               ; preds = %23
  %48 = load i32, i32* @ENOMEM, align 4
  store i32 %48, i32* @errno, align 4
  br label %45
}

declare dso_local i8* @asprintf_expr_inout_ints(i8*, i32, i32, i32) #1

declare dso_local i32 @perf_evsel__append_tp_filter(%struct.evsel*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
