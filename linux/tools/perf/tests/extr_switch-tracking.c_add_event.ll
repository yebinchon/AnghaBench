; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_switch-tracking.c_add_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_switch-tracking.c_add_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evlist = type { i32 }
%struct.list_head = type { i32 }
%union.perf_event = type { i32 }
%struct.perf_sample = type { i64 }
%struct.event_node = type { i64, i32, %union.perf_event* }

@.str = private unnamed_addr constant [15 x i8] c"malloc failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"perf_evlist__parse_sample failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"event with no time\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evlist*, %struct.list_head*, %union.perf_event*)* @add_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_event(%struct.evlist* %0, %struct.list_head* %1, %union.perf_event* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.evlist*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca %union.perf_event*, align 8
  %8 = alloca %struct.perf_sample, align 8
  %9 = alloca %struct.event_node*, align 8
  store %struct.evlist* %0, %struct.evlist** %5, align 8
  store %struct.list_head* %1, %struct.list_head** %6, align 8
  store %union.perf_event* %2, %union.perf_event** %7, align 8
  %10 = call %struct.event_node* @malloc(i32 24)
  store %struct.event_node* %10, %struct.event_node** %9, align 8
  %11 = load %struct.event_node*, %struct.event_node** %9, align 8
  %12 = icmp ne %struct.event_node* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = call i32 @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %40

15:                                               ; preds = %3
  %16 = load %union.perf_event*, %union.perf_event** %7, align 8
  %17 = load %struct.event_node*, %struct.event_node** %9, align 8
  %18 = getelementptr inbounds %struct.event_node, %struct.event_node* %17, i32 0, i32 2
  store %union.perf_event* %16, %union.perf_event** %18, align 8
  %19 = load %struct.event_node*, %struct.event_node** %9, align 8
  %20 = getelementptr inbounds %struct.event_node, %struct.event_node* %19, i32 0, i32 1
  %21 = load %struct.list_head*, %struct.list_head** %6, align 8
  %22 = call i32 @list_add(i32* %20, %struct.list_head* %21)
  %23 = load %struct.evlist*, %struct.evlist** %5, align 8
  %24 = load %union.perf_event*, %union.perf_event** %7, align 8
  %25 = call i64 @perf_evlist__parse_sample(%struct.evlist* %23, %union.perf_event* %24, %struct.perf_sample* %8)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %15
  %28 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %40

29:                                               ; preds = %15
  %30 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %8, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %40

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %8, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.event_node*, %struct.event_node** %9, align 8
  %39 = getelementptr inbounds %struct.event_node, %struct.event_node* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %35, %33, %27, %13
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.event_node* @malloc(i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

declare dso_local i64 @perf_evlist__parse_sample(%struct.evlist*, %union.perf_event*, %struct.perf_sample*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
