; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_process_stat.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_process_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*, %struct.evsel*, i32)* }
%struct.evsel = type { i32 }

@scripting_ops = common dso_local global %struct.TYPE_2__* null, align 8
@stat_config = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evsel*, i32)* @process_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_stat(%struct.evsel* %0, i32 %1) #0 {
  %3 = alloca %struct.evsel*, align 8
  %4 = alloca i32, align 4
  store %struct.evsel* %0, %struct.evsel** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @scripting_ops, align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @scripting_ops, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32 (i32*, %struct.evsel*, i32)*, i32 (i32*, %struct.evsel*, i32)** %9, align 8
  %11 = icmp ne i32 (i32*, %struct.evsel*, i32)* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %7
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @scripting_ops, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (i32*, %struct.evsel*, i32)*, i32 (i32*, %struct.evsel*, i32)** %14, align 8
  %16 = load %struct.evsel*, %struct.evsel** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 %15(i32* @stat_config, %struct.evsel* %16, i32 %17)
  br label %23

19:                                               ; preds = %7, %2
  %20 = load %struct.evsel*, %struct.evsel** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @__process_stat(%struct.evsel* %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %12
  ret void
}

declare dso_local i32 @__process_stat(%struct.evsel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
