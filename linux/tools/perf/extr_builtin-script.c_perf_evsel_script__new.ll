; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_perf_evsel_script__new.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_perf_evsel_script__new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel_script = type { i32, i32* }
%struct.evsel = type { i32 }
%struct.perf_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"%s.%s.dump\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.evsel_script* (%struct.evsel*, %struct.perf_data*)* @perf_evsel_script__new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.evsel_script* @perf_evsel_script__new(%struct.evsel* %0, %struct.perf_data* %1) #0 {
  %3 = alloca %struct.evsel_script*, align 8
  %4 = alloca %struct.evsel*, align 8
  %5 = alloca %struct.perf_data*, align 8
  %6 = alloca %struct.evsel_script*, align 8
  store %struct.evsel* %0, %struct.evsel** %4, align 8
  store %struct.perf_data* %1, %struct.perf_data** %5, align 8
  %7 = call %struct.evsel_script* @zalloc(i32 16)
  store %struct.evsel_script* %7, %struct.evsel_script** %6, align 8
  %8 = load %struct.evsel_script*, %struct.evsel_script** %6, align 8
  %9 = icmp ne %struct.evsel_script* %8, null
  br i1 %9, label %10, label %35

10:                                               ; preds = %2
  %11 = load %struct.evsel_script*, %struct.evsel_script** %6, align 8
  %12 = getelementptr inbounds %struct.evsel_script, %struct.evsel_script* %11, i32 0, i32 0
  %13 = load %struct.perf_data*, %struct.perf_data** %5, align 8
  %14 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.evsel*, %struct.evsel** %4, align 8
  %18 = call i32 @perf_evsel__name(%struct.evsel* %17)
  %19 = call i64 @asprintf(i32* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %10
  br label %41

22:                                               ; preds = %10
  %23 = load %struct.evsel_script*, %struct.evsel_script** %6, align 8
  %24 = getelementptr inbounds %struct.evsel_script, %struct.evsel_script* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32* @fopen(i32 %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.evsel_script*, %struct.evsel_script** %6, align 8
  %28 = getelementptr inbounds %struct.evsel_script, %struct.evsel_script* %27, i32 0, i32 1
  store i32* %26, i32** %28, align 8
  %29 = load %struct.evsel_script*, %struct.evsel_script** %6, align 8
  %30 = getelementptr inbounds %struct.evsel_script, %struct.evsel_script* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  br label %37

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %34, %2
  %36 = load %struct.evsel_script*, %struct.evsel_script** %6, align 8
  store %struct.evsel_script* %36, %struct.evsel_script** %3, align 8
  br label %44

37:                                               ; preds = %33
  %38 = load %struct.evsel_script*, %struct.evsel_script** %6, align 8
  %39 = getelementptr inbounds %struct.evsel_script, %struct.evsel_script* %38, i32 0, i32 0
  %40 = call i32 @zfree(i32* %39)
  br label %41

41:                                               ; preds = %37, %21
  %42 = load %struct.evsel_script*, %struct.evsel_script** %6, align 8
  %43 = call i32 @free(%struct.evsel_script* %42)
  store %struct.evsel_script* null, %struct.evsel_script** %3, align 8
  br label %44

44:                                               ; preds = %41, %35
  %45 = load %struct.evsel_script*, %struct.evsel_script** %3, align 8
  ret %struct.evsel_script* %45
}

declare dso_local %struct.evsel_script* @zalloc(i32) #1

declare dso_local i64 @asprintf(i32*, i8*, i32, i32) #1

declare dso_local i32 @perf_evsel__name(%struct.evsel*) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @zfree(i32*) #1

declare dso_local i32 @free(%struct.evsel_script*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
