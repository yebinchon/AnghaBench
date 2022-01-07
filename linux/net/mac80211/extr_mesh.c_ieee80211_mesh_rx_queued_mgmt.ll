; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh.c_ieee80211_mesh_rx_queued_mgmt.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh.c_ieee80211_mesh_rx_queued_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.ieee80211_rx_status = type { i32 }
%struct.ieee80211_mgmt = type { i32 }

@IEEE80211_FCTL_STYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_mesh_rx_queued_mgmt(%struct.ieee80211_sub_if_data* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_rx_status*, align 8
  %6 = alloca %struct.ieee80211_mgmt*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %9 = call i32 @sdata_lock(%struct.ieee80211_sub_if_data* %8)
  %10 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %56

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff* %18)
  store %struct.ieee80211_rx_status* %19, %struct.ieee80211_rx_status** %5, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %23, %struct.ieee80211_mgmt** %6, align 8
  %24 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %6, align 8
  %25 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le16_to_cpu(i32 %26)
  %28 = load i32, i32* @IEEE80211_FCTL_STYPE, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  switch i32 %30, label %55 [
    i32 128, label %31
    i32 130, label %31
    i32 129, label %40
    i32 131, label %47
  ]

31:                                               ; preds = %17, %17
  %32 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %6, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %39 = call i32 @ieee80211_mesh_rx_bcn_presp(%struct.ieee80211_sub_if_data* %32, i32 %33, %struct.ieee80211_mgmt* %34, i32 %37, %struct.ieee80211_rx_status* %38)
  br label %55

40:                                               ; preds = %17
  %41 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %42 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %6, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @ieee80211_mesh_rx_probe_req(%struct.ieee80211_sub_if_data* %41, %struct.ieee80211_mgmt* %42, i32 %45)
  br label %55

47:                                               ; preds = %17
  %48 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %49 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %6, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %54 = call i32 @ieee80211_mesh_rx_mgmt_action(%struct.ieee80211_sub_if_data* %48, %struct.ieee80211_mgmt* %49, i32 %52, %struct.ieee80211_rx_status* %53)
  br label %55

55:                                               ; preds = %17, %47, %40, %31
  br label %56

56:                                               ; preds = %55, %16
  %57 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %58 = call i32 @sdata_unlock(%struct.ieee80211_sub_if_data* %57)
  ret void
}

declare dso_local i32 @sdata_lock(%struct.ieee80211_sub_if_data*) #1

declare dso_local %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ieee80211_mesh_rx_bcn_presp(%struct.ieee80211_sub_if_data*, i32, %struct.ieee80211_mgmt*, i32, %struct.ieee80211_rx_status*) #1

declare dso_local i32 @ieee80211_mesh_rx_probe_req(%struct.ieee80211_sub_if_data*, %struct.ieee80211_mgmt*, i32) #1

declare dso_local i32 @ieee80211_mesh_rx_mgmt_action(%struct.ieee80211_sub_if_data*, %struct.ieee80211_mgmt*, i32, %struct.ieee80211_rx_status*) #1

declare dso_local i32 @sdata_unlock(%struct.ieee80211_sub_if_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
