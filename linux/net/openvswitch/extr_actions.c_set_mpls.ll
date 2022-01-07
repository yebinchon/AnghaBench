; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_actions.c_set_mpls.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_actions.c_set_mpls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sw_flow_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mpls_shim_hdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.sw_flow_key*, i32*, i32*)* @set_mpls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_mpls(%struct.sk_buff* %0, %struct.sw_flow_key* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sw_flow_key*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.mpls_shim_hdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.sw_flow_key* %1, %struct.sw_flow_key** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = call %struct.mpls_shim_hdr* @mpls_hdr(%struct.sk_buff* %13)
  store %struct.mpls_shim_hdr* %14, %struct.mpls_shim_hdr** %10, align 8
  %15 = load %struct.mpls_shim_hdr*, %struct.mpls_shim_hdr** %10, align 8
  %16 = getelementptr inbounds %struct.mpls_shim_hdr, %struct.mpls_shim_hdr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %9, align 8
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @OVS_MASKED(i32 %17, i32 %19, i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @skb_mpls_update_lse(%struct.sk_buff* %23, i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %5, align 4
  br label %35

30:                                               ; preds = %4
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %33 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %30, %28
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local %struct.mpls_shim_hdr* @mpls_hdr(%struct.sk_buff*) #1

declare dso_local i32 @OVS_MASKED(i32, i32, i32) #1

declare dso_local i32 @skb_mpls_update_lse(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
