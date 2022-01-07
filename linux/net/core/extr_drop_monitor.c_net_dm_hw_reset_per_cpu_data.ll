; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_drop_monitor.c_net_dm_hw_reset_per_cpu_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_drop_monitor.c_net_dm_hw_reset_per_cpu_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_dm_hw_entries = type { i32 }
%struct.per_cpu_dm_data = type { i32, i32, i32 }

@entries = common dso_local global i32 0, align 4
@dm_hit_limit = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_dm_hw_entries* (%struct.per_cpu_dm_data*)* @net_dm_hw_reset_per_cpu_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_dm_hw_entries* @net_dm_hw_reset_per_cpu_data(%struct.per_cpu_dm_data* %0) #0 {
  %2 = alloca %struct.per_cpu_dm_data*, align 8
  %3 = alloca %struct.net_dm_hw_entries*, align 8
  %4 = alloca i64, align 8
  store %struct.per_cpu_dm_data* %0, %struct.per_cpu_dm_data** %2, align 8
  %5 = load %struct.net_dm_hw_entries*, %struct.net_dm_hw_entries** %3, align 8
  %6 = load i32, i32* @entries, align 4
  %7 = load i32, i32* @dm_hit_limit, align 4
  %8 = call i32 @struct_size(%struct.net_dm_hw_entries* %5, i32 %6, i32 %7)
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.net_dm_hw_entries* @kzalloc(i32 %8, i32 %9)
  store %struct.net_dm_hw_entries* %10, %struct.net_dm_hw_entries** %3, align 8
  %11 = load %struct.net_dm_hw_entries*, %struct.net_dm_hw_entries** %3, align 8
  %12 = icmp ne %struct.net_dm_hw_entries* %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %1
  %14 = load %struct.per_cpu_dm_data*, %struct.per_cpu_dm_data** %2, align 8
  %15 = getelementptr inbounds %struct.per_cpu_dm_data, %struct.per_cpu_dm_data* %14, i32 0, i32 2
  %16 = load i64, i64* @jiffies, align 8
  %17 = load i32, i32* @HZ, align 4
  %18 = sdiv i32 %17, 10
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %16, %19
  %21 = call i32 @mod_timer(i32* %15, i64 %20)
  br label %22

22:                                               ; preds = %13, %1
  %23 = load %struct.per_cpu_dm_data*, %struct.per_cpu_dm_data** %2, align 8
  %24 = getelementptr inbounds %struct.per_cpu_dm_data, %struct.per_cpu_dm_data* %23, i32 0, i32 0
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.per_cpu_dm_data*, %struct.per_cpu_dm_data** %2, align 8
  %28 = getelementptr inbounds %struct.per_cpu_dm_data, %struct.per_cpu_dm_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.net_dm_hw_entries*, %struct.net_dm_hw_entries** %3, align 8
  %31 = call i32 @swap(i32 %29, %struct.net_dm_hw_entries* %30)
  %32 = load %struct.per_cpu_dm_data*, %struct.per_cpu_dm_data** %2, align 8
  %33 = getelementptr inbounds %struct.per_cpu_dm_data, %struct.per_cpu_dm_data* %32, i32 0, i32 0
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load %struct.net_dm_hw_entries*, %struct.net_dm_hw_entries** %3, align 8
  ret %struct.net_dm_hw_entries* %36
}

declare dso_local %struct.net_dm_hw_entries* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.net_dm_hw_entries*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @swap(i32, %struct.net_dm_hw_entries*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
