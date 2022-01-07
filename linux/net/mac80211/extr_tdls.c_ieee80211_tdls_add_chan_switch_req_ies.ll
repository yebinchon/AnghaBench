; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tdls.c_ieee80211_tdls_add_chan_switch_req_ies.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tdls.c_ieee80211_tdls_add_chan_switch_req_ies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32 }
%struct.sk_buff = type { i64 }
%struct.cfg80211_chan_def = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ieee80211_tdls_data = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@ieee80211_tdls_add_chan_switch_req_ies.before_lnkie = internal constant [1 x i32] [i32 128], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, %struct.sk_buff*, i32*, i32, i32*, i64, i32, %struct.cfg80211_chan_def*)* @ieee80211_tdls_add_chan_switch_req_ies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_tdls_add_chan_switch_req_ies(%struct.ieee80211_sub_if_data* %0, %struct.sk_buff* %1, i32* %2, i32 %3, i32* %4, i64 %5, i32 %6, %struct.cfg80211_chan_def* %7) #0 {
  %9 = alloca %struct.ieee80211_sub_if_data*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.cfg80211_chan_def*, align 8
  %17 = alloca %struct.ieee80211_tdls_data*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %9, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  store %struct.cfg80211_chan_def* %7, %struct.cfg80211_chan_def** %16, align 8
  store i64 0, i64* %18, align 8
  %20 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %16, align 8
  %21 = icmp ne %struct.cfg80211_chan_def* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON_ONCE(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %8
  br label %83

27:                                               ; preds = %8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = bitcast i8* %31 to %struct.ieee80211_tdls_data*
  store %struct.ieee80211_tdls_data* %32, %struct.ieee80211_tdls_data** %17, align 8
  %33 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %16, align 8
  %34 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ieee80211_frequency_to_channel(i32 %37)
  %39 = load %struct.ieee80211_tdls_data*, %struct.ieee80211_tdls_data** %17, align 8
  %40 = getelementptr inbounds %struct.ieee80211_tdls_data, %struct.ieee80211_tdls_data* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  store i32 %38, i32* %42, align 4
  %43 = load i32, i32* %15, align 4
  %44 = load %struct.ieee80211_tdls_data*, %struct.ieee80211_tdls_data** %17, align 8
  %45 = getelementptr inbounds %struct.ieee80211_tdls_data, %struct.ieee80211_tdls_data* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32 %43, i32* %47, align 4
  %48 = load i64, i64* %14, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %27
  %51 = load i32*, i32** %13, align 8
  %52 = load i64, i64* %14, align 8
  %53 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([1 x i32], [1 x i32]* @ieee80211_tdls_add_chan_switch_req_ies.before_lnkie, i64 0, i64 0))
  %54 = load i64, i64* %18, align 8
  %55 = call i64 @ieee80211_ie_split(i32* %51, i64 %52, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @ieee80211_tdls_add_chan_switch_req_ies.before_lnkie, i64 0, i64 0), i32 %53, i64 %54)
  store i64 %55, i64* %19, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = load i64, i64* %18, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i64, i64* %19, align 8
  %61 = load i64, i64* %18, align 8
  %62 = sub i64 %60, %61
  %63 = call i32 @skb_put_data(%struct.sk_buff* %56, i32* %59, i64 %62)
  %64 = load i64, i64* %19, align 8
  store i64 %64, i64* %18, align 8
  br label %65

65:                                               ; preds = %50, %27
  %66 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @ieee80211_tdls_add_link_ie(%struct.ieee80211_sub_if_data* %66, %struct.sk_buff* %67, i32* %68, i32 %69)
  %71 = load i64, i64* %14, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %65
  %74 = load i64, i64* %14, align 8
  store i64 %74, i64* %19, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %76 = load i32*, i32** %13, align 8
  %77 = load i64, i64* %18, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i64, i64* %19, align 8
  %80 = load i64, i64* %18, align 8
  %81 = sub i64 %79, %80
  %82 = call i32 @skb_put_data(%struct.sk_buff* %75, i32* %78, i64 %81)
  br label %83

83:                                               ; preds = %26, %73, %65
  ret void
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @ieee80211_frequency_to_channel(i32) #1

declare dso_local i64 @ieee80211_ie_split(i32*, i64, i32*, i32, i64) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32*, i64) #1

declare dso_local i32 @ieee80211_tdls_add_link_ie(%struct.ieee80211_sub_if_data*, %struct.sk_buff*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
