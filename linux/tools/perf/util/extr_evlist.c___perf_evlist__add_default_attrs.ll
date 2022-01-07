; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_evlist.c___perf_evlist__add_default_attrs.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_evlist.c___perf_evlist__add_default_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evlist = type { i32 }
%struct.perf_event_attr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__perf_evlist__add_default_attrs(%struct.evlist* %0, %struct.perf_event_attr* %1, i64 %2) #0 {
  %4 = alloca %struct.evlist*, align 8
  %5 = alloca %struct.perf_event_attr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.evlist* %0, %struct.evlist** %4, align 8
  store %struct.perf_event_attr* %1, %struct.perf_event_attr** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %8

8:                                                ; preds = %17, %3
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = load %struct.perf_event_attr*, %struct.perf_event_attr** %5, align 8
  %14 = load i64, i64* %7, align 8
  %15 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %13, i64 %14
  %16 = call i32 @event_attr_init(%struct.perf_event_attr* %15)
  br label %17

17:                                               ; preds = %12
  %18 = load i64, i64* %7, align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* %7, align 8
  br label %8

20:                                               ; preds = %8
  %21 = load %struct.evlist*, %struct.evlist** %4, align 8
  %22 = load %struct.perf_event_attr*, %struct.perf_event_attr** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @evlist__add_attrs(%struct.evlist* %21, %struct.perf_event_attr* %22, i64 %23)
  ret i32 %24
}

declare dso_local i32 @event_attr_init(%struct.perf_event_attr*) #1

declare dso_local i32 @evlist__add_attrs(%struct.evlist*, %struct.perf_event_attr*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
