; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-diff.c_init_block_hist.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-diff.c_init_block_hist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_hist = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@block_cmp = common dso_local global i32 0, align 4
@block_sort = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.block_hist*)* @init_block_hist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_block_hist(%struct.block_hist* %0) #0 {
  %2 = alloca %struct.block_hist*, align 8
  store %struct.block_hist* %0, %struct.block_hist** %2, align 8
  %3 = load %struct.block_hist*, %struct.block_hist** %2, align 8
  %4 = getelementptr inbounds %struct.block_hist, %struct.block_hist* %3, i32 0, i32 3
  %5 = load %struct.block_hist*, %struct.block_hist** %2, align 8
  %6 = getelementptr inbounds %struct.block_hist, %struct.block_hist* %5, i32 0, i32 2
  %7 = call i32 @__hists__init(i32* %4, i32* %6)
  %8 = load %struct.block_hist*, %struct.block_hist** %2, align 8
  %9 = getelementptr inbounds %struct.block_hist, %struct.block_hist* %8, i32 0, i32 2
  %10 = call i32 @perf_hpp_list__init(i32* %9)
  %11 = load %struct.block_hist*, %struct.block_hist** %2, align 8
  %12 = getelementptr inbounds %struct.block_hist, %struct.block_hist* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 3
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load %struct.block_hist*, %struct.block_hist** %2, align 8
  %16 = getelementptr inbounds %struct.block_hist, %struct.block_hist* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load i32, i32* @block_cmp, align 4
  %20 = load %struct.block_hist*, %struct.block_hist** %2, align 8
  %21 = getelementptr inbounds %struct.block_hist, %struct.block_hist* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @block_sort, align 4
  %24 = load %struct.block_hist*, %struct.block_hist** %2, align 8
  %25 = getelementptr inbounds %struct.block_hist, %struct.block_hist* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  %27 = load %struct.block_hist*, %struct.block_hist** %2, align 8
  %28 = getelementptr inbounds %struct.block_hist, %struct.block_hist* %27, i32 0, i32 2
  %29 = load %struct.block_hist*, %struct.block_hist** %2, align 8
  %30 = getelementptr inbounds %struct.block_hist, %struct.block_hist* %29, i32 0, i32 1
  %31 = call i32 @perf_hpp_list__register_sort_field(i32* %28, %struct.TYPE_2__* %30)
  %32 = load %struct.block_hist*, %struct.block_hist** %2, align 8
  %33 = getelementptr inbounds %struct.block_hist, %struct.block_hist* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  ret void
}

declare dso_local i32 @__hists__init(i32*, i32*) #1

declare dso_local i32 @perf_hpp_list__init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @perf_hpp_list__register_sort_field(i32*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
