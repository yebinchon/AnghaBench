; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_v_ogm.c_batadv_v_ogm_aggr_send.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_v_ogm.c_batadv_v_ogm_aggr_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_hard_iface = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }

@ETH_HLEN = common dso_local global i64 0, align 8
@NET_IP_ALIGN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_hard_iface*)* @batadv_v_ogm_aggr_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_v_ogm_aggr_send(%struct.batadv_hard_iface* %0) #0 {
  %2 = alloca %struct.batadv_hard_iface*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.batadv_hard_iface* %0, %struct.batadv_hard_iface** %2, align 8
  %7 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %8 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  %11 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %12 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = call i32 @lockdep_assert_held(i32* %13)
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %67

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* @ETH_HLEN, align 8
  %22 = add nsw i64 %20, %21
  %23 = load i64, i64* @NET_IP_ALIGN, align 8
  %24 = add nsw i64 %22, %23
  %25 = call %struct.sk_buff* @dev_alloc_skb(i64 %24)
  store %struct.sk_buff* %25, %struct.sk_buff** %4, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = icmp ne %struct.sk_buff* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %18
  %29 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %30 = call i32 @batadv_v_ogm_aggr_list_free(%struct.batadv_hard_iface* %29)
  br label %67

31:                                               ; preds = %18
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = load i64, i64* @ETH_HLEN, align 8
  %34 = load i64, i64* @NET_IP_ALIGN, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @skb_reserve(%struct.sk_buff* %32, i64 %35)
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = call i32 @skb_reset_network_header(%struct.sk_buff* %37)
  br label %39

39:                                               ; preds = %45, %31
  %40 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %41 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = call %struct.sk_buff* @skb_dequeue(i32* %42)
  store %struct.sk_buff* %43, %struct.sk_buff** %6, align 8
  %44 = icmp ne %struct.sk_buff* %43, null
  br i1 %44, label %45, label %63

45:                                               ; preds = %39
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = call i32 @batadv_v_ogm_len(%struct.sk_buff* %46)
  %48 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %49 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sub i32 %51, %47
  store i32 %52, i32* %50, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = call i32 @batadv_v_ogm_len(%struct.sk_buff* %53)
  store i32 %54, i32* %5, align 4
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @skb_put_data(%struct.sk_buff* %55, i32 %58, i32 %59)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = call i32 @consume_skb(%struct.sk_buff* %61)
  br label %39

63:                                               ; preds = %39
  %64 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %65 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %66 = call i32 @batadv_v_ogm_send_to_if(%struct.sk_buff* %64, %struct.batadv_hard_iface* %65)
  br label %67

67:                                               ; preds = %63, %28, %17
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @batadv_v_ogm_aggr_list_free(%struct.batadv_hard_iface*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @batadv_v_ogm_len(%struct.sk_buff*) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local i32 @batadv_v_ogm_send_to_if(%struct.sk_buff*, %struct.batadv_hard_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
