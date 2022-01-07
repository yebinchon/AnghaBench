; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-top.c_perf_top__record_precise_ip.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-top.c_perf_top__record_precise_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_top = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.symbol* }
%struct.symbol = type { i32 }
%struct.hist_entry = type { %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_10__*, %struct.symbol* }
%struct.TYPE_10__ = type { i32 }
%struct.perf_sample = type { i32 }
%struct.evsel = type { i32 }
%struct.annotation = type { i32 }

@use_browser = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Not enough memory for annotating '%s' symbol!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_top*, %struct.hist_entry*, %struct.perf_sample*, %struct.evsel*, i32)* @perf_top__record_precise_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_top__record_precise_ip(%struct.perf_top* %0, %struct.hist_entry* %1, %struct.perf_sample* %2, %struct.evsel* %3, i32 %4) #0 {
  %6 = alloca %struct.perf_top*, align 8
  %7 = alloca %struct.hist_entry*, align 8
  %8 = alloca %struct.perf_sample*, align 8
  %9 = alloca %struct.evsel*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.annotation*, align 8
  %12 = alloca %struct.symbol*, align 8
  %13 = alloca i32, align 4
  store %struct.perf_top* %0, %struct.perf_top** %6, align 8
  store %struct.hist_entry* %1, %struct.hist_entry** %7, align 8
  store %struct.perf_sample* %2, %struct.perf_sample** %8, align 8
  store %struct.evsel* %3, %struct.evsel** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.hist_entry*, %struct.hist_entry** %7, align 8
  %15 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load %struct.symbol*, %struct.symbol** %16, align 8
  store %struct.symbol* %17, %struct.symbol** %12, align 8
  store i32 0, i32* %13, align 4
  %18 = load %struct.symbol*, %struct.symbol** %12, align 8
  %19 = icmp eq %struct.symbol* %18, null
  br i1 %19, label %37, label %20

20:                                               ; preds = %5
  %21 = load i64, i64* @use_browser, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %20
  %24 = load %struct.perf_top*, %struct.perf_top** %6, align 8
  %25 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = icmp eq %struct.TYPE_7__* %26, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %23
  %29 = load %struct.perf_top*, %struct.perf_top** %6, align 8
  %30 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.symbol*, %struct.symbol** %33, align 8
  %35 = load %struct.symbol*, %struct.symbol** %12, align 8
  %36 = icmp ne %struct.symbol* %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %28, %23, %5
  br label %102

38:                                               ; preds = %28, %20
  %39 = load %struct.symbol*, %struct.symbol** %12, align 8
  %40 = call %struct.annotation* @symbol__annotation(%struct.symbol* %39)
  store %struct.annotation* %40, %struct.annotation** %11, align 8
  %41 = load %struct.annotation*, %struct.annotation** %11, align 8
  %42 = getelementptr inbounds %struct.annotation, %struct.annotation* %41, i32 0, i32 0
  %43 = call i64 @pthread_mutex_trylock(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %102

46:                                               ; preds = %38
  %47 = load %struct.hist_entry*, %struct.hist_entry** %7, align 8
  %48 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %49 = load %struct.evsel*, %struct.evsel** %9, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @hist_entry__inc_addr_samples(%struct.hist_entry* %47, %struct.perf_sample* %48, %struct.evsel* %49, i32 %50)
  store i32 %51, i32* %13, align 4
  %52 = load %struct.annotation*, %struct.annotation** %11, align 8
  %53 = getelementptr inbounds %struct.annotation, %struct.annotation* %52, i32 0, i32 0
  %54 = call i32 @pthread_mutex_unlock(i32* %53)
  %55 = load i32, i32* %13, align 4
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %102

58:                                               ; preds = %46
  %59 = load %struct.hist_entry*, %struct.hist_entry** %7, align 8
  %60 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %59, i32 0, i32 0
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = call i32 @pthread_mutex_unlock(i32* %62)
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* @ERANGE, align 4
  %66 = sub nsw i32 0, %65
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %84

68:                                               ; preds = %58
  %69 = load %struct.hist_entry*, %struct.hist_entry** %7, align 8
  %70 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %68
  %77 = load %struct.hist_entry*, %struct.hist_entry** %7, align 8
  %78 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = load %struct.symbol*, %struct.symbol** %12, align 8
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @ui__warn_map_erange(%struct.TYPE_10__* %80, %struct.symbol* %81, i32 %82)
  br label %96

84:                                               ; preds = %68, %58
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  %88 = icmp eq i32 %85, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load %struct.symbol*, %struct.symbol** %12, align 8
  %91 = getelementptr inbounds %struct.symbol, %struct.symbol* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %92)
  %94 = call i32 @sleep(i32 1)
  br label %95

95:                                               ; preds = %89, %84
  br label %96

96:                                               ; preds = %95, %76
  %97 = load %struct.hist_entry*, %struct.hist_entry** %7, align 8
  %98 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %97, i32 0, i32 0
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = call i32 @pthread_mutex_lock(i32* %100)
  br label %102

102:                                              ; preds = %37, %45, %96, %46
  ret void
}

declare dso_local %struct.annotation* @symbol__annotation(%struct.symbol*) #1

declare dso_local i64 @pthread_mutex_trylock(i32*) #1

declare dso_local i32 @hist_entry__inc_addr_samples(%struct.hist_entry*, %struct.perf_sample*, %struct.evsel*, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ui__warn_map_erange(%struct.TYPE_10__*, %struct.symbol*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
