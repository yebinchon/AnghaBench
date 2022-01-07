; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tdls.c_ieee80211_tdls_add_ies.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tdls.c_ieee80211_tdls_add_ies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32 }
%struct.sk_buff = type { i32 }
%struct.cfg80211_chan_def = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, %struct.sk_buff*, i32*, i32, i32, i32, i32*, i64, i32, %struct.cfg80211_chan_def*)* @ieee80211_tdls_add_ies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_tdls_add_ies(%struct.ieee80211_sub_if_data* %0, %struct.sk_buff* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32* %6, i64 %7, i32 %8, %struct.cfg80211_chan_def* %9) #0 {
  %11 = alloca %struct.ieee80211_sub_if_data*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.cfg80211_chan_def*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %11, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32* %6, i32** %17, align 8
  store i64 %7, i64* %18, align 8
  store i32 %8, i32* %19, align 4
  store %struct.cfg80211_chan_def* %9, %struct.cfg80211_chan_def** %20, align 8
  %21 = load i32, i32* %14, align 4
  switch i32 %21, label %87 [
    i32 130, label %22
    i32 129, label %22
    i32 135, label %22
    i32 131, label %35
    i32 128, label %47
    i32 132, label %47
    i32 134, label %68
    i32 133, label %78
  ]

22:                                               ; preds = %10, %10, %10
  %23 = load i32, i32* %15, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %28 = load i32*, i32** %13, align 8
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %16, align 4
  %31 = load i32*, i32** %17, align 8
  %32 = load i64, i64* %18, align 8
  %33 = call i32 @ieee80211_tdls_add_setup_start_ies(%struct.ieee80211_sub_if_data* %26, %struct.sk_buff* %27, i32* %28, i32 %29, i32 %30, i32* %31, i64 %32)
  br label %34

34:                                               ; preds = %25, %22
  br label %87

35:                                               ; preds = %10
  %36 = load i32, i32* %15, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %41 = load i32*, i32** %13, align 8
  %42 = load i32, i32* %16, align 4
  %43 = load i32*, i32** %17, align 8
  %44 = load i64, i64* %18, align 8
  %45 = call i32 @ieee80211_tdls_add_setup_cfm_ies(%struct.ieee80211_sub_if_data* %39, %struct.sk_buff* %40, i32* %41, i32 %42, i32* %43, i64 %44)
  br label %46

46:                                               ; preds = %38, %35
  br label %87

47:                                               ; preds = %10, %10
  %48 = load i64, i64* %18, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %52 = load i32*, i32** %17, align 8
  %53 = load i64, i64* %18, align 8
  %54 = call i32 @skb_put_data(%struct.sk_buff* %51, i32* %52, i64 %53)
  br label %55

55:                                               ; preds = %50, %47
  %56 = load i32, i32* %15, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %14, align 4
  %60 = icmp eq i32 %59, 128
  br i1 %60, label %61, label %67

61:                                               ; preds = %58, %55
  %62 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %64 = load i32*, i32** %13, align 8
  %65 = load i32, i32* %16, align 4
  %66 = call i32 @ieee80211_tdls_add_link_ie(%struct.ieee80211_sub_if_data* %62, %struct.sk_buff* %63, i32* %64, i32 %65)
  br label %67

67:                                               ; preds = %61, %58
  br label %87

68:                                               ; preds = %10
  %69 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %71 = load i32*, i32** %13, align 8
  %72 = load i32, i32* %16, align 4
  %73 = load i32*, i32** %17, align 8
  %74 = load i64, i64* %18, align 8
  %75 = load i32, i32* %19, align 4
  %76 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %20, align 8
  %77 = call i32 @ieee80211_tdls_add_chan_switch_req_ies(%struct.ieee80211_sub_if_data* %69, %struct.sk_buff* %70, i32* %71, i32 %72, i32* %73, i64 %74, i32 %75, %struct.cfg80211_chan_def* %76)
  br label %87

78:                                               ; preds = %10
  %79 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %81 = load i32*, i32** %13, align 8
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %16, align 4
  %84 = load i32*, i32** %17, align 8
  %85 = load i64, i64* %18, align 8
  %86 = call i32 @ieee80211_tdls_add_chan_switch_resp_ies(%struct.ieee80211_sub_if_data* %79, %struct.sk_buff* %80, i32* %81, i32 %82, i32 %83, i32* %84, i64 %85)
  br label %87

87:                                               ; preds = %10, %78, %68, %67, %46, %34
  ret void
}

declare dso_local i32 @ieee80211_tdls_add_setup_start_ies(%struct.ieee80211_sub_if_data*, %struct.sk_buff*, i32*, i32, i32, i32*, i64) #1

declare dso_local i32 @ieee80211_tdls_add_setup_cfm_ies(%struct.ieee80211_sub_if_data*, %struct.sk_buff*, i32*, i32, i32*, i64) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32*, i64) #1

declare dso_local i32 @ieee80211_tdls_add_link_ie(%struct.ieee80211_sub_if_data*, %struct.sk_buff*, i32*, i32) #1

declare dso_local i32 @ieee80211_tdls_add_chan_switch_req_ies(%struct.ieee80211_sub_if_data*, %struct.sk_buff*, i32*, i32, i32*, i64, i32, %struct.cfg80211_chan_def*) #1

declare dso_local i32 @ieee80211_tdls_add_chan_switch_resp_ies(%struct.ieee80211_sub_if_data*, %struct.sk_buff*, i32*, i32, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
