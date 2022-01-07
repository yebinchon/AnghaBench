; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_event_set_addr_filter.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_event_set_addr_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_4__, %struct.TYPE_6__*, i32, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i32 (i32*)* }
%struct.TYPE_5__ = type { i32 }

@filters = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@perf_event_addr_filters_apply = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, i8*)* @perf_event_set_addr_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_event_set_addr_filter(%struct.perf_event* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* @filters, align 4
  %8 = call i32 @LIST_HEAD(i32 %7)
  %9 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 3
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = call i32 @lockdep_assert_held(i32* %12)
  %14 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %15 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @WARN_ON_ONCE(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %53

22:                                               ; preds = %2
  %23 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @perf_event_parse_addr_filter(%struct.perf_event* %23, i8* %24, i32* @filters)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %48

29:                                               ; preds = %22
  %30 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %31 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %30, i32 0, i32 1
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32 (i32*)*, i32 (i32*)** %33, align 8
  %35 = call i32 %34(i32* @filters)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %46

39:                                               ; preds = %29
  %40 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %41 = call i32 @perf_addr_filters_splice(%struct.perf_event* %40, i32* @filters)
  %42 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %43 = load i32, i32* @perf_event_addr_filters_apply, align 4
  %44 = call i32 @perf_event_for_each_child(%struct.perf_event* %42, i32 %43)
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %53

46:                                               ; preds = %38
  %47 = call i32 @free_filters_list(i32* @filters)
  br label %48

48:                                               ; preds = %46, %28
  %49 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %50 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %48, %39, %19
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @perf_event_parse_addr_filter(%struct.perf_event*, i8*, i32*) #1

declare dso_local i32 @perf_addr_filters_splice(%struct.perf_event*, i32*) #1

declare dso_local i32 @perf_event_for_each_child(%struct.perf_event*, i32) #1

declare dso_local i32 @free_filters_list(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
