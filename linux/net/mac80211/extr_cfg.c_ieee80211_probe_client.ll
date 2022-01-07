; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_ieee80211_probe_client.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_ieee80211_probe_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_10__, %struct.ieee80211_local* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.ieee80211_local = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.ieee80211_qos_hdr = type { i8*, i64, i32, i32, i32, i64, i8* }
%struct.sk_buff = type { i32, %struct.net_device* }
%struct.ieee80211_tx_info = type { i32, i32 }
%struct.sta_info = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.ieee80211_chanctx_conf = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOLINK = common dso_local global i32 0, align 4
@IEEE80211_FTYPE_DATA = common dso_local global i32 0, align 4
@IEEE80211_STYPE_QOS_NULLFUNC = common dso_local global i32 0, align 4
@IEEE80211_FCTL_FROMDS = common dso_local global i32 0, align 4
@IEEE80211_STYPE_NULLFUNC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_REQ_TX_STATUS = common dso_local global i32 0, align 4
@IEEE80211_TX_INTFL_NL80211_FRAME_TX = common dso_local global i32 0, align 4
@IEEE80211_AC_VO = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32*, i32*)* @ieee80211_probe_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_probe_client(%struct.wiphy* %0, %struct.net_device* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ieee80211_sub_if_data*, align 8
  %10 = alloca %struct.ieee80211_local*, align 8
  %11 = alloca %struct.ieee80211_qos_hdr*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ieee80211_tx_info*, align 8
  %17 = alloca %struct.sta_info*, align 8
  %18 = alloca %struct.ieee80211_chanctx_conf*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %21 = load %struct.net_device*, %struct.net_device** %6, align 8
  %22 = call %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device* %21)
  store %struct.ieee80211_sub_if_data* %22, %struct.ieee80211_sub_if_data** %9, align 8
  %23 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %24 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %23, i32 0, i32 1
  %25 = load %struct.ieee80211_local*, %struct.ieee80211_local** %24, align 8
  store %struct.ieee80211_local* %25, %struct.ieee80211_local** %10, align 8
  store i32 48, i32* %13, align 4
  %26 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  %27 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = call i32 (...) @rcu_read_lock()
  %30 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %31 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.ieee80211_chanctx_conf* @rcu_dereference(i32 %33)
  store %struct.ieee80211_chanctx_conf* %34, %struct.ieee80211_chanctx_conf** %18, align 8
  %35 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %18, align 8
  %36 = icmp ne %struct.ieee80211_chanctx_conf* %35, null
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i64 @WARN_ON(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %4
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %20, align 4
  br label %185

44:                                               ; preds = %4
  %45 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %18, align 8
  %46 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %19, align 4
  %51 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = call %struct.sta_info* @sta_info_get_bss(%struct.ieee80211_sub_if_data* %51, i32* %52)
  store %struct.sta_info* %53, %struct.sta_info** %17, align 8
  %54 = load %struct.sta_info*, %struct.sta_info** %17, align 8
  %55 = icmp ne %struct.sta_info* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %44
  %57 = load %struct.sta_info*, %struct.sta_info** %17, align 8
  %58 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %15, align 4
  br label %64

61:                                               ; preds = %44
  %62 = load i32, i32* @ENOLINK, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %20, align 4
  br label %185

64:                                               ; preds = %56
  %65 = load i32, i32* %15, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load i32, i32* @IEEE80211_FTYPE_DATA, align 4
  %69 = load i32, i32* @IEEE80211_STYPE_QOS_NULLFUNC, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @IEEE80211_FCTL_FROMDS, align 4
  %72 = or i32 %70, %71
  %73 = call i8* @cpu_to_le16(i32 %72)
  store i8* %73, i8** %14, align 8
  br label %83

74:                                               ; preds = %64
  %75 = load i32, i32* %13, align 4
  %76 = sub nsw i32 %75, 2
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* @IEEE80211_FTYPE_DATA, align 4
  %78 = load i32, i32* @IEEE80211_STYPE_NULLFUNC, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @IEEE80211_FCTL_FROMDS, align 4
  %81 = or i32 %79, %80
  %82 = call i8* @cpu_to_le16(i32 %81)
  store i8* %82, i8** %14, align 8
  br label %83

83:                                               ; preds = %74, %67
  %84 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  %85 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %87, %89
  %91 = call %struct.sk_buff* @dev_alloc_skb(i64 %90)
  store %struct.sk_buff* %91, %struct.sk_buff** %12, align 8
  %92 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %93 = icmp ne %struct.sk_buff* %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %83
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %20, align 4
  br label %185

97:                                               ; preds = %83
  %98 = load %struct.net_device*, %struct.net_device** %6, align 8
  %99 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %100 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %99, i32 0, i32 1
  store %struct.net_device* %98, %struct.net_device** %100, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %102 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  %103 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @skb_reserve(%struct.sk_buff* %101, i64 %105)
  %107 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %108 = load i32, i32* %13, align 4
  %109 = call %struct.ieee80211_qos_hdr* @skb_put(%struct.sk_buff* %107, i32 %108)
  store %struct.ieee80211_qos_hdr* %109, %struct.ieee80211_qos_hdr** %11, align 8
  %110 = load i8*, i8** %14, align 8
  %111 = load %struct.ieee80211_qos_hdr*, %struct.ieee80211_qos_hdr** %11, align 8
  %112 = getelementptr inbounds %struct.ieee80211_qos_hdr, %struct.ieee80211_qos_hdr* %111, i32 0, i32 6
  store i8* %110, i8** %112, align 8
  %113 = load %struct.ieee80211_qos_hdr*, %struct.ieee80211_qos_hdr** %11, align 8
  %114 = getelementptr inbounds %struct.ieee80211_qos_hdr, %struct.ieee80211_qos_hdr* %113, i32 0, i32 5
  store i64 0, i64* %114, align 8
  %115 = load %struct.ieee80211_qos_hdr*, %struct.ieee80211_qos_hdr** %11, align 8
  %116 = getelementptr inbounds %struct.ieee80211_qos_hdr, %struct.ieee80211_qos_hdr* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.sta_info*, %struct.sta_info** %17, align 8
  %119 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @ETH_ALEN, align 4
  %123 = call i32 @memcpy(i32 %117, i32 %121, i32 %122)
  %124 = load %struct.ieee80211_qos_hdr*, %struct.ieee80211_qos_hdr** %11, align 8
  %125 = getelementptr inbounds %struct.ieee80211_qos_hdr, %struct.ieee80211_qos_hdr* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %128 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @ETH_ALEN, align 4
  %132 = call i32 @memcpy(i32 %126, i32 %130, i32 %131)
  %133 = load %struct.ieee80211_qos_hdr*, %struct.ieee80211_qos_hdr** %11, align 8
  %134 = getelementptr inbounds %struct.ieee80211_qos_hdr, %struct.ieee80211_qos_hdr* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %137 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @ETH_ALEN, align 4
  %141 = call i32 @memcpy(i32 %135, i32 %139, i32 %140)
  %142 = load %struct.ieee80211_qos_hdr*, %struct.ieee80211_qos_hdr** %11, align 8
  %143 = getelementptr inbounds %struct.ieee80211_qos_hdr, %struct.ieee80211_qos_hdr* %142, i32 0, i32 1
  store i64 0, i64* %143, align 8
  %144 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %145 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %144)
  store %struct.ieee80211_tx_info* %145, %struct.ieee80211_tx_info** %16, align 8
  %146 = load i32, i32* @IEEE80211_TX_CTL_REQ_TX_STATUS, align 4
  %147 = load i32, i32* @IEEE80211_TX_INTFL_NL80211_FRAME_TX, align 4
  %148 = or i32 %146, %147
  %149 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %16, align 8
  %150 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 4
  %153 = load i32, i32* %19, align 4
  %154 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %16, align 8
  %155 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 4
  %156 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %157 = load i32, i32* @IEEE80211_AC_VO, align 4
  %158 = call i32 @skb_set_queue_mapping(%struct.sk_buff* %156, i32 %157)
  %159 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %160 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %159, i32 0, i32 0
  store i32 7, i32* %160, align 8
  %161 = load i32, i32* %15, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %97
  %164 = call i8* @cpu_to_le16(i32 7)
  %165 = load %struct.ieee80211_qos_hdr*, %struct.ieee80211_qos_hdr** %11, align 8
  %166 = getelementptr inbounds %struct.ieee80211_qos_hdr, %struct.ieee80211_qos_hdr* %165, i32 0, i32 0
  store i8* %164, i8** %166, align 8
  br label %167

