; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_addr_filter_new.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_addr_filter_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_addr_filter = type { i32 }
%struct.perf_event = type { i32 }
%struct.list_head = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.perf_addr_filter* (%struct.perf_event*, %struct.list_head*)* @perf_addr_filter_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.perf_addr_filter* @perf_addr_filter_new(%struct.perf_event* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.perf_addr_filter*, align 8
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.perf_addr_filter*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store %struct.list_head* %1, %struct.list_head** %5, align 8
  %8 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %17

13:                                               ; preds = %2
  %14 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %15 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  br label %17

17:                                               ; preds = %13, %12
  %18 = phi i32 [ 0, %12 ], [ %16, %13 ]
  %19 = call i32 @cpu_to_node(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call %struct.perf_addr_filter* @kzalloc_node(i32 4, i32 %20, i32 %21)
  store %struct.perf_addr_filter* %22, %struct.perf_addr_filter** %7, align 8
  %23 = load %struct.perf_addr_filter*, %struct.perf_addr_filter** %7, align 8
  %24 = icmp ne %struct.perf_addr_filter* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  store %struct.perf_addr_filter* null, %struct.perf_addr_filter** %3, align 8
  br label %35

26:                                               ; preds = %17
  %27 = load %struct.perf_addr_filter*, %struct.perf_addr_filter** %7, align 8
  %28 = getelementptr inbounds %struct.perf_addr_filter, %struct.perf_addr_filter* %27, i32 0, i32 0
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.perf_addr_filter*, %struct.perf_addr_filter** %7, align 8
  %31 = getelementptr inbounds %struct.perf_addr_filter, %struct.perf_addr_filter* %30, i32 0, i32 0
  %32 = load %struct.list_head*, %struct.list_head** %5, align 8
  %33 = call i32 @list_add_tail(i32* %31, %struct.list_head* %32)
  %34 = load %struct.perf_addr_filter*, %struct.perf_addr_filter** %7, align 8
  store %struct.perf_addr_filter* %34, %struct.perf_addr_filter** %3, align 8
  br label %35

35:                                               ; preds = %26, %25
  %36 = load %struct.perf_addr_filter*, %struct.perf_addr_filter** %3, align 8
  ret %struct.perf_addr_filter* %36
}

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local %struct.perf_addr_filter* @kzalloc_node(i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
