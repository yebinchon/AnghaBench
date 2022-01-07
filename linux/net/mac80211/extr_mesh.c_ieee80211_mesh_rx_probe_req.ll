; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh.c_ieee80211_mesh_rx_probe_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh.c_ieee80211_mesh_rx_probe_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_9__, %struct.TYPE_6__, %struct.ieee80211_local* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { i64, i32, i32 }
%struct.ieee80211_local = type { i64 }
%struct.ieee80211_mgmt = type { i32, i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.sk_buff = type { i64 }
%struct.beacon_data = type { i64, i32, i64, i32 }
%struct.ieee802_11_elems = type { i64, i64, i32 }
%struct.TYPE_10__ = type { i32 }

@IEEE80211_FTYPE_MGMT = common dso_local global i32 0, align 4
@IEEE80211_STYPE_PROBE_RESP = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@IEEE80211_TX_INTFL_DONT_ENCRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, %struct.ieee80211_mgmt*, i64)* @ieee80211_mesh_rx_probe_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_mesh_rx_probe_req(%struct.ieee80211_sub_if_data* %0, %struct.ieee80211_mgmt* %1, i64 %2) #0 {
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.ieee80211_mgmt*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ieee80211_local*, align 8
  %8 = alloca %struct.ieee80211_if_mesh*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.beacon_data*, align 8
  %11 = alloca %struct.ieee80211_mgmt*, align 8
  %12 = alloca %struct.ieee802_11_elems, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.ieee80211_mgmt* %1, %struct.ieee80211_mgmt** %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %16 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %15, i32 0, i32 2
  %17 = load %struct.ieee80211_local*, %struct.ieee80211_local** %16, align 8
  store %struct.ieee80211_local* %17, %struct.ieee80211_local** %7, align 8
  %18 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %19 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store %struct.ieee80211_if_mesh* %20, %struct.ieee80211_if_mesh** %8, align 8
  %21 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %22 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %14, align 8
  %26 = load i32*, i32** %14, align 8
  %27 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %28 = bitcast %struct.ieee80211_mgmt* %27 to i32*
  %29 = ptrtoint i32* %26 to i64
  %30 = ptrtoint i32* %28 to i64
  %31 = sub i64 %29, %30
  %32 = sdiv exact i64 %31, 4
  store i64 %32, i64* %13, align 8
  %33 = load i64, i64* %13, align 8
  %34 = load i64, i64* %6, align 8
  %35 = icmp ugt i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %3
  br label %170

37:                                               ; preds = %3
  %38 = load i32*, i32** %14, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %13, align 8
  %41 = sub i64 %39, %40
  %42 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %43 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ieee802_11_parse_elems(i32* %38, i64 %41, i32 0, %struct.ieee802_11_elems* %12, i32 %44, i32* null)
  %46 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %12, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %37
  br label %170

50:                                               ; preds = %37
  %51 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %52 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %55 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @ether_addr_equal(i32 %53, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %50
  %61 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %62 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @is_broadcast_ether_addr(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %60, %50
  %67 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %12, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66, %60
  br label %170

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %12, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %94

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %12, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %8, align 8
  %79 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %77, %80
  br i1 %81, label %93, label %82

82:                                               ; preds = %75
  %83 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %12, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %8, align 8
  %86 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %8, align 8
  %89 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i64 @memcmp(i32 %84, i32 %87, i64 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %82, %75
  br label %170

94:                                               ; preds = %82, %71
  %95 = call i32 (...) @rcu_read_lock()
  %96 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %8, align 8
  %97 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call %struct.beacon_data* @rcu_dereference(i32 %98)
  store %struct.beacon_data* %99, %struct.beacon_data** %10, align 8
  %100 = load %struct.beacon_data*, %struct.beacon_data** %10, align 8
  %101 = icmp ne %struct.beacon_data* %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %94
  br label %168

103:                                              ; preds = %94
  %104 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %105 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.beacon_data*, %struct.beacon_data** %10, align 8
  %108 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %106, %109
  %111 = load %struct.beacon_data*, %struct.beacon_data** %10, align 8
  %112 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %110, %113
  %115 = call %struct.sk_buff* @dev_alloc_skb(i64 %114)
  store %struct.sk_buff* %115, %struct.sk_buff** %9, align 8
  %116 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %117 = icmp ne %struct.sk_buff* %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %103
  br label %168

119:                                              ; preds = %103
  %120 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %121 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %122 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @skb_reserve(%struct.sk_buff* %120, i64 %123)
  %125 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %126 = load %struct.beacon_data*, %struct.beacon_data** %10, align 8
  %127 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.beacon_data*, %struct.beacon_data** %10, align 8
  %130 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @skb_put_data(%struct.sk_buff* %125, i32 %128, i64 %131)
  %133 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %134 = load %struct.beacon_data*, %struct.beacon_data** %10, align 8
  %135 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.beacon_data*, %struct.beacon_data** %10, align 8
  %138 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @skb_put_data(%struct.sk_buff* %133, i32 %136, i64 %139)
  %141 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %142 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = inttoptr i64 %143 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %144, %struct.ieee80211_mgmt** %11, align 8
  %145 = load i32, i32* @IEEE80211_FTYPE_MGMT, align 4
  %146 = load i32, i32* @IEEE80211_STYPE_PROBE_RESP, align 4
  %147 = or i32 %145, %146
  %148 = call i32 @cpu_to_le16(i32 %147)
  %149 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %11, align 8
  %150 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 8
  %151 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %11, align 8
  %152 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %155 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @ETH_ALEN, align 4
  %158 = call i32 @memcpy(i32 %153, i32 %156, i32 %157)
  %159 = load i32, i32* @IEEE80211_TX_INTFL_DONT_ENCRYPT, align 4
  %160 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %161 = call %struct.TYPE_10__* @IEEE80211_SKB_CB(%struct.sk_buff* %160)
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %159
  store i32 %164, i32* %162, align 4
  %165 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %166 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %167 = call i32 @ieee80211_tx_skb(%struct.ieee80211_sub_if_data* %165, %struct.sk_buff* %166)
  br label %168

168:                                              ; preds = %119, %118, %102
  %169 = call i32 (...) @rcu_read_unlock()
  br label %170

170:                                              ; preds = %168, %93, %70, %49, %36
  ret void
}

declare dso_local i32 @ieee802_11_parse_elems(i32*, i64, i32, %struct.ieee802_11_elems*, i32, i32*) #1

declare dso_local i32 @ether_addr_equal(i32, i32) #1

declare dso_local i32 @is_broadcast_ether_addr(i32) #1

declare dso_local i64 @memcmp(i32, i32, i64) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.beacon_data* @rcu_dereference(i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.TYPE_10__* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_tx_skb(%struct.ieee80211_sub_if_data*, %struct.sk_buff*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
