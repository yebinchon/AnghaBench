; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rx.c_ieee80211_prepare_and_rx_handle.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rx.c_ieee80211_prepare_and_rx_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_rx_data = type { %struct.sk_buff*, %struct.TYPE_3__*, %struct.ieee80211_sub_if_data*, %struct.ieee80211_local* }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_sub_if_data = type { i32 }
%struct.ieee80211_local = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_fast_rx = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to copy skb for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_rx_data*, %struct.sk_buff*, i32)* @ieee80211_prepare_and_rx_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_prepare_and_rx_handle(%struct.ieee80211_rx_data* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_rx_data*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_local*, align 8
  %9 = alloca %struct.ieee80211_sub_if_data*, align 8
  %10 = alloca %struct.ieee80211_fast_rx*, align 8
  store %struct.ieee80211_rx_data* %0, %struct.ieee80211_rx_data** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %11, i32 0, i32 3
  %13 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  store %struct.ieee80211_local* %13, %struct.ieee80211_local** %8, align 8
  %14 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %14, i32 0, i32 2
  %16 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %15, align 8
  store %struct.ieee80211_sub_if_data* %16, %struct.ieee80211_sub_if_data** %9, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %5, align 8
  %19 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %18, i32 0, i32 0
  store %struct.sk_buff* %17, %struct.sk_buff** %19, align 8
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %3
  %23 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %5, align 8
  %24 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = icmp ne %struct.TYPE_3__* %25, null
  br i1 %26, label %27, label %43

27:                                               ; preds = %22
  %28 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %5, align 8
  %29 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.ieee80211_fast_rx* @rcu_dereference(i32 %32)
  store %struct.ieee80211_fast_rx* %33, %struct.ieee80211_fast_rx** %10, align 8
  %34 = load %struct.ieee80211_fast_rx*, %struct.ieee80211_fast_rx** %10, align 8
  %35 = icmp ne %struct.ieee80211_fast_rx* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %27
  %37 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %5, align 8
  %38 = load %struct.ieee80211_fast_rx*, %struct.ieee80211_fast_rx** %10, align 8
  %39 = call i64 @ieee80211_invoke_fast_rx(%struct.ieee80211_rx_data* %37, %struct.ieee80211_fast_rx* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 1, i32* %4, align 4
  br label %77

42:                                               ; preds = %36, %27
  br label %43

43:                                               ; preds = %42, %22, %3
  %44 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %5, align 8
  %45 = call i32 @ieee80211_accept_frame(%struct.ieee80211_rx_data* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %77

48:                                               ; preds = %43
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %74, label %51

51:                                               ; preds = %48
  %52 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %53 = load i32, i32* @GFP_ATOMIC, align 4
  %54 = call %struct.sk_buff* @skb_copy(%struct.sk_buff* %52, i32 %53)
  store %struct.sk_buff* %54, %struct.sk_buff** %6, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = icmp ne %struct.sk_buff* %55, null
  br i1 %56, label %70, label %57

57:                                               ; preds = %51
  %58 = call i64 (...) @net_ratelimit()
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %62 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %66 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @wiphy_debug(i32 %64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %60, %57
  store i32 1, i32* %4, align 4
  br label %77

70:                                               ; preds = %51
  %71 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %72 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %5, align 8
  %73 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %72, i32 0, i32 0
  store %struct.sk_buff* %71, %struct.sk_buff** %73, align 8
  br label %74

74:                                               ; preds = %70, %48
  %75 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %5, align 8
  %76 = call i32 @ieee80211_invoke_rx_handlers(%struct.ieee80211_rx_data* %75)
  store i32 1, i32* %4, align 4
  br label %77

77:                                               ; preds = %74, %69, %47, %41
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.ieee80211_fast_rx* @rcu_dereference(i32) #1

declare dso_local i64 @ieee80211_invoke_fast_rx(%struct.ieee80211_rx_data*, %struct.ieee80211_fast_rx*) #1

declare dso_local i32 @ieee80211_accept_frame(%struct.ieee80211_rx_data*) #1

declare dso_local %struct.sk_buff* @skb_copy(%struct.sk_buff*, i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @wiphy_debug(i32, i8*, i32) #1

declare dso_local i32 @ieee80211_invoke_rx_handlers(%struct.ieee80211_rx_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
