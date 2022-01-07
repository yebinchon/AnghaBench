; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_fragment.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_tx_data = type { %struct.TYPE_2__*, i32, %struct.ieee80211_local* }
%struct.TYPE_2__ = type { i64 }
%struct.ieee80211_local = type { i64 }
%struct.sk_buff = type { i32, i64, i32, i32, i32 }
%struct.ieee80211_tx_info = type { i32 }

@FCS_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_ENCRYPT_TAILROOM = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_CLEAR_PS_FILT = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_FIRST_FRAGMENT = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_MORE_FRAMES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_tx_data*, %struct.sk_buff*, i32, i32)* @ieee80211_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_fragment(%struct.ieee80211_tx_data* %0, %struct.sk_buff* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_tx_data*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_local*, align 8
  %11 = alloca %struct.ieee80211_tx_info*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ieee80211_tx_data* %0, %struct.ieee80211_tx_data** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %6, align 8
  %18 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %17, i32 0, i32 2
  %19 = load %struct.ieee80211_local*, %struct.ieee80211_local** %18, align 8
  store %struct.ieee80211_local* %19, %struct.ieee80211_local** %10, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %8, align 4
  %22 = sub nsw i32 %20, %21
  %23 = load i32, i32* @FCS_LEN, align 4
  %24 = sub nsw i32 %22, %23
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %13, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %14, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sub nsw i32 %30, %31
  %33 = load i32, i32* %13, align 4
  %34 = sub nsw i32 %32, %33
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %15, align 4
  %36 = icmp slt i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i64 @WARN_ON(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %4
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %157

43:                                               ; preds = %4
  br label %44

44:                                               ; preds = %119, %43
  %45 = load i32, i32* %15, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %151

47:                                               ; preds = %44
  %48 = load i32, i32* %13, align 4
  store i32 %48, i32* %16, align 4
  %49 = load i32, i32* %16, align 4
  %50 = load i32, i32* %15, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %15, align 4
  store i32 %53, i32* %16, align 4
  br label %54

54:                                               ; preds = %52, %47
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* %15, align 4
  %57 = sub nsw i32 %56, %55
  store i32 %57, i32* %15, align 4
  %58 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  %59 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %60, %62
  %64 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %6, align 8
  %65 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %63, %68
  %70 = load i64, i64* @IEEE80211_ENCRYPT_TAILROOM, align 8
  %71 = add nsw i64 %69, %70
  %72 = call %struct.sk_buff* @dev_alloc_skb(i64 %71)
  store %struct.sk_buff* %72, %struct.sk_buff** %12, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %74 = icmp ne %struct.sk_buff* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %54
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %157

78:                                               ; preds = %54
  %79 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %6, align 8
  %80 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %79, i32 0, i32 1
  %81 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %82 = call i32 @__skb_queue_tail(i32* %80, %struct.sk_buff* %81)
  %83 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %84 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  %85 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %6, align 8
  %88 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %86, %91
  %93 = call i32 @skb_reserve(%struct.sk_buff* %83, i64 %92)
  %94 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %98 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @memcpy(i32 %96, i32 %99, i32 4)
  %101 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %102 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %101)
  store %struct.ieee80211_tx_info* %102, %struct.ieee80211_tx_info** %11, align 8
  %103 = load i32, i32* @IEEE80211_TX_CTL_CLEAR_PS_FILT, align 4
  %104 = load i32, i32* @IEEE80211_TX_CTL_FIRST_FRAGMENT, align 4
  %105 = or i32 %103, %104
  %106 = xor i32 %105, -1
  %107 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %108 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, %106
  store i32 %110, i32* %108, align 4
  %111 = load i32, i32* %15, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %78
  %114 = load i32, i32* @IEEE80211_TX_CTL_MORE_FRAMES, align 4
  %115 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %116 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %113, %78
  %120 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %121 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %122 = call i32 @skb_copy_queue_mapping(%struct.sk_buff* %120, %struct.sk_buff* %121)
  %123 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %124 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %127 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %126, i32 0, i32 3
  store i32 %125, i32* %127, align 4
  %128 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %129 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %132 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 8
  %133 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %134 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %135 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i32, i32* %8, align 4
  %138 = call i32 @skb_put_data(%struct.sk_buff* %133, i64 %136, i32 %137)
  %139 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %140 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %141 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i32, i32* %14, align 4
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %142, %144
  %146 = load i32, i32* %16, align 4
  %147 = call i32 @skb_put_data(%struct.sk_buff* %139, i64 %145, i32 %146)
  %148 = load i32, i32* %16, align 4
  %149 = load i32, i32* %14, align 4
  %150 = add nsw i32 %149, %148
  store i32 %150, i32* %14, align 4
  br label %44

151:                                              ; preds = %44
  %152 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* %13, align 4
  %155 = add nsw i32 %153, %154
  %156 = call i32 @skb_trim(%struct.sk_buff* %152, i32 %155)
  store i32 0, i32* %5, align 4
  br label %157

157:                                              ; preds = %151, %75, %40
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @__skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @skb_copy_queue_mapping(%struct.sk_buff*, %struct.sk_buff*) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i64, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
