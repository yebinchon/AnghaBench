; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_callchain.c_hist_entry__append_callchain.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_callchain.c_hist_entry__append_callchain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.hist_entry = type { i32 }
%struct.perf_sample = type { i32, i32* }

@symbol_conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@callchain_cursor = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hist_entry__append_callchain(%struct.hist_entry* %0, %struct.perf_sample* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hist_entry*, align 8
  %5 = alloca %struct.perf_sample*, align 8
  store %struct.hist_entry* %0, %struct.hist_entry** %4, align 8
  store %struct.perf_sample* %1, %struct.perf_sample** %5, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 1), align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %10 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %8, %2
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %25

17:                                               ; preds = %13, %8
  %18 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %19 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %22 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @callchain_append(i32 %20, i32* @callchain_cursor, i32 %23)
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %17, %16
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @callchain_append(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
