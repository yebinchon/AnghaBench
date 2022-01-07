; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_stp.c_br_set_ageing_time.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_stp.c_br_set_ageing_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i64, i64, i32, i32, i32 }

@system_long_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_set_ageing_time(%struct.net_bridge* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_bridge*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.net_bridge* %0, %struct.net_bridge** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @clock_t_to_jiffies(i32 %8)
  store i64 %9, i64* %6, align 8
  %10 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %11 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @__set_ageing_time(i32 %12, i64 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %36

19:                                               ; preds = %2
  %20 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %21 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %20, i32 0, i32 3
  %22 = call i32 @spin_lock_bh(i32* %21)
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %25 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %28 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %30 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %29, i32 0, i32 3
  %31 = call i32 @spin_unlock_bh(i32* %30)
  %32 = load i32, i32* @system_long_wq, align 4
  %33 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %34 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %33, i32 0, i32 2
  %35 = call i32 @mod_delayed_work(i32 %32, i32* %34, i32 0)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %19, %17
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @clock_t_to_jiffies(i32) #1

declare dso_local i32 @__set_ageing_time(i32, i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @mod_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
