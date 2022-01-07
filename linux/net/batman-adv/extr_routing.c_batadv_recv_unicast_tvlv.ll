; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_routing.c_batadv_recv_unicast_tvlv.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_routing.c_batadv_recv_unicast_tvlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.batadv_hard_iface = type { i32 }
%struct.batadv_priv = type { i32 }
%struct.batadv_unicast_tvlv_packet = type { i32, i32, i32 }

@NET_RX_DROP = common dso_local global i32 0, align 4
@NET_RX_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @batadv_recv_unicast_tvlv(%struct.sk_buff* %0, %struct.batadv_hard_iface* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.batadv_hard_iface*, align 8
  %5 = alloca %struct.batadv_priv*, align 8
  %6 = alloca %struct.batadv_unicast_tvlv_packet*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.batadv_hard_iface* %1, %struct.batadv_hard_iface** %4, align 8
  %11 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %12 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.batadv_priv* @netdev_priv(i32 %13)
  store %struct.batadv_priv* %14, %struct.batadv_priv** %5, align 8
  store i32 12, i32* %9, align 4
  %15 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %15, i32* %10, align 4
  %16 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i64 @batadv_check_unicast_packet(%struct.batadv_priv* %16, %struct.sk_buff* %17, i32 %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %76

22:                                               ; preds = %2
  %23 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i64 @skb_cow(%struct.sk_buff* %23, i32 %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %76

28:                                               ; preds = %22
  %29 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %30 = call i64 @skb_linearize(%struct.sk_buff* %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %76

33:                                               ; preds = %28
  %34 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.batadv_unicast_tvlv_packet*
  store %struct.batadv_unicast_tvlv_packet* %37, %struct.batadv_unicast_tvlv_packet** %6, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %40, %42
  %44 = inttoptr i64 %43 to i8*
  store i8* %44, i8** %7, align 8
  %45 = load %struct.batadv_unicast_tvlv_packet*, %struct.batadv_unicast_tvlv_packet** %6, align 8
  %46 = getelementptr inbounds %struct.batadv_unicast_tvlv_packet, %struct.batadv_unicast_tvlv_packet* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ntohs(i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sub nsw i32 %52, %53
  %55 = icmp sgt i32 %49, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %33
  br label %76

57:                                               ; preds = %33
  %58 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %59 = load %struct.batadv_unicast_tvlv_packet*, %struct.batadv_unicast_tvlv_packet** %6, align 8
  %60 = getelementptr inbounds %struct.batadv_unicast_tvlv_packet, %struct.batadv_unicast_tvlv_packet* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.batadv_unicast_tvlv_packet*, %struct.batadv_unicast_tvlv_packet** %6, align 8
  %63 = getelementptr inbounds %struct.batadv_unicast_tvlv_packet, %struct.batadv_unicast_tvlv_packet* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i8*, i8** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @batadv_tvlv_containers_process(%struct.batadv_priv* %58, i32 0, i32* null, i32 %61, i32 %64, i8* %65, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @NET_RX_SUCCESS, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %57
  %72 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %73 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %74 = call i32 @batadv_route_unicast_packet(%struct.sk_buff* %72, %struct.batadv_hard_iface* %73)
  store i32 %74, i32* %10, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %75

75:                                               ; preds = %71, %57
  br label %76

76:                                               ; preds = %75, %56, %32, %27, %21
  %77 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %78 = call i32 @kfree_skb(%struct.sk_buff* %77)
  %79 = load i32, i32* %10, align 4
  ret i32 %79
}

declare dso_local %struct.batadv_priv* @netdev_priv(i32) #1

declare dso_local i64 @batadv_check_unicast_packet(%struct.batadv_priv*, %struct.sk_buff*, i32) #1

declare dso_local i64 @skb_cow(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_linearize(%struct.sk_buff*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @batadv_tvlv_containers_process(%struct.batadv_priv*, i32, i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @batadv_route_unicast_packet(%struct.sk_buff*, %struct.batadv_hard_iface*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
