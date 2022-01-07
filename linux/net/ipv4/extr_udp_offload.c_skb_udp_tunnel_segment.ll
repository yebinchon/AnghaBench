; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_udp_offload.c_skb_udp_tunnel_segment.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_udp_offload.c_skb_udp_tunnel_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_offload = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.sk_buff* (%struct.sk_buff*, i32)* }
%struct.sk_buff = type { i32, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@inet6_offloads = common dso_local global %struct.net_offload** null, align 8
@inet_offloads = common dso_local global %struct.net_offload** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @skb_udp_tunnel_segment(%struct.sk_buff* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_offload**, align 8
  %9 = alloca %struct.net_offload*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.sk_buff* (%struct.sk_buff*, i32)*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.sk_buff* @ERR_PTR(i32 %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %10, align 8
  %18 = call i32 (...) @rcu_read_lock()
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %56 [
    i32 129, label %22
    i32 128, label %26
  ]

22:                                               ; preds = %3
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %7, align 4
  store %struct.sk_buff* (%struct.sk_buff*, i32)* @skb_mac_gso_segment, %struct.sk_buff* (%struct.sk_buff*, i32)** %11, align 8
  br label %57

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load %struct.net_offload**, %struct.net_offload*** @inet6_offloads, align 8
  br label %33

31:                                               ; preds = %26
  %32 = load %struct.net_offload**, %struct.net_offload*** @inet_offloads, align 8
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi %struct.net_offload** [ %30, %29 ], [ %32, %31 ]
  store %struct.net_offload** %34, %struct.net_offload*** %8, align 8
  %35 = load %struct.net_offload**, %struct.net_offload*** %8, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.net_offload*, %struct.net_offload** %35, i64 %38
  %40 = load %struct.net_offload*, %struct.net_offload** %39, align 8
  %41 = call %struct.net_offload* @rcu_dereference(%struct.net_offload* %40)
  store %struct.net_offload* %41, %struct.net_offload** %9, align 8
  %42 = load %struct.net_offload*, %struct.net_offload** %9, align 8
  %43 = icmp ne %struct.net_offload* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %33
  %45 = load %struct.net_offload*, %struct.net_offload** %9, align 8
  %46 = getelementptr inbounds %struct.net_offload, %struct.net_offload* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load %struct.sk_buff* (%struct.sk_buff*, i32)*, %struct.sk_buff* (%struct.sk_buff*, i32)** %47, align 8
  %49 = icmp ne %struct.sk_buff* (%struct.sk_buff*, i32)* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %44, %33
  br label %64

51:                                               ; preds = %44
  %52 = load %struct.net_offload*, %struct.net_offload** %9, align 8
  %53 = getelementptr inbounds %struct.net_offload, %struct.net_offload* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load %struct.sk_buff* (%struct.sk_buff*, i32)*, %struct.sk_buff* (%struct.sk_buff*, i32)** %54, align 8
  store %struct.sk_buff* (%struct.sk_buff*, i32)* %55, %struct.sk_buff* (%struct.sk_buff*, i32)** %11, align 8
  br label %57

56:                                               ; preds = %3
  br label %64

57:                                               ; preds = %51, %22
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.sk_buff* (%struct.sk_buff*, i32)*, %struct.sk_buff* (%struct.sk_buff*, i32)** %11, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call %struct.sk_buff* @__skb_udp_tunnel_segment(%struct.sk_buff* %58, i32 %59, %struct.sk_buff* (%struct.sk_buff*, i32)* %60, i32 %61, i32 %62)
  store %struct.sk_buff* %63, %struct.sk_buff** %10, align 8
  br label %64

64:                                               ; preds = %57, %56, %50
  %65 = call i32 (...) @rcu_read_unlock()
  %66 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  ret %struct.sk_buff* %66
}

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.sk_buff* @skb_mac_gso_segment(%struct.sk_buff*, i32) #1

declare dso_local %struct.net_offload* @rcu_dereference(%struct.net_offload*) #1

declare dso_local %struct.sk_buff* @__skb_udp_tunnel_segment(%struct.sk_buff*, i32, %struct.sk_buff* (%struct.sk_buff*, i32)*, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
