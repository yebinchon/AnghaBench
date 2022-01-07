; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_drop_monitor.c_net_dm_hw_summary_probe.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_drop_monitor.c_net_dm_hw_summary_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_dm_hw_metadata = type { i32 }
%struct.net_dm_hw_entries = type { i32, %struct.net_dm_hw_entry* }
%struct.net_dm_hw_entry = type { i32, i32 }
%struct.per_cpu_dm_data = type { i32, %struct.TYPE_3__, %struct.net_dm_hw_entries* }
%struct.TYPE_3__ = type { i64 }

@dm_hw_cpu_data = common dso_local global i32 0, align 4
@NET_DM_MAX_HW_TRAP_NAME_LEN = common dso_local global i64 0, align 8
@dm_hit_limit = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@dm_delay = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.net_dm_hw_metadata*)* @net_dm_hw_summary_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @net_dm_hw_summary_probe(%struct.sk_buff* %0, %struct.net_dm_hw_metadata* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_dm_hw_metadata*, align 8
  %5 = alloca %struct.net_dm_hw_entries*, align 8
  %6 = alloca %struct.net_dm_hw_entry*, align 8
  %7 = alloca %struct.per_cpu_dm_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_dm_hw_metadata* %1, %struct.net_dm_hw_metadata** %4, align 8
  %10 = call %struct.per_cpu_dm_data* @this_cpu_ptr(i32* @dm_hw_cpu_data)
  store %struct.per_cpu_dm_data* %10, %struct.per_cpu_dm_data** %7, align 8
  %11 = load %struct.per_cpu_dm_data*, %struct.per_cpu_dm_data** %7, align 8
  %12 = getelementptr inbounds %struct.per_cpu_dm_data, %struct.per_cpu_dm_data* %11, i32 0, i32 0
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.per_cpu_dm_data*, %struct.per_cpu_dm_data** %7, align 8
  %16 = getelementptr inbounds %struct.per_cpu_dm_data, %struct.per_cpu_dm_data* %15, i32 0, i32 2
  %17 = load %struct.net_dm_hw_entries*, %struct.net_dm_hw_entries** %16, align 8
  store %struct.net_dm_hw_entries* %17, %struct.net_dm_hw_entries** %5, align 8
  %18 = load %struct.net_dm_hw_entries*, %struct.net_dm_hw_entries** %5, align 8
  %19 = icmp ne %struct.net_dm_hw_entries* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %106

21:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %51, %21
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.net_dm_hw_entries*, %struct.net_dm_hw_entries** %5, align 8
  %25 = getelementptr inbounds %struct.net_dm_hw_entries, %struct.net_dm_hw_entries* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %54

28:                                               ; preds = %22
  %29 = load %struct.net_dm_hw_entries*, %struct.net_dm_hw_entries** %5, align 8
  %30 = getelementptr inbounds %struct.net_dm_hw_entries, %struct.net_dm_hw_entries* %29, i32 0, i32 1
  %31 = load %struct.net_dm_hw_entry*, %struct.net_dm_hw_entry** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.net_dm_hw_entry, %struct.net_dm_hw_entry* %31, i64 %33
  store %struct.net_dm_hw_entry* %34, %struct.net_dm_hw_entry** %6, align 8
  %35 = load %struct.net_dm_hw_entry*, %struct.net_dm_hw_entry** %6, align 8
  %36 = getelementptr inbounds %struct.net_dm_hw_entry, %struct.net_dm_hw_entry* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.net_dm_hw_metadata*, %struct.net_dm_hw_metadata** %4, align 8
  %39 = getelementptr inbounds %struct.net_dm_hw_metadata, %struct.net_dm_hw_metadata* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* @NET_DM_MAX_HW_TRAP_NAME_LEN, align 8
  %42 = sub nsw i64 %41, 1
  %43 = call i32 @strncmp(i32 %37, i32 %40, i64 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %28
  %46 = load %struct.net_dm_hw_entry*, %struct.net_dm_hw_entry** %6, align 8
  %47 = getelementptr inbounds %struct.net_dm_hw_entry, %struct.net_dm_hw_entry* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  br label %106

50:                                               ; preds = %28
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %22

54:                                               ; preds = %22
  %55 = load %struct.net_dm_hw_entries*, %struct.net_dm_hw_entries** %5, align 8
  %56 = getelementptr inbounds %struct.net_dm_hw_entries, %struct.net_dm_hw_entries* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @dm_hit_limit, align 4
  %59 = icmp eq i32 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i64 @WARN_ON_ONCE(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %106

64:                                               ; preds = %54
  %65 = load %struct.net_dm_hw_entries*, %struct.net_dm_hw_entries** %5, align 8
  %66 = getelementptr inbounds %struct.net_dm_hw_entries, %struct.net_dm_hw_entries* %65, i32 0, i32 1
  %67 = load %struct.net_dm_hw_entry*, %struct.net_dm_hw_entry** %66, align 8
  %68 = load %struct.net_dm_hw_entries*, %struct.net_dm_hw_entries** %5, align 8
  %69 = getelementptr inbounds %struct.net_dm_hw_entries, %struct.net_dm_hw_entries* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.net_dm_hw_entry, %struct.net_dm_hw_entry* %67, i64 %71
  store %struct.net_dm_hw_entry* %72, %struct.net_dm_hw_entry** %6, align 8
  %73 = load %struct.net_dm_hw_entry*, %struct.net_dm_hw_entry** %6, align 8
  %74 = getelementptr inbounds %struct.net_dm_hw_entry, %struct.net_dm_hw_entry* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.net_dm_hw_metadata*, %struct.net_dm_hw_metadata** %4, align 8
  %77 = getelementptr inbounds %struct.net_dm_hw_metadata, %struct.net_dm_hw_metadata* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i64, i64* @NET_DM_MAX_HW_TRAP_NAME_LEN, align 8
  %80 = sub nsw i64 %79, 1
  %81 = call i32 @strlcpy(i32 %75, i32 %78, i64 %80)
  %82 = load %struct.net_dm_hw_entry*, %struct.net_dm_hw_entry** %6, align 8
  %83 = getelementptr inbounds %struct.net_dm_hw_entry, %struct.net_dm_hw_entry* %82, i32 0, i32 0
  store i32 1, i32* %83, align 4
  %84 = load %struct.net_dm_hw_entries*, %struct.net_dm_hw_entries** %5, align 8
  %85 = getelementptr inbounds %struct.net_dm_hw_entries, %struct.net_dm_hw_entries* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 8
  %88 = load %struct.per_cpu_dm_data*, %struct.per_cpu_dm_data** %7, align 8
  %89 = getelementptr inbounds %struct.per_cpu_dm_data, %struct.per_cpu_dm_data* %88, i32 0, i32 1
  %90 = call i32 @timer_pending(%struct.TYPE_3__* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %105, label %92

92:                                               ; preds = %64
  %93 = load i64, i64* @jiffies, align 8
  %94 = load i32, i32* @dm_delay, align 4
  %95 = load i32, i32* @HZ, align 4
  %96 = mul nsw i32 %94, %95
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %93, %97
  %99 = load %struct.per_cpu_dm_data*, %struct.per_cpu_dm_data** %7, align 8
  %100 = getelementptr inbounds %struct.per_cpu_dm_data, %struct.per_cpu_dm_data* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  store i64 %98, i64* %101, align 8
  %102 = load %struct.per_cpu_dm_data*, %struct.per_cpu_dm_data** %7, align 8
  %103 = getelementptr inbounds %struct.per_cpu_dm_data, %struct.per_cpu_dm_data* %102, i32 0, i32 1
  %104 = call i32 @add_timer(%struct.TYPE_3__* %103)
  br label %105

105:                                              ; preds = %92, %64
  br label %106

106:                                              ; preds = %105, %63, %45, %20
  %107 = load %struct.per_cpu_dm_data*, %struct.per_cpu_dm_data** %7, align 8
  %108 = getelementptr inbounds %struct.per_cpu_dm_data, %struct.per_cpu_dm_data* %107, i32 0, i32 0
  %109 = load i64, i64* %8, align 8
  %110 = call i32 @spin_unlock_irqrestore(i32* %108, i64 %109)
  ret void
}

declare dso_local %struct.per_cpu_dm_data* @this_cpu_ptr(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @strncmp(i32, i32, i64) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @strlcpy(i32, i32, i64) #1

declare dso_local i32 @timer_pending(%struct.TYPE_3__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
