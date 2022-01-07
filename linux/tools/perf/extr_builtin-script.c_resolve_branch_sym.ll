; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_resolve_branch_sym.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_resolve_branch_sym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_sample = type { i32, i32, i32 }
%struct.evsel = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.perf_event_attr }
%struct.perf_event_attr = type { i32 }
%struct.thread = type { i32 }
%struct.addr_location = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }

@PERF_IP_FLAG_CALL = common dso_local global i32 0, align 4
@PERF_IP_FLAG_TRACE_BEGIN = common dso_local global i32 0, align 4
@PERF_IP_FLAG_RETURN = common dso_local global i32 0, align 4
@PERF_IP_FLAG_TRACE_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.perf_sample*, %struct.evsel*, %struct.thread*, %struct.addr_location*, i32*)* @resolve_branch_sym to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @resolve_branch_sym(%struct.perf_sample* %0, %struct.evsel* %1, %struct.thread* %2, %struct.addr_location* %3, i32* %4) #0 {
  %6 = alloca %struct.perf_sample*, align 8
  %7 = alloca %struct.evsel*, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.addr_location*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.addr_location, align 8
  %12 = alloca %struct.perf_event_attr*, align 8
  %13 = alloca i8*, align 8
  store %struct.perf_sample* %0, %struct.perf_sample** %6, align 8
  store %struct.evsel* %1, %struct.evsel** %7, align 8
  store %struct.thread* %2, %struct.thread** %8, align 8
  store %struct.addr_location* %3, %struct.addr_location** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load %struct.evsel*, %struct.evsel** %7, align 8
  %15 = getelementptr inbounds %struct.evsel, %struct.evsel* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.perf_event_attr* %16, %struct.perf_event_attr** %12, align 8
  store i8* null, i8** %13, align 8
  %17 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %18 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PERF_IP_FLAG_CALL, align 4
  %21 = load i32, i32* @PERF_IP_FLAG_TRACE_BEGIN, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %53

25:                                               ; preds = %5
  %26 = load %struct.perf_event_attr*, %struct.perf_event_attr** %12, align 8
  %27 = call i64 @sample_addr_correlates_sym(%struct.perf_event_attr* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %25
  %30 = load %struct.thread*, %struct.thread** %8, align 8
  %31 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %32 = call i32 @thread__resolve(%struct.thread* %30, %struct.addr_location* %11, %struct.perf_sample* %31)
  %33 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %11, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = icmp ne %struct.TYPE_4__* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %11, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %13, align 8
  br label %46

41:                                               ; preds = %29
  %42 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %43 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %10, align 8
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %41, %36
  br label %52

47:                                               ; preds = %25
  %48 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %49 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %10, align 8
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %47, %46
  br label %80

53:                                               ; preds = %5
  %54 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %55 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @PERF_IP_FLAG_RETURN, align 4
  %58 = load i32, i32* @PERF_IP_FLAG_TRACE_END, align 4
  %59 = or i32 %57, %58
  %60 = and i32 %56, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %79

62:                                               ; preds = %53
  %63 = load %struct.addr_location*, %struct.addr_location** %9, align 8
  %64 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = icmp ne %struct.TYPE_4__* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load %struct.addr_location*, %struct.addr_location** %9, align 8
  %69 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %13, align 8
  br label %78

73:                                               ; preds = %62
  %74 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %75 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %10, align 8
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %73, %67
  br label %79

79:                                               ; preds = %78, %53
  br label %80

80:                                               ; preds = %79, %52
  %81 = load i8*, i8** %13, align 8
  ret i8* %81
}

declare dso_local i64 @sample_addr_correlates_sym(%struct.perf_event_attr*) #1

declare dso_local i32 @thread__resolve(%struct.thread*, %struct.addr_location*, %struct.perf_sample*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