167:                                              ; preds = %163, %97
  %168 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  %169 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %170 = load i32*, i32** %8, align 8
  %171 = load i32, i32* @GFP_ATOMIC, align 4
  %172 = call i32 @ieee80211_attach_ack_skb(%struct.ieee80211_local* %168, %struct.sk_buff* %169, i32* %170, i32 %171)
  store i32 %172, i32* %20, align 4
  %173 = load i32, i32* %20, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %167
  %176 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %177 = call i32 @kfree_skb(%struct.sk_buff* %176)
  br label %185

178:                                              ; preds = %167
  %179 = call i32 (...) @local_bh_disable()
  %180 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %181 = load %struct.sta_info*, %struct.sta_info** %17, align 8
  %182 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %183 = call i32 @ieee80211_xmit(%struct.ieee80211_sub_if_data* %180, %struct.sta_info* %181, %struct.sk_buff* %182, i32 0)
  %184 = call i32 (...) @local_bh_enable()
  store i32 0, i32* %20, align 4
  br label %185

185:                                              ; preds = %178, %175, %94, %61, %41
  %186 = call i32 (...) @rcu_read_unlock()
  %187 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  %188 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %187, i32 0, i32 0
  %189 = call i32 @mutex_unlock(i32* %188)
  %190 = load i32, i32* %20, align 4
  ret i32 %190
}

declare dso_local %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_chanctx_conf* @rcu_dereference(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.sta_info* @sta_info_get_bss(%struct.ieee80211_sub_if_data*, i32*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local %struct.ieee80211_qos_hdr* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_queue_mapping(%struct.sk_buff*, i32) #1

declare dso_local i32 @ieee80211_attach_ack_skb(%struct.ieee80211_local*, %struct.sk_buff*, i32*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @ieee80211_xmit(%struct.ieee80211_sub_if_data*, %struct.sta_info*, %struct.sk_buff*, i32) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
