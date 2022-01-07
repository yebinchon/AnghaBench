; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_hists__add_entry_ops.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_hists__add_entry_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_entry = type { i32 }
%struct.hists = type { i32 }
%struct.hist_entry_ops = type { i32 }
%struct.addr_location = type { i32 }
%struct.symbol = type { i32 }
%struct.branch_info = type { i32 }
%struct.mem_info = type { i32 }
%struct.perf_sample = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hist_entry* @hists__add_entry_ops(%struct.hists* %0, %struct.hist_entry_ops* %1, %struct.addr_location* %2, %struct.symbol* %3, %struct.branch_info* %4, %struct.mem_info* %5, %struct.perf_sample* %6, i32 %7) #0 {
  %9 = alloca %struct.hists*, align 8
  %10 = alloca %struct.hist_entry_ops*, align 8
  %11 = alloca %struct.addr_location*, align 8
  %12 = alloca %struct.symbol*, align 8
  %13 = alloca %struct.branch_info*, align 8
  %14 = alloca %struct.mem_info*, align 8
  %15 = alloca %struct.perf_sample*, align 8
  %16 = alloca i32, align 4
  store %struct.hists* %0, %struct.hists** %9, align 8
  store %struct.hist_entry_ops* %1, %struct.hist_entry_ops** %10, align 8
  store %struct.addr_location* %2, %struct.addr_location** %11, align 8
  store %struct.symbol* %3, %struct.symbol** %12, align 8
  store %struct.branch_info* %4, %struct.branch_info** %13, align 8
  store %struct.mem_info* %5, %struct.mem_info** %14, align 8
  store %struct.perf_sample* %6, %struct.perf_sample** %15, align 8
  store i32 %7, i32* %16, align 4
  %17 = load %struct.hists*, %struct.hists** %9, align 8
  %18 = load %struct.addr_location*, %struct.addr_location** %11, align 8
  %19 = load %struct.symbol*, %struct.symbol** %12, align 8
  %20 = load %struct.branch_info*, %struct.branch_info** %13, align 8
  %21 = load %struct.mem_info*, %struct.mem_info** %14, align 8
  %22 = load %struct.perf_sample*, %struct.perf_sample** %15, align 8
  %23 = load i32, i32* %16, align 4
  %24 = load %struct.hist_entry_ops*, %struct.hist_entry_ops** %10, align 8
  %25 = call %struct.hist_entry* @__hists__add_entry(%struct.hists* %17, %struct.addr_location* %18, %struct.symbol* %19, %struct.branch_info* %20, %struct.mem_info* %21, i32* null, %struct.perf_sample* %22, i32 %23, %struct.hist_entry_ops* %24)
  ret %struct.hist_entry* %25
}

declare dso_local %struct.hist_entry* @__hists__add_entry(%struct.hists*, %struct.addr_location*, %struct.symbol*, %struct.branch_info*, %struct.mem_info*, i32*, %struct.perf_sample*, i32, %struct.hist_entry_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
