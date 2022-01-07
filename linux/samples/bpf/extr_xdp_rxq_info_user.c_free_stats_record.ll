; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_rxq_info_user.c_free_stats_record.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_rxq_info_user.c_free_stats_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stats_record = type { %struct.TYPE_3__, %struct.stats_record*, %struct.stats_record* }
%struct.TYPE_3__ = type { %struct.stats_record* }
%struct.TYPE_4__ = type { i32 }

@rx_queue_index_map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stats_record*)* @free_stats_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_stats_record(%struct.stats_record* %0) #0 {
  %2 = alloca %struct.stats_record*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.stats_record* %0, %struct.stats_record** %2, align 8
  %5 = load i32, i32* @rx_queue_index_map, align 4
  %6 = call %struct.TYPE_4__* @bpf_map__def(i32 %5)
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %23, %1
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = load %struct.stats_record*, %struct.stats_record** %2, align 8
  %15 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %14, i32 0, i32 1
  %16 = load %struct.stats_record*, %struct.stats_record** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %16, i64 %18
  %20 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %19, i32 0, i32 2
  %21 = load %struct.stats_record*, %struct.stats_record** %20, align 8
  %22 = call i32 @free(%struct.stats_record* %21)
  br label %23

23:                                               ; preds = %13
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %9

26:                                               ; preds = %9
  %27 = load %struct.stats_record*, %struct.stats_record** %2, align 8
  %28 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %27, i32 0, i32 1
  %29 = load %struct.stats_record*, %struct.stats_record** %28, align 8
  %30 = call i32 @free(%struct.stats_record* %29)
  %31 = load %struct.stats_record*, %struct.stats_record** %2, align 8
  %32 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load %struct.stats_record*, %struct.stats_record** %33, align 8
  %35 = call i32 @free(%struct.stats_record* %34)
  %36 = load %struct.stats_record*, %struct.stats_record** %2, align 8
  %37 = call i32 @free(%struct.stats_record* %36)
  ret void
}

declare dso_local %struct.TYPE_4__* @bpf_map__def(i32) #1

declare dso_local i32 @free(%struct.stats_record*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
