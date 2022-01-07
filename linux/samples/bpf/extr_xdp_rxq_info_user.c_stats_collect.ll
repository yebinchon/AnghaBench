; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_rxq_info_user.c_stats_collect.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_rxq_info_user.c_stats_collect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stats_record = type { i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@stats_global_map = common dso_local global i32 0, align 4
@rx_queue_index_map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stats_record*)* @stats_collect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stats_collect(%struct.stats_record* %0) #0 {
  %2 = alloca %struct.stats_record*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.stats_record* %0, %struct.stats_record** %2, align 8
  %6 = load i32, i32* @stats_global_map, align 4
  %7 = call i32 @bpf_map__fd(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.stats_record*, %struct.stats_record** %2, align 8
  %10 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %9, i32 0, i32 1
  %11 = call i32 @map_collect_percpu(i32 %8, i32 0, i32* %10)
  %12 = load i32, i32* @rx_queue_index_map, align 4
  %13 = call i32 @bpf_map__fd(i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @rx_queue_index_map, align 4
  %15 = call %struct.TYPE_2__* @bpf_map__def(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %32, %1
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.stats_record*, %struct.stats_record** %2, align 8
  %26 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = call i32 @map_collect_percpu(i32 %23, i32 %24, i32* %30)
  br label %32

32:                                               ; preds = %22
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %18

35:                                               ; preds = %18
  ret void
}

declare dso_local i32 @bpf_map__fd(i32) #1

declare dso_local i32 @map_collect_percpu(i32, i32, i32*) #1

declare dso_local %struct.TYPE_2__* @bpf_map__def(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
