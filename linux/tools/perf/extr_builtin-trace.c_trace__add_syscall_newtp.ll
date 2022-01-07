; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_trace__add_syscall_newtp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_trace__add_syscall_newtp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.trace = type { %struct.TYPE_10__, i32, i32, %struct.evlist* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.evsel*, %struct.evsel* }
%struct.evsel = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.evlist = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"sys_enter\00", align 1
@trace__sys_enter = common dso_local global i32 0, align 4
@args = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"sys_exit\00", align 1
@trace__sys_exit = common dso_local global i32 0, align 4
@callchain_param = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace*)* @trace__add_syscall_newtp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trace__add_syscall_newtp(%struct.trace* %0) #0 {
  %2 = alloca %struct.trace*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.evlist*, align 8
  %5 = alloca %struct.evsel*, align 8
  %6 = alloca %struct.evsel*, align 8
  store %struct.trace* %0, %struct.trace** %2, align 8
  store i32 -1, i32* %3, align 4
  %7 = load %struct.trace*, %struct.trace** %2, align 8
  %8 = getelementptr inbounds %struct.trace, %struct.trace* %7, i32 0, i32 3
  %9 = load %struct.evlist*, %struct.evlist** %8, align 8
  store %struct.evlist* %9, %struct.evlist** %4, align 8
  %10 = load i32, i32* @trace__sys_enter, align 4
  %11 = call %struct.evsel* @perf_evsel__raw_syscall_newtp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %10)
  store %struct.evsel* %11, %struct.evsel** %5, align 8
  %12 = load %struct.evsel*, %struct.evsel** %5, align 8
  %13 = icmp eq %struct.evsel* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %71

15:                                               ; preds = %1
  %16 = load %struct.evsel*, %struct.evsel** %5, align 8
  %17 = load i32, i32* @args, align 4
  %18 = call i64 @perf_evsel__init_sc_tp_ptr_field(%struct.evsel* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %76

21:                                               ; preds = %15
  %22 = load i32, i32* @trace__sys_exit, align 4
  %23 = call %struct.evsel* @perf_evsel__raw_syscall_newtp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  store %struct.evsel* %23, %struct.evsel** %6, align 8
  %24 = load %struct.evsel*, %struct.evsel** %6, align 8
  %25 = icmp eq %struct.evsel* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %76

27:                                               ; preds = %21
  %28 = load %struct.evsel*, %struct.evsel** %6, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i64 @perf_evsel__init_sc_tp_uint_field(%struct.evsel* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %73

33:                                               ; preds = %27
  %34 = load %struct.evsel*, %struct.evsel** %5, align 8
  %35 = load %struct.trace*, %struct.trace** %2, align 8
  %36 = getelementptr inbounds %struct.trace, %struct.trace* %35, i32 0, i32 2
  %37 = call i32 @perf_evsel__config_callchain(%struct.evsel* %34, i32* %36, %struct.TYPE_11__* @callchain_param)
  %38 = load %struct.evsel*, %struct.evsel** %6, align 8
  %39 = load %struct.trace*, %struct.trace** %2, align 8
  %40 = getelementptr inbounds %struct.trace, %struct.trace* %39, i32 0, i32 2
  %41 = call i32 @perf_evsel__config_callchain(%struct.evsel* %38, i32* %40, %struct.TYPE_11__* @callchain_param)
  %42 = load %struct.evlist*, %struct.evlist** %4, align 8
  %43 = load %struct.evsel*, %struct.evsel** %5, align 8
  %44 = call i32 @evlist__add(%struct.evlist* %42, %struct.evsel* %43)
  %45 = load %struct.evlist*, %struct.evlist** %4, align 8
  %46 = load %struct.evsel*, %struct.evsel** %6, align 8
  %47 = call i32 @evlist__add(%struct.evlist* %45, %struct.evsel* %46)
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @callchain_param, i32 0, i32 0), align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %33
  %51 = load %struct.trace*, %struct.trace** %2, align 8
  %52 = getelementptr inbounds %struct.trace, %struct.trace* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load %struct.evsel*, %struct.evsel** %6, align 8
  %57 = getelementptr inbounds %struct.evsel, %struct.evsel* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 4
  br label %60

60:                                               ; preds = %55, %50, %33
  %61 = load %struct.evsel*, %struct.evsel** %5, align 8
  %62 = load %struct.trace*, %struct.trace** %2, align 8
  %63 = getelementptr inbounds %struct.trace, %struct.trace* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  store %struct.evsel* %61, %struct.evsel** %65, align 8
  %66 = load %struct.evsel*, %struct.evsel** %6, align 8
  %67 = load %struct.trace*, %struct.trace** %2, align 8
  %68 = getelementptr inbounds %struct.trace, %struct.trace* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  store %struct.evsel* %66, %struct.evsel** %70, align 8
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %76, %60, %14
  %72 = load i32, i32* %3, align 4
  ret i32 %72

73:                                               ; preds = %32
  %74 = load %struct.evsel*, %struct.evsel** %6, align 8
  %75 = call i32 @evsel__delete_priv(%struct.evsel* %74)
  br label %76

76:                                               ; preds = %73, %26, %20
  %77 = load %struct.evsel*, %struct.evsel** %5, align 8
  %78 = call i32 @evsel__delete_priv(%struct.evsel* %77)
  br label %71
}

declare dso_local %struct.evsel* @perf_evsel__raw_syscall_newtp(i8*, i32) #1

declare dso_local i64 @perf_evsel__init_sc_tp_ptr_field(%struct.evsel*, i32) #1

declare dso_local i64 @perf_evsel__init_sc_tp_uint_field(%struct.evsel*, i32) #1

declare dso_local i32 @perf_evsel__config_callchain(%struct.evsel*, i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @evlist__add(%struct.evlist*, %struct.evsel*) #1

declare dso_local i32 @evsel__delete_priv(%struct.evsel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
