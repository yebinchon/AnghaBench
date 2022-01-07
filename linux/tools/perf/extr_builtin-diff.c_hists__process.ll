; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-diff.c_hists__process.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-diff.c_hists__process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.hists = type { i32 }

@show_baseline_only = common dso_local global i64 0, align 8
@compute = common dso_local global i64 0, align 8
@COMPUTE_CYCLES = common dso_local global i64 0, align 8
@symbol_conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@quiet = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hists*)* @hists__process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hists__process(%struct.hists* %0) #0 {
  %2 = alloca %struct.hists*, align 8
  store %struct.hists* %0, %struct.hists** %2, align 8
  %3 = load i64, i64* @show_baseline_only, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load %struct.hists*, %struct.hists** %2, align 8
  %7 = call i32 @hists__baseline_only(%struct.hists* %6)
  br label %8

8:                                                ; preds = %5, %1
  %9 = load %struct.hists*, %struct.hists** %2, align 8
  %10 = call i32 @hists__precompute(%struct.hists* %9)
  %11 = load %struct.hists*, %struct.hists** %2, align 8
  %12 = call i32 @hists__output_resort(%struct.hists* %11, i32* null)
  %13 = load i64, i64* @compute, align 8
  %14 = load i64, i64* @COMPUTE_CYCLES, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 4
  br label %17

17:                                               ; preds = %16, %8
  %18 = load %struct.hists*, %struct.hists** %2, align 8
  %19 = load i32, i32* @quiet, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* @stdout, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 1), align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @hists__fprintf(%struct.hists* %18, i32 %22, i32 0, i32 0, i32 0, i32 %23, i32 %27)
  ret void
}

declare dso_local i32 @hists__baseline_only(%struct.hists*) #1

declare dso_local i32 @hists__precompute(%struct.hists*) #1

declare dso_local i32 @hists__output_resort(%struct.hists*, i32*) #1

declare dso_local i32 @hists__fprintf(%struct.hists*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
