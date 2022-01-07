; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_redirect_cpu_user.c_stats_collect.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_redirect_cpu_user.c_stats_collect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stats_record = type { i32, i32, i32*, i32, i32 }

@rx_cnt_map_fd = common dso_local global i32 0, align 4
@redirect_err_cnt_map_fd = common dso_local global i32 0, align 4
@cpumap_enqueue_cnt_map_fd = common dso_local global i32 0, align 4
@MAX_CPUS = common dso_local global i32 0, align 4
@cpumap_kthread_cnt_map_fd = common dso_local global i32 0, align 4
@exception_cnt_map_fd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stats_record*)* @stats_collect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stats_collect(%struct.stats_record* %0) #0 {
  %2 = alloca %struct.stats_record*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.stats_record* %0, %struct.stats_record** %2, align 8
  %5 = load i32, i32* @rx_cnt_map_fd, align 4
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.stats_record*, %struct.stats_record** %2, align 8
  %8 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %7, i32 0, i32 4
  %9 = call i32 @map_collect_percpu(i32 %6, i32 0, i32* %8)
  %10 = load i32, i32* @redirect_err_cnt_map_fd, align 4
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.stats_record*, %struct.stats_record** %2, align 8
  %13 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %12, i32 0, i32 3
  %14 = call i32 @map_collect_percpu(i32 %11, i32 1, i32* %13)
  %15 = load i32, i32* @cpumap_enqueue_cnt_map_fd, align 4
  store i32 %15, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %30, %1
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @MAX_CPUS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %16
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.stats_record*, %struct.stats_record** %2, align 8
  %24 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = call i32 @map_collect_percpu(i32 %21, i32 %22, i32* %28)
  br label %30

30:                                               ; preds = %20
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %16

33:                                               ; preds = %16
  %34 = load i32, i32* @cpumap_kthread_cnt_map_fd, align 4
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.stats_record*, %struct.stats_record** %2, align 8
  %37 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %36, i32 0, i32 1
  %38 = call i32 @map_collect_percpu(i32 %35, i32 0, i32* %37)
  %39 = load i32, i32* @exception_cnt_map_fd, align 4
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load %struct.stats_record*, %struct.stats_record** %2, align 8
  %42 = getelementptr inbounds %struct.stats_record, %struct.stats_record* %41, i32 0, i32 0
  %43 = call i32 @map_collect_percpu(i32 %40, i32 0, i32* %42)
  ret void
}

declare dso_local i32 @map_collect_percpu(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
