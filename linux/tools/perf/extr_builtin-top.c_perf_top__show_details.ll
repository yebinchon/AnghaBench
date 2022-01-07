; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-top.c_perf_top__show_details.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-top.c_perf_top__show_details.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_top = type { %struct.TYPE_8__*, i64, %struct.TYPE_7__*, %struct.TYPE_9__, %struct.hist_entry* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.hist_entry = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, %struct.symbol* }
%struct.symbol = type { i8* }
%struct.evsel = type { i32 }
%struct.annotation = type { i32, i32* }

@.str = private unnamed_addr constant [19 x i8] c"Showing %s for %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"  Events  Pcnt (>=%d%%)\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"%d lines not displayed, maybe increase display entries [e]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_top*)* @perf_top__show_details to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_top__show_details(%struct.perf_top* %0) #0 {
  %2 = alloca %struct.perf_top*, align 8
  %3 = alloca %struct.hist_entry*, align 8
  %4 = alloca %struct.evsel*, align 8
  %5 = alloca %struct.annotation*, align 8
  %6 = alloca %struct.symbol*, align 8
  %7 = alloca i32, align 4
  store %struct.perf_top* %0, %struct.perf_top** %2, align 8
  %8 = load %struct.perf_top*, %struct.perf_top** %2, align 8
  %9 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %8, i32 0, i32 4
  %10 = load %struct.hist_entry*, %struct.hist_entry** %9, align 8
  store %struct.hist_entry* %10, %struct.hist_entry** %3, align 8
  %11 = load %struct.hist_entry*, %struct.hist_entry** %3, align 8
  %12 = icmp ne %struct.hist_entry* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %100

14:                                               ; preds = %1
  %15 = load %struct.hist_entry*, %struct.hist_entry** %3, align 8
  %16 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.evsel* @hists_to_evsel(i32 %17)
  store %struct.evsel* %18, %struct.evsel** %4, align 8
  %19 = load %struct.hist_entry*, %struct.hist_entry** %3, align 8
  %20 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load %struct.symbol*, %struct.symbol** %21, align 8
  store %struct.symbol* %22, %struct.symbol** %6, align 8
  %23 = load %struct.symbol*, %struct.symbol** %6, align 8
  %24 = call %struct.annotation* @symbol__annotation(%struct.symbol* %23)
  store %struct.annotation* %24, %struct.annotation** %5, align 8
  %25 = load %struct.annotation*, %struct.annotation** %5, align 8
  %26 = getelementptr inbounds %struct.annotation, %struct.annotation* %25, i32 0, i32 0
  %27 = call i32 @pthread_mutex_lock(i32* %26)
  %28 = load %struct.symbol*, %struct.symbol** %6, align 8
  %29 = load %struct.evsel*, %struct.evsel** %4, align 8
  %30 = call i32 @symbol__calc_percent(%struct.symbol* %28, %struct.evsel* %29)
  %31 = load %struct.annotation*, %struct.annotation** %5, align 8
  %32 = getelementptr inbounds %struct.annotation, %struct.annotation* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %14
  br label %96

36:                                               ; preds = %14
  %37 = load %struct.perf_top*, %struct.perf_top** %2, align 8
  %38 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = call i8* @perf_evsel__name(%struct.TYPE_8__* %39)
  %41 = load %struct.symbol*, %struct.symbol** %6, align 8
  %42 = getelementptr inbounds %struct.symbol, %struct.symbol* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %40, i8* %43)
  %45 = load %struct.perf_top*, %struct.perf_top** %2, align 8
  %46 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load %struct.symbol*, %struct.symbol** %6, align 8
  %51 = load %struct.hist_entry*, %struct.hist_entry** %3, align 8
  %52 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.perf_top*, %struct.perf_top** %2, align 8
  %56 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = load %struct.perf_top*, %struct.perf_top** %2, align 8
  %59 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %58, i32 0, i32 3
  %60 = call i32 @symbol__annotate_printf(%struct.symbol* %50, i32 %54, %struct.TYPE_8__* %57, %struct.TYPE_9__* %59)
  store i32 %60, i32* %7, align 4
  %61 = load %struct.perf_top*, %struct.perf_top** %2, align 8
  %62 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %61, i32 0, i32 2
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %89

67:                                               ; preds = %36
  %68 = load %struct.perf_top*, %struct.perf_top** %2, align 8
  %69 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = load %struct.symbol*, %struct.symbol** %6, align 8
  %74 = load %struct.perf_top*, %struct.perf_top** %2, align 8
  %75 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %74, i32 0, i32 0
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @symbol__annotate_zero_histogram(%struct.symbol* %73, i32 %78)
  br label %88

80:                                               ; preds = %67
  %81 = load %struct.symbol*, %struct.symbol** %6, align 8
  %82 = load %struct.perf_top*, %struct.perf_top** %2, align 8
  %83 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %82, i32 0, i32 0
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @symbol__annotate_decay_histogram(%struct.symbol* %81, i32 %86)
  br label %88

88:                                               ; preds = %80, %72
  br label %89

89:                                               ; preds = %88, %36
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i32, i32* %7, align 4
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %92, %89
  br label %96

96:                                               ; preds = %95, %35
  %97 = load %struct.annotation*, %struct.annotation** %5, align 8
  %98 = getelementptr inbounds %struct.annotation, %struct.annotation* %97, i32 0, i32 0
  %99 = call i32 @pthread_mutex_unlock(i32* %98)
  br label %100

100:                                              ; preds = %96, %13
  ret void
}

declare dso_local %struct.evsel* @hists_to_evsel(i32) #1

declare dso_local %struct.annotation* @symbol__annotation(%struct.symbol*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @symbol__calc_percent(%struct.symbol*, %struct.evsel*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @perf_evsel__name(%struct.TYPE_8__*) #1

declare dso_local i32 @symbol__annotate_printf(%struct.symbol*, i32, %struct.TYPE_8__*, %struct.TYPE_9__*) #1

declare dso_local i32 @symbol__annotate_zero_histogram(%struct.symbol*, i32) #1

declare dso_local i32 @symbol__annotate_decay_histogram(%struct.symbol*, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
