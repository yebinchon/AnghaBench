; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_build_data_template.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_build_data_template.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_tx_data = type { %struct.sk_buff*, i32, %struct.ieee80211_sub_if_data*, i32 }
%struct.sta_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@TX_CONTINUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @ieee80211_build_data_template(%struct.ieee80211_sub_if_data* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_hdr*, align 8
  %9 = alloca %struct.ieee80211_tx_data, align 8
  %10 = alloca %struct.sta_info*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %9, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %11, align 8
  %12 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %9, i32 0, i32 1
  store i32 0, i32* %12, align 8
  %13 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %9, i32 0, i32 2
  %14 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  store %struct.ieee80211_sub_if_data* %14, %struct.ieee80211_sub_if_data** %13, align 8
  %15 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %9, i32 0, i32 3
  %16 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %17 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %15, align 8
  %19 = call i32 (...) @rcu_read_lock()
  %20 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = call i64 @ieee80211_lookup_ra_sta(%struct.ieee80211_sub_if_data* %20, %struct.sk_buff* %21, %struct.sta_info** %10)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = call i32 @kfree_skb(%struct.sk_buff* %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.sk_buff* @ERR_PTR(i32 %28)
  store %struct.sk_buff* %29, %struct.sk_buff** %6, align 8
  br label %65

30:                                               ; preds = %3
  %31 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %35 = call %struct.sk_buff* @ieee80211_build_hdr(%struct.ieee80211_sub_if_data* %31, %struct.sk_buff* %32, i32 %33, %struct.sta_info* %34, i32 0)
  store %struct.sk_buff* %35, %struct.sk_buff** %6, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = call i64 @IS_ERR(%struct.sk_buff* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %65

40:                                               ; preds = %30
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = bitcast i8* %44 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %45, %struct.ieee80211_hdr** %8, align 8
  %46 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %47 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %48 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @sta_info_get(%struct.ieee80211_sub_if_data* %46, i32 %49)
  %51 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %9, i32 0, i32 1
  store i32 %50, i32* %51, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %53 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %9, i32 0, i32 0
  store %struct.sk_buff* %52, %struct.sk_buff** %53, align 8
  %54 = call i64 @ieee80211_tx_h_select_key(%struct.ieee80211_tx_data* %9)
  %55 = load i64, i64* @TX_CONTINUE, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %40
  %58 = call i32 (...) @rcu_read_unlock()
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = call i32 @kfree_skb(%struct.sk_buff* %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  %63 = call %struct.sk_buff* @ERR_PTR(i32 %62)
  store %struct.sk_buff* %63, %struct.sk_buff** %4, align 8
  br label %68

64:                                               ; preds = %40
  br label %65

65:                                               ; preds = %64, %39, %24
  %66 = call i32 (...) @rcu_read_unlock()
  %67 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %67, %struct.sk_buff** %4, align 8
  br label %68

68:                                               ; preds = %65, %57
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %69
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64 @ieee80211_lookup_ra_sta(%struct.ieee80211_sub_if_data*, %struct.sk_buff*, %struct.sta_info**) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local %struct.sk_buff* @ieee80211_build_hdr(%struct.ieee80211_sub_if_data*, %struct.sk_buff*, i32, %struct.sta_info*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @sta_info_get(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i64 @ieee80211_tx_h_select_key(%struct.ieee80211_tx_data*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
