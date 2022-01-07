; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_hwmp.c_mesh_nexthop_resolve.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_hwmp.c_mesh_nexthop_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_hdr = type { i32, i32* }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mesh_path = type { i32, i32 }

@IEEE80211_TX_CTRL_SKIP_MPATH_LOOKUP = common dso_local global i32 0, align 4
@MESH_PATH_RESOLVING = common dso_local global i32 0, align 4
@PREQ_Q_F_START = common dso_local global i32 0, align 4
@MESH_FRAME_QUEUE_LEN = common dso_local global i64 0, align 8
@IEEE80211_TX_INTFL_NEED_TXPROCESSING = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mesh_nexthop_resolve(%struct.ieee80211_sub_if_data* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ieee80211_hdr*, align 8
  %7 = alloca %struct.ieee80211_tx_info*, align 8
  %8 = alloca %struct.mesh_path*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %14, %struct.ieee80211_hdr** %6, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %15)
  store %struct.ieee80211_tx_info* %16, %struct.ieee80211_tx_info** %7, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  %17 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %18 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %10, align 8
  %20 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %21 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @ieee80211_is_qos_nullfunc(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %104

26:                                               ; preds = %2
  %27 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %28 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @IEEE80211_TX_CTRL_SKIP_MPATH_LOOKUP, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %104

35:                                               ; preds = %26
  %36 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = call i32 @mesh_nexthop_lookup(%struct.ieee80211_sub_if_data* %36, %struct.sk_buff* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %104

41:                                               ; preds = %35
  %42 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = call %struct.mesh_path* @mesh_path_lookup(%struct.ieee80211_sub_if_data* %42, i32* %43)
  store %struct.mesh_path* %44, %struct.mesh_path** %8, align 8
  %45 = load %struct.mesh_path*, %struct.mesh_path** %8, align 8
  %46 = icmp ne %struct.mesh_path* %45, null
  br i1 %46, label %61, label %47

47:                                               ; preds = %41
  %48 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = call %struct.mesh_path* @mesh_path_add(%struct.ieee80211_sub_if_data* %48, i32* %49)
  store %struct.mesh_path* %50, %struct.mesh_path** %8, align 8
  %51 = load %struct.mesh_path*, %struct.mesh_path** %8, align 8
  %52 = call i64 @IS_ERR(%struct.mesh_path* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = call i32 @mesh_path_discard_frame(%struct.ieee80211_sub_if_data* %55, %struct.sk_buff* %56)
  %58 = load %struct.mesh_path*, %struct.mesh_path** %8, align 8
  %59 = call i32 @PTR_ERR(%struct.mesh_path* %58)
  store i32 %59, i32* %3, align 4
  br label %104

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %60, %41
  %62 = load %struct.mesh_path*, %struct.mesh_path** %8, align 8
  %63 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @MESH_PATH_RESOLVING, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %61
  %69 = load %struct.mesh_path*, %struct.mesh_path** %8, align 8
  %70 = load i32, i32* @PREQ_Q_F_START, align 4
  %71 = call i32 @mesh_queue_preq(%struct.mesh_path* %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %61
  %73 = load %struct.mesh_path*, %struct.mesh_path** %8, align 8
  %74 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %73, i32 0, i32 1
  %75 = call i64 @skb_queue_len(i32* %74)
  %76 = load i64, i64* @MESH_FRAME_QUEUE_LEN, align 8
  %77 = icmp sge i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load %struct.mesh_path*, %struct.mesh_path** %8, align 8
  %80 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %79, i32 0, i32 1
  %81 = call %struct.sk_buff* @skb_dequeue(i32* %80)
  store %struct.sk_buff* %81, %struct.sk_buff** %9, align 8
  br label %82

82:                                               ; preds = %78, %72
  %83 = load i32, i32* @IEEE80211_TX_INTFL_NEED_TXPROCESSING, align 4
  %84 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %85 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  %88 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %90 = call i32 @ieee80211_set_qos_hdr(%struct.ieee80211_sub_if_data* %88, %struct.sk_buff* %89)
  %91 = load %struct.mesh_path*, %struct.mesh_path** %8, align 8
  %92 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %91, i32 0, i32 1
  %93 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %94 = call i32 @skb_queue_tail(i32* %92, %struct.sk_buff* %93)
  %95 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %96 = icmp ne %struct.sk_buff* %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %82
  %98 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %99 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %100 = call i32 @mesh_path_discard_frame(%struct.ieee80211_sub_if_data* %98, %struct.sk_buff* %99)
  br label %101

101:                                              ; preds = %97, %82
  %102 = load i32, i32* @ENOENT, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %101, %54, %40, %34, %25
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @ieee80211_is_qos_nullfunc(i32) #1

declare dso_local i32 @mesh_nexthop_lookup(%struct.ieee80211_sub_if_data*, %struct.sk_buff*) #1

declare dso_local %struct.mesh_path* @mesh_path_lookup(%struct.ieee80211_sub_if_data*, i32*) #1

declare dso_local %struct.mesh_path* @mesh_path_add(%struct.ieee80211_sub_if_data*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.mesh_path*) #1

declare dso_local i32 @mesh_path_discard_frame(%struct.ieee80211_sub_if_data*, %struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.mesh_path*) #1

declare dso_local i32 @mesh_queue_preq(%struct.mesh_path*, i32) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @ieee80211_set_qos_hdr(%struct.ieee80211_sub_if_data*, %struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
