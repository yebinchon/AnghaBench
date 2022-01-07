; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-probe.c_perf_add_probe_events.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-probe.c_perf_add_probe_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8 }
%struct.perf_probe_event = type { i32, %struct.probe_trace_event*, i32 }
%struct.probe_trace_event = type { i8*, i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@params = common dso_local global %struct.TYPE_4__ zeroinitializer, align 1
@.str = private unnamed_addr constant [19 x i8] c"Added new event%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"s:\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"\0AYou can now use it in all perf tools, such as:\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"\09perf record -e %s:%s -aR sleep 1\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_probe_event*, i32)* @perf_add_probe_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_add_probe_events(%struct.perf_probe_event* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_probe_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.perf_probe_event*, align 8
  %12 = alloca %struct.probe_trace_event*, align 8
  store %struct.perf_probe_event* %0, %struct.perf_probe_event** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %13 = load %struct.perf_probe_event*, %struct.perf_probe_event** %4, align 8
  %14 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @init_probe_symbol_maps(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %128

21:                                               ; preds = %2
  %22 = load %struct.perf_probe_event*, %struct.perf_probe_event** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @convert_perf_probe_events(%struct.perf_probe_event* %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %122

28:                                               ; preds = %21
  %29 = load i8, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @params, i32 0, i32 0), align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 68
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load %struct.perf_probe_event*, %struct.perf_probe_event** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @show_probe_trace_events(%struct.perf_probe_event* %33, i32 %34)
  store i32 %35, i32* %6, align 4
  br label %122

36:                                               ; preds = %28
  %37 = load %struct.perf_probe_event*, %struct.perf_probe_event** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @apply_perf_probe_events(%struct.perf_probe_event* %37, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %122

43:                                               ; preds = %36
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %57, %43
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %44
  %49 = load %struct.perf_probe_event*, %struct.perf_probe_event** %4, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %49, i64 %51
  %53 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %48
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %44

60:                                               ; preds = %44
  %61 = load i32, i32* %8, align 4
  %62 = icmp sgt i32 %61, 1
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %65 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %64)
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %110, %60
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %113

70:                                               ; preds = %66
  %71 = load %struct.perf_probe_event*, %struct.perf_probe_event** %4, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %71, i64 %73
  store %struct.perf_probe_event* %74, %struct.perf_probe_event** %11, align 8
  store i32 0, i32* %8, align 4
  br label %75

75:                                               ; preds = %106, %70
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.perf_probe_event*, %struct.perf_probe_event** %11, align 8
  %78 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %109

81:                                               ; preds = %75
  %82 = load %struct.perf_probe_event*, %struct.perf_probe_event** %11, align 8
  %83 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %82, i32 0, i32 1
  %84 = load %struct.probe_trace_event*, %struct.probe_trace_event** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %84, i64 %86
  store %struct.probe_trace_event* %87, %struct.probe_trace_event** %12, align 8
  %88 = load %struct.probe_trace_event*, %struct.probe_trace_event** %12, align 8
  %89 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.probe_trace_event*, %struct.probe_trace_event** %12, align 8
  %92 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.perf_probe_event*, %struct.perf_probe_event** %11, align 8
  %95 = load %struct.probe_trace_event*, %struct.probe_trace_event** %12, align 8
  %96 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @show_perf_probe_event(i8* %90, i8* %93, %struct.perf_probe_event* %94, i32 %98, i32 0)
  %100 = load %struct.probe_trace_event*, %struct.probe_trace_event** %12, align 8
  %101 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  store i8* %102, i8** %9, align 8
  %103 = load %struct.probe_trace_event*, %struct.probe_trace_event** %12, align 8
  %104 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  store i8* %105, i8** %10, align 8
  br label %106

106:                                              ; preds = %81
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %8, align 4
  br label %75

109:                                              ; preds = %75
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %7, align 4
  br label %66

113:                                              ; preds = %66
  %114 = load i8*, i8** %9, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %121

116:                                              ; preds = %113
  %117 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %118 = load i8*, i8** %10, align 8
  %119 = load i8*, i8** %9, align 8
  %120 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %118, i8* %119)
  br label %121

121:                                              ; preds = %116, %113
  br label %122

122:                                              ; preds = %121, %42, %32, %27
  %123 = load %struct.perf_probe_event*, %struct.perf_probe_event** %4, align 8
  %124 = load i32, i32* %5, align 4
  %125 = call i32 @cleanup_perf_probe_events(%struct.perf_probe_event* %123, i32 %124)
  %126 = call i32 (...) @exit_probe_symbol_maps()
  %127 = load i32, i32* %6, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %122, %19
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @init_probe_symbol_maps(i32) #1

declare dso_local i32 @convert_perf_probe_events(%struct.perf_probe_event*, i32) #1

declare dso_local i32 @show_probe_trace_events(%struct.perf_probe_event*, i32) #1

declare dso_local i32 @apply_perf_probe_events(%struct.perf_probe_event*, i32) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @show_perf_probe_event(i8*, i8*, %struct.perf_probe_event*, i32, i32) #1

declare dso_local i32 @cleanup_perf_probe_events(%struct.perf_probe_event*, i32) #1

declare dso_local i32 @exit_probe_symbol_maps(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
