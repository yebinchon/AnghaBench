; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_actions.c_set_sctp.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_actions.c_set_sctp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sw_flow_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }
%struct.ovs_key_sctp = type { i32, i32 }
%struct.sctphdr = type { i32, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.sw_flow_key*, %struct.ovs_key_sctp*, %struct.ovs_key_sctp*)* @set_sctp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_sctp(%struct.sk_buff* %0, %struct.sw_flow_key* %1, %struct.ovs_key_sctp* %2, %struct.ovs_key_sctp* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sw_flow_key*, align 8
  %8 = alloca %struct.ovs_key_sctp*, align 8
  %9 = alloca %struct.ovs_key_sctp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sctphdr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.sw_flow_key* %1, %struct.sw_flow_key** %7, align 8
  store %struct.ovs_key_sctp* %2, %struct.ovs_key_sctp** %8, align 8
  store %struct.ovs_key_sctp* %3, %struct.ovs_key_sctp** %9, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = call i32 @skb_transport_offset(%struct.sk_buff* %16)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = load i32, i32* %10, align 4
  %20 = zext i32 %19 to i64
  %21 = add i64 %20, 24
  %22 = trunc i64 %21 to i32
  %23 = call i32 @skb_ensure_writable(%struct.sk_buff* %18, i32 %22)
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* %15, align 4
  store i32 %28, i32* %5, align 4
  br label %86

29:                                               ; preds = %4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = call %struct.sctphdr* @sctp_hdr(%struct.sk_buff* %30)
  store %struct.sctphdr* %31, %struct.sctphdr** %11, align 8
  %32 = load %struct.sctphdr*, %struct.sctphdr** %11, align 8
  %33 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %14, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @sctp_compute_cksum(%struct.sk_buff* %35, i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = load %struct.sctphdr*, %struct.sctphdr** %11, align 8
  %39 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.ovs_key_sctp*, %struct.ovs_key_sctp** %8, align 8
  %42 = getelementptr inbounds %struct.ovs_key_sctp, %struct.ovs_key_sctp* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ovs_key_sctp*, %struct.ovs_key_sctp** %9, align 8
  %45 = getelementptr inbounds %struct.ovs_key_sctp, %struct.ovs_key_sctp* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @OVS_MASKED(i8* %40, i32 %43, i32 %46)
  %48 = load %struct.sctphdr*, %struct.sctphdr** %11, align 8
  %49 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load %struct.sctphdr*, %struct.sctphdr** %11, align 8
  %51 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.ovs_key_sctp*, %struct.ovs_key_sctp** %8, align 8
  %54 = getelementptr inbounds %struct.ovs_key_sctp, %struct.ovs_key_sctp* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ovs_key_sctp*, %struct.ovs_key_sctp** %9, align 8
  %57 = getelementptr inbounds %struct.ovs_key_sctp, %struct.ovs_key_sctp* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @OVS_MASKED(i8* %52, i32 %55, i32 %58)
  %60 = load %struct.sctphdr*, %struct.sctphdr** %11, align 8
  %61 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @sctp_compute_cksum(%struct.sk_buff* %62, i32 %63)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %12, align 4
  %67 = xor i32 %65, %66
  %68 = load i32, i32* %13, align 4
  %69 = xor i32 %67, %68
  %70 = load %struct.sctphdr*, %struct.sctphdr** %11, align 8
  %71 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %73 = call i32 @skb_clear_hash(%struct.sk_buff* %72)
  %74 = load %struct.sctphdr*, %struct.sctphdr** %11, align 8
  %75 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %78 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  store i8* %76, i8** %79, align 8
  %80 = load %struct.sctphdr*, %struct.sctphdr** %11, align 8
  %81 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %84 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i8* %82, i8** %85, align 8
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %29, %27
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @skb_ensure_writable(%struct.sk_buff*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.sctphdr* @sctp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @sctp_compute_cksum(%struct.sk_buff*, i32) #1

declare dso_local i8* @OVS_MASKED(i8*, i32, i32) #1

declare dso_local i32 @skb_clear_hash(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
