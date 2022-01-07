; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_xmit.c_ip_vs_bypass_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_xmit.c_ip_vs_bypass_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ip_vs_conn = type { i32, i32 }
%struct.ip_vs_protocol = type { i32 }
%struct.ip_vs_iphdr = type { i32 }
%struct.iphdr = type { i32 }

@IP_VS_RT_MODE_NON_LOCAL = common dso_local global i32 0, align 4
@NFPROTO_IPV4 = common dso_local global i32 0, align 4
@NF_STOLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_vs_bypass_xmit(%struct.sk_buff* %0, %struct.ip_vs_conn* %1, %struct.ip_vs_protocol* %2, %struct.ip_vs_iphdr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ip_vs_conn*, align 8
  %8 = alloca %struct.ip_vs_protocol*, align 8
  %9 = alloca %struct.ip_vs_iphdr*, align 8
  %10 = alloca %struct.iphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.ip_vs_conn* %1, %struct.ip_vs_conn** %7, align 8
  store %struct.ip_vs_protocol* %2, %struct.ip_vs_protocol** %8, align 8
  store %struct.ip_vs_iphdr* %3, %struct.ip_vs_iphdr** %9, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %11)
  store %struct.iphdr* %12, %struct.iphdr** %10, align 8
  %13 = call i32 @EnterFunction(i32 10)
  %14 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %15 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %18 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %22 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IP_VS_RT_MODE_NON_LOCAL, align 4
  %25 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %9, align 8
  %26 = call i64 @__ip_vs_get_out_rt(i32 %16, i32 %19, %struct.sk_buff* %20, i32* null, i32 %23, i32 %24, i32* null, %struct.ip_vs_iphdr* %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  br label %40

29:                                               ; preds = %4
  %30 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %31 = call i32 @ip_send_check(%struct.iphdr* %30)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  %34 = load i32, i32* @NFPROTO_IPV4, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %37 = call i32 @ip_vs_send_or_cont(i32 %34, %struct.sk_buff* %35, %struct.ip_vs_conn* %36, i32 0)
  %38 = call i32 @LeaveFunction(i32 10)
  %39 = load i32, i32* @NF_STOLEN, align 4
  store i32 %39, i32* %5, align 4
  br label %45

40:                                               ; preds = %28
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = call i32 @kfree_skb(%struct.sk_buff* %41)
  %43 = call i32 @LeaveFunction(i32 10)
  %44 = load i32, i32* @NF_STOLEN, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %40, %29
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @EnterFunction(i32) #1

declare dso_local i64 @__ip_vs_get_out_rt(i32, i32, %struct.sk_buff*, i32*, i32, i32, i32*, %struct.ip_vs_iphdr*) #1

declare dso_local i32 @ip_send_check(%struct.iphdr*) #1

declare dso_local i32 @ip_vs_send_or_cont(i32, %struct.sk_buff*, %struct.ip_vs_conn*, i32) #1

declare dso_local i32 @LeaveFunction(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
