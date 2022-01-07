; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_show_perf_probe_events.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_show_perf_probe_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.strfilter = type { i32 }

@probe_conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @show_perf_probe_events(%struct.strfilter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.strfilter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.strfilter* %0, %struct.strfilter** %3, align 8
  %7 = call i32 (...) @setup_pager()
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @probe_conf, i32 0, i32 0), align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.strfilter*, %struct.strfilter** %3, align 8
  %12 = call i32 @probe_cache__show_all_caches(%struct.strfilter* %11)
  store i32 %12, i32* %2, align 4
  br label %57

13:                                               ; preds = %1
  %14 = call i32 @init_probe_symbol_maps(i32 0)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %57

19:                                               ; preds = %13
  %20 = call i32 @probe_file__open_both(i32* %4, i32* %5, i32 0)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %57

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.strfilter*, %struct.strfilter** %3, align 8
  %31 = call i32 @__show_perf_probe_events(i32 %29, i32 1, %struct.strfilter* %30)
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %28, %25
  %33 = load i32, i32* %5, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i32, i32* %6, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.strfilter*, %struct.strfilter** %3, align 8
  %41 = call i32 @__show_perf_probe_events(i32 %39, i32 0, %struct.strfilter* %40)
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %38, %35, %32
  %43 = load i32, i32* %4, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @close(i32 %46)
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i32, i32* %5, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @close(i32 %52)
  br label %54

54:                                               ; preds = %51, %48
  %55 = call i32 (...) @exit_probe_symbol_maps()
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %54, %23, %17, %10
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @setup_pager(...) #1

declare dso_local i32 @probe_cache__show_all_caches(%struct.strfilter*) #1

declare dso_local i32 @init_probe_symbol_maps(i32) #1

declare dso_local i32 @probe_file__open_both(i32*, i32*, i32) #1

declare dso_local i32 @__show_perf_probe_events(i32, i32, %struct.strfilter*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @exit_probe_symbol_maps(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
