; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_session.c_perf_session__deliver_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_session.c_perf_session__deliver_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_session = type { i32, i32 }
%union.perf_event = type { i32 }
%struct.perf_tool = type { i32 }
%struct.perf_sample = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Can't parse sample, err = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_session*, %union.perf_event*, %struct.perf_tool*, i32)* @perf_session__deliver_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_session__deliver_event(%struct.perf_session* %0, %union.perf_event* %1, %struct.perf_tool* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.perf_session*, align 8
  %7 = alloca %union.perf_event*, align 8
  %8 = alloca %struct.perf_tool*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.perf_sample, align 4
  %11 = alloca i32, align 4
  store %struct.perf_session* %0, %struct.perf_session** %6, align 8
  store %union.perf_event* %1, %union.perf_event** %7, align 8
  store %struct.perf_tool* %2, %struct.perf_tool** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %13 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %union.perf_event*, %union.perf_event** %7, align 8
  %16 = call i32 @perf_evlist__parse_sample(i32 %14, %union.perf_event* %15, %struct.perf_sample* %10)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load i32, i32* %11, align 4
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %5, align 4
  br label %46

23:                                               ; preds = %4
  %24 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %25 = load %union.perf_event*, %union.perf_event** %7, align 8
  %26 = load %struct.perf_tool*, %struct.perf_tool** %8, align 8
  %27 = call i32 @auxtrace__process_event(%struct.perf_session* %24, %union.perf_event* %25, %struct.perf_sample* %10, %struct.perf_tool* %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %5, align 4
  br label %46

32:                                               ; preds = %23
  %33 = load i32, i32* %11, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %46

36:                                               ; preds = %32
  %37 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %38 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %37, i32 0, i32 1
  %39 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %40 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %union.perf_event*, %union.perf_event** %7, align 8
  %43 = load %struct.perf_tool*, %struct.perf_tool** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @machines__deliver_event(i32* %38, i32 %41, %union.perf_event* %42, %struct.perf_sample* %10, %struct.perf_tool* %43, i32 %44)
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %36, %35, %30, %19
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @perf_evlist__parse_sample(i32, %union.perf_event*, %struct.perf_sample*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @auxtrace__process_event(%struct.perf_session*, %union.perf_event*, %struct.perf_sample*, %struct.perf_tool*) #1

declare dso_local i32 @machines__deliver_event(i32*, i32, %union.perf_event*, %struct.perf_sample*, %struct.perf_tool*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
