; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_debugfs_netdev.c_ieee80211_if_parse_tkip_mic_test.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_debugfs_netdev.c_ieee80211_if_parse_tkip_mic_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.ieee80211_local* }
%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32* }
%struct.ieee80211_local = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_hdr = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IEEE80211_FTYPE_DATA = common dso_local global i32 0, align 4
@IEEE80211_STYPE_DATA = common dso_local global i32 0, align 4
@IEEE80211_FCTL_FROMDS = common dso_local global i32 0, align 4
@IEEE80211_FCTL_TODS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IEEE80211_TX_INTFL_TKIP_MIC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_sub_if_data*, i8*, i32)* @ieee80211_if_parse_tkip_mic_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_if_parse_tkip_mic_test(%struct.ieee80211_sub_if_data* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_local*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.ieee80211_hdr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %16 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %15, i32 0, i32 2
  %17 = load %struct.ieee80211_local*, %struct.ieee80211_local** %16, align 8
  store %struct.ieee80211_local* %17, %struct.ieee80211_local** %8, align 8
  %18 = load i32, i32* @ETH_ALEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %9, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @mac_pton(i8* %22, i32* %21)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %163

28:                                               ; preds = %3
  %29 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %30 = call i32 @ieee80211_sdata_running(%struct.ieee80211_sub_if_data* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @ENOTCONN, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %163

35:                                               ; preds = %28
  %36 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %37 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 24
  %41 = add nsw i64 %40, 100
  %42 = call %struct.sk_buff* @dev_alloc_skb(i64 %41)
  store %struct.sk_buff* %42, %struct.sk_buff** %11, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %44 = icmp ne %struct.sk_buff* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %35
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %163

48:                                               ; preds = %35
  %49 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %50 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %51 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @skb_reserve(%struct.sk_buff* %49, i64 %53)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %56 = call %struct.ieee80211_hdr* @skb_put_zero(%struct.sk_buff* %55, i32 24)
  store %struct.ieee80211_hdr* %56, %struct.ieee80211_hdr** %12, align 8
  %57 = load i32, i32* @IEEE80211_FTYPE_DATA, align 4
  %58 = load i32, i32* @IEEE80211_STYPE_DATA, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @cpu_to_le16(i32 %59)
  store i32 %60, i32* %13, align 4
  %61 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %62 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  switch i32 %64, label %142 [
    i32 129, label %65
    i32 128, label %93
  ]

65:                                               ; preds = %48
  %66 = load i32, i32* @IEEE80211_FCTL_FROMDS, align 4
  %67 = call i32 @cpu_to_le16(i32 %66)
  %68 = load i32, i32* %13, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %13, align 4
  %70 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %71 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ETH_ALEN, align 4
  %74 = call i32 @memcpy(i32 %72, i32* %21, i32 %73)
  %75 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %76 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %79 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* @ETH_ALEN, align 4
  %83 = call i32 @memcpy(i32 %77, i32* %81, i32 %82)
  %84 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %85 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %88 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* @ETH_ALEN, align 4
  %92 = call i32 @memcpy(i32 %86, i32* %90, i32 %91)
  br label %147

93:                                               ; preds = %48
  %94 = load i32, i32* @IEEE80211_FCTL_TODS, align 4
  %95 = call i32 @cpu_to_le16(i32 %94)
  %96 = load i32, i32* %13, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %13, align 4
  %98 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %99 = call i32 @sdata_lock(%struct.ieee80211_sub_if_data* %98)
  %100 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %101 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = icmp ne %struct.TYPE_8__* %104, null
  br i1 %105, label %113, label %106

106:                                              ; preds = %93
  %107 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %108 = call i32 @sdata_unlock(%struct.ieee80211_sub_if_data* %107)
  %109 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %110 = call i32 @dev_kfree_skb(%struct.sk_buff* %109)
  %111 = load i32, i32* @ENOTCONN, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %163

113:                                              ; preds = %93
  %114 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %115 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %118 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* @ETH_ALEN, align 4
  %125 = call i32 @memcpy(i32 %116, i32* %123, i32 %124)
  %126 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %127 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %130 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* @ETH_ALEN, align 4
  %134 = call i32 @memcpy(i32 %128, i32* %132, i32 %133)
  %135 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %136 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @ETH_ALEN, align 4
  %139 = call i32 @memcpy(i32 %137, i32* %21, i32 %138)
  %140 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %141 = call i32 @sdata_unlock(%struct.ieee80211_sub_if_data* %140)
  br label %147

142:                                              ; preds = %48
  %143 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %144 = call i32 @dev_kfree_skb(%struct.sk_buff* %143)
  %145 = load i32, i32* @EOPNOTSUPP, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %163

147:                                              ; preds = %113, %65
  %148 = load i32, i32* %13, align 4
  %149 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %150 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 4
  %151 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %152 = call %struct.ieee80211_hdr* @skb_put_zero(%struct.sk_buff* %151, i32 50)
  %153 = load i32, i32* @IEEE80211_TX_INTFL_TKIP_MIC_FAILURE, align 4
  %154 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %155 = call %struct.TYPE_12__* @IEEE80211_SKB_CB(%struct.sk_buff* %154)
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %153
  store i32 %158, i32* %156, align 4
  %159 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %160 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %161 = call i32 @ieee80211_tx_skb(%struct.ieee80211_sub_if_data* %159, %struct.sk_buff* %160)
  %162 = load i32, i32* %7, align 4
  store i32 %162, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %163

163:                                              ; preds = %147, %142, %106, %45, %32, %25
  %164 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %164)
  %165 = load i32, i32* %4, align 4
  ret i32 %165
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mac_pton(i8*, i32*) #2

declare dso_local i32 @ieee80211_sdata_running(%struct.ieee80211_sub_if_data*) #2

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #2

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #2

declare dso_local %struct.ieee80211_hdr* @skb_put_zero(%struct.sk_buff*, i32) #2

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

declare dso_local i32 @sdata_lock(%struct.ieee80211_sub_if_data*) #2

declare dso_local i32 @sdata_unlock(%struct.ieee80211_sub_if_data*) #2

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #2

declare dso_local %struct.TYPE_12__* @IEEE80211_SKB_CB(%struct.sk_buff*) #2

declare dso_local i32 @ieee80211_tx_skb(%struct.ieee80211_sub_if_data*, %struct.sk_buff*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
