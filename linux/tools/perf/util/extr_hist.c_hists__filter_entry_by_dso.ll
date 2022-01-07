; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_hists__filter_entry_by_dso.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_hists__filter_entry_by_dso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hists = type { i32* }
%struct.hist_entry = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }

@HIST_FILTER__DSO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hists*, %struct.hist_entry*)* @hists__filter_entry_by_dso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hists__filter_entry_by_dso(%struct.hists* %0, %struct.hist_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hists*, align 8
  %5 = alloca %struct.hist_entry*, align 8
  store %struct.hists* %0, %struct.hists** %4, align 8
  store %struct.hist_entry* %1, %struct.hist_entry** %5, align 8
  %6 = load %struct.hists*, %struct.hists** %4, align 8
  %7 = getelementptr inbounds %struct.hists, %struct.hists* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %34

10:                                               ; preds = %2
  %11 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %12 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = icmp eq %struct.TYPE_3__* %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %10
  %17 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %18 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.hists*, %struct.hists** %4, align 8
  %24 = getelementptr inbounds %struct.hists, %struct.hists* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %22, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %16, %10
  %28 = load i32, i32* @HIST_FILTER__DSO, align 4
  %29 = shl i32 1, %28
  %30 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %31 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  store i32 1, i32* %3, align 4
  br label %35

34:                                               ; preds = %16, %2
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %27
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
