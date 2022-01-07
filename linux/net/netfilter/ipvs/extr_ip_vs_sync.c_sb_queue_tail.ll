; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_sync.c_sb_queue_tail.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_sync.c_sb_queue_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netns_ipvs = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ipvs_master_sync_state = type { i64, i64, i32, i32, %struct.ip_vs_sync_buff* }
%struct.ip_vs_sync_buff = type { i32 }

@IP_VS_STATE_MASTER = common dso_local global i32 0, align 4
@IPVS_SYNC_SEND_DELAY = common dso_local global i32 0, align 4
@IPVS_SYNC_WAKEUP_RATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netns_ipvs*, %struct.ipvs_master_sync_state*)* @sb_queue_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sb_queue_tail(%struct.netns_ipvs* %0, %struct.ipvs_master_sync_state* %1) #0 {
  %3 = alloca %struct.netns_ipvs*, align 8
  %4 = alloca %struct.ipvs_master_sync_state*, align 8
  %5 = alloca %struct.ip_vs_sync_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.netns_ipvs* %0, %struct.netns_ipvs** %3, align 8
  store %struct.ipvs_master_sync_state* %1, %struct.ipvs_master_sync_state** %4, align 8
  %7 = load %struct.ipvs_master_sync_state*, %struct.ipvs_master_sync_state** %4, align 8
  %8 = getelementptr inbounds %struct.ipvs_master_sync_state, %struct.ipvs_master_sync_state* %7, i32 0, i32 4
  %9 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %8, align 8
  store %struct.ip_vs_sync_buff* %9, %struct.ip_vs_sync_buff** %5, align 8
  %10 = load %struct.netns_ipvs*, %struct.netns_ipvs** %3, align 8
  %11 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %10, i32 0, i32 2
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.netns_ipvs*, %struct.netns_ipvs** %3, align 8
  %14 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @IP_VS_STATE_MASTER, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %72

19:                                               ; preds = %2
  %20 = load %struct.ipvs_master_sync_state*, %struct.ipvs_master_sync_state** %4, align 8
  %21 = getelementptr inbounds %struct.ipvs_master_sync_state, %struct.ipvs_master_sync_state* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.netns_ipvs*, %struct.netns_ipvs** %3, align 8
  %24 = call i64 @sysctl_sync_qlen_max(%struct.netns_ipvs* %23)
  %25 = icmp slt i64 %22, %24
  br i1 %25, label %26, label %72

26:                                               ; preds = %19
  %27 = load %struct.ipvs_master_sync_state*, %struct.ipvs_master_sync_state** %4, align 8
  %28 = getelementptr inbounds %struct.ipvs_master_sync_state, %struct.ipvs_master_sync_state* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = load %struct.ipvs_master_sync_state*, %struct.ipvs_master_sync_state** %4, align 8
  %33 = getelementptr inbounds %struct.ipvs_master_sync_state, %struct.ipvs_master_sync_state* %32, i32 0, i32 3
  %34 = load i32, i32* @IPVS_SYNC_SEND_DELAY, align 4
  %35 = call i32 @max(i32 %34, i32 1)
  %36 = call i32 @schedule_delayed_work(i32* %33, i32 %35)
  br label %37

37:                                               ; preds = %31, %26
  %38 = load %struct.ipvs_master_sync_state*, %struct.ipvs_master_sync_state** %4, align 8
  %39 = getelementptr inbounds %struct.ipvs_master_sync_state, %struct.ipvs_master_sync_state* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %39, align 8
  %42 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %5, align 8
  %43 = getelementptr inbounds %struct.ip_vs_sync_buff, %struct.ip_vs_sync_buff* %42, i32 0, i32 0
  %44 = load %struct.ipvs_master_sync_state*, %struct.ipvs_master_sync_state** %4, align 8
  %45 = getelementptr inbounds %struct.ipvs_master_sync_state, %struct.ipvs_master_sync_state* %44, i32 0, i32 2
  %46 = call i32 @list_add_tail(i32* %43, i32* %45)
  %47 = load %struct.ipvs_master_sync_state*, %struct.ipvs_master_sync_state** %4, align 8
  %48 = getelementptr inbounds %struct.ipvs_master_sync_state, %struct.ipvs_master_sync_state* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %48, align 8
  %51 = load i64, i64* @IPVS_SYNC_WAKEUP_RATE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %71

53:                                               ; preds = %37
  %54 = load %struct.ipvs_master_sync_state*, %struct.ipvs_master_sync_state** %4, align 8
  %55 = load %struct.netns_ipvs*, %struct.netns_ipvs** %3, align 8
  %56 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = sub i64 0, %58
  %60 = getelementptr inbounds %struct.ipvs_master_sync_state, %struct.ipvs_master_sync_state* %54, i64 %59
  %61 = ptrtoint %struct.ipvs_master_sync_state* %60 to i32
  store i32 %61, i32* %6, align 4
  %62 = load %struct.netns_ipvs*, %struct.netns_ipvs** %3, align 8
  %63 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %62, i32 0, i32 3
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @wake_up_process(i32 %69)
  br label %71

71:                                               ; preds = %53, %37
  br label %75

72:                                               ; preds = %19, %2
  %73 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %5, align 8
  %74 = call i32 @ip_vs_sync_buff_release(%struct.ip_vs_sync_buff* %73)
  br label %75

75:                                               ; preds = %72, %71
  %76 = load %struct.netns_ipvs*, %struct.netns_ipvs** %3, align 8
  %77 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %76, i32 0, i32 2
  %78 = call i32 @spin_unlock(i32* %77)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @sysctl_sync_qlen_max(%struct.netns_ipvs*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @wake_up_process(i32) #1

declare dso_local i32 @ip_vs_sync_buff_release(%struct.ip_vs_sync_buff*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
