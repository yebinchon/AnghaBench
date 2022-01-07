; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_metricgroup.c_metricgroup__parse_groups.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_metricgroup.c_metricgroup__parse_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i64 }
%struct.rblist = type { i64 }
%struct.parse_events_error = type { i32 }
%struct.evlist = type { i32 }
%struct.strbuf = type { i32 }

@group_list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"adding %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @metricgroup__parse_groups(%struct.option* %0, i8* %1, %struct.rblist* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.option*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.rblist*, align 8
  %8 = alloca %struct.parse_events_error, align 4
  %9 = alloca %struct.evlist*, align 8
  %10 = alloca %struct.strbuf, align 4
  %11 = alloca i32, align 4
  store %struct.option* %0, %struct.option** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.rblist* %2, %struct.rblist** %7, align 8
  %12 = load %struct.option*, %struct.option** %5, align 8
  %13 = getelementptr inbounds %struct.option, %struct.option* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.evlist**
  %16 = load %struct.evlist*, %struct.evlist** %15, align 8
  store %struct.evlist* %16, %struct.evlist** %9, align 8
  %17 = load i32, i32* @group_list, align 4
  %18 = call i32 @LIST_HEAD(i32 %17)
  %19 = load %struct.rblist*, %struct.rblist** %7, align 8
  %20 = getelementptr inbounds %struct.rblist, %struct.rblist* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load %struct.rblist*, %struct.rblist** %7, align 8
  %25 = call i32 @metricgroup__rblist_init(%struct.rblist* %24)
  br label %26

26:                                               ; preds = %23, %3
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @metricgroup__add_metric_list(i8* %27, %struct.strbuf* %10, i32* @group_list)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %4, align 4
  br label %56

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @pr_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = call i32 @memset(%struct.parse_events_error* %8, i32 0, i32 4)
  %38 = load %struct.evlist*, %struct.evlist** %9, align 8
  %39 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @parse_events(%struct.evlist* %38, i32 %40, %struct.parse_events_error* %8)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %33
  %45 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @parse_events_print_error(%struct.parse_events_error* %8, i32 %46)
  br label %53

48:                                               ; preds = %33
  %49 = call i32 @strbuf_release(%struct.strbuf* %10)
  %50 = load %struct.evlist*, %struct.evlist** %9, align 8
  %51 = load %struct.rblist*, %struct.rblist** %7, align 8
  %52 = call i32 @metricgroup__setup_events(i32* @group_list, %struct.evlist* %50, %struct.rblist* %51)
  store i32 %52, i32* %11, align 4
  br label %53

53:                                               ; preds = %48, %44
  %54 = call i32 @metricgroup__free_egroups(i32* @group_list)
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %53, %31
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @metricgroup__rblist_init(%struct.rblist*) #1

declare dso_local i32 @metricgroup__add_metric_list(i8*, %struct.strbuf*, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @memset(%struct.parse_events_error*, i32, i32) #1

declare dso_local i32 @parse_events(%struct.evlist*, i32, %struct.parse_events_error*) #1

declare dso_local i32 @parse_events_print_error(%struct.parse_events_error*, i32) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i32 @metricgroup__setup_events(i32*, %struct.evlist*, %struct.rblist*) #1

declare dso_local i32 @metricgroup__free_egroups(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
