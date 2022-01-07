; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_addr_filters_splice.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_addr_filters_splice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.list_head = type { i32 }

@list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, %struct.list_head*)* @perf_addr_filters_splice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_addr_filters_splice(%struct.perf_event* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca i64, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %6 = load i32, i32* @list, align 4
  %7 = call i32 @LIST_HEAD(i32 %6)
  %8 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %9 = call i32 @has_addr_filter(%struct.perf_event* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %43

12:                                               ; preds = %2
  %13 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %14 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %43

18:                                               ; preds = %12
  %19 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %20 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @raw_spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %25 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = call i32 @list_splice_init(i32* %26, i32* @list)
  %28 = load %struct.list_head*, %struct.list_head** %4, align 8
  %29 = icmp ne %struct.list_head* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %18
  %31 = load %struct.list_head*, %struct.list_head** %4, align 8
  %32 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %33 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = call i32 @list_splice(%struct.list_head* %31, i32* %34)
  br label %36

36:                                               ; preds = %30, %18
  %37 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %38 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @raw_spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = call i32 @free_filters_list(i32* @list)
  br label %43

43:                                               ; preds = %36, %17, %11
  ret void
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @has_addr_filter(%struct.perf_event*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_splice_init(i32*, i32*) #1

declare dso_local i32 @list_splice(%struct.list_head*, i32*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @free_filters_list(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
