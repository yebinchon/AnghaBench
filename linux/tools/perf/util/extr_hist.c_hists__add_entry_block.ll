; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_hists__add_entry_block.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_hists__add_entry_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_entry = type { %struct.hists*, %struct.block_info* }
%struct.hists = type { i32 }
%struct.addr_location = type { i32 }
%struct.block_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hist_entry* @hists__add_entry_block(%struct.hists* %0, %struct.addr_location* %1, %struct.block_info* %2) #0 {
  %4 = alloca %struct.hists*, align 8
  %5 = alloca %struct.addr_location*, align 8
  %6 = alloca %struct.block_info*, align 8
  %7 = alloca %struct.hist_entry, align 8
  %8 = alloca %struct.hist_entry*, align 8
  store %struct.hists* %0, %struct.hists** %4, align 8
  store %struct.addr_location* %1, %struct.addr_location** %5, align 8
  store %struct.block_info* %2, %struct.block_info** %6, align 8
  %9 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %7, i32 0, i32 0
  %10 = load %struct.hists*, %struct.hists** %4, align 8
  store %struct.hists* %10, %struct.hists** %9, align 8
  %11 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %7, i32 0, i32 1
  %12 = load %struct.block_info*, %struct.block_info** %6, align 8
  store %struct.block_info* %12, %struct.block_info** %11, align 8
  %13 = load %struct.hists*, %struct.hists** %4, align 8
  %14 = load %struct.addr_location*, %struct.addr_location** %5, align 8
  %15 = call %struct.hist_entry* @hists__findnew_entry(%struct.hists* %13, %struct.hist_entry* %7, %struct.addr_location* %14, i32 0)
  store %struct.hist_entry* %15, %struct.hist_entry** %8, align 8
  %16 = load %struct.hist_entry*, %struct.hist_entry** %8, align 8
  ret %struct.hist_entry* %16
}

declare dso_local %struct.hist_entry* @hists__findnew_entry(%struct.hists*, %struct.hist_entry*, %struct.addr_location*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
