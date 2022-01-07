; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_change_da.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_change_da.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.sta_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ethhdr = type { i32 }

@ETH_HLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.sta_info*)* @ieee80211_change_da to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_change_da(%struct.sk_buff* %0, %struct.sta_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sta_info*, align 8
  %6 = alloca %struct.ethhdr*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.sta_info* %1, %struct.sta_info** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = load i32, i32* @ETH_HLEN, align 4
  %10 = call i32 @skb_ensure_writable(%struct.sk_buff* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %30

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = bitcast i8* %20 to %struct.ethhdr*
  store %struct.ethhdr* %21, %struct.ethhdr** %6, align 8
  %22 = load %struct.ethhdr*, %struct.ethhdr** %6, align 8
  %23 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %26 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ether_addr_copy(i32 %24, i32 %28)
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %16, %14
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @skb_ensure_writable(%struct.sk_buff*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
