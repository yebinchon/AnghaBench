; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_iter_next_cumulative_entry.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_iter_next_cumulative_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_entry_iter = type { i32 }
%struct.addr_location = type { i32 }
%struct.callchain_cursor_node = type { i32 }

@callchain_cursor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_entry_iter*, %struct.addr_location*)* @iter_next_cumulative_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iter_next_cumulative_entry(%struct.hist_entry_iter* %0, %struct.addr_location* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hist_entry_iter*, align 8
  %5 = alloca %struct.addr_location*, align 8
  %6 = alloca %struct.callchain_cursor_node*, align 8
  store %struct.hist_entry_iter* %0, %struct.hist_entry_iter** %4, align 8
  store %struct.addr_location* %1, %struct.addr_location** %5, align 8
  %7 = call %struct.callchain_cursor_node* @callchain_cursor_current(i32* @callchain_cursor)
  store %struct.callchain_cursor_node* %7, %struct.callchain_cursor_node** %6, align 8
  %8 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %6, align 8
  %9 = icmp eq %struct.callchain_cursor_node* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %18

11:                                               ; preds = %2
  %12 = load %struct.addr_location*, %struct.addr_location** %5, align 8
  %13 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %6, align 8
  %14 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %4, align 8
  %15 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @fill_callchain_info(%struct.addr_location* %12, %struct.callchain_cursor_node* %13, i32 %16)
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %11, %10
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local %struct.callchain_cursor_node* @callchain_cursor_current(i32*) #1

declare dso_local i32 @fill_callchain_info(%struct.addr_location*, %struct.callchain_cursor_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
