; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_xmit.c_ip_vs_dr_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_xmit.c_ip_vs_dr_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ip_vs_conn = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ip_vs_protocol = type { i32 }
%struct.ip_vs_iphdr = type { i32 }

@IP_VS_RT_MODE_LOCAL = common dso_local global i32 0, align 4
@IP_VS_RT_MODE_NON_LOCAL = common dso_local global i32 0, align 4
@IP_VS_RT_MODE_KNOWN_NH = common dso_local global i32 0, align 4
@NFPROTO_IPV4 = common dso_local global i32 0, align 4
@NF_STOLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_vs_dr_xmit(%struct.sk_buff* %0, %struct.ip_vs_conn* %1, %struct.ip_vs_protocol* %2, %struct.ip_vs_iphdr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ip_vs_conn*, align 8
  %8 = alloca %struct.ip_vs_protocol*, align 8
  %9 = alloca %struct.ip_vs_iphdr*, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.ip_vs_conn* %1, %struct.ip_vs_conn** %7, align 8
  store %struct.ip_vs_protocol* %2, %struct.ip_vs_protocol** %8, align 8
  store %struct.ip_vs_iphdr* %3, %struct.ip_vs_iphdr** %9, align 8
  %11 = call i32 @EnterFunction(i32 10)
  %12 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %13 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %16 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %20 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %23 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IP_VS_RT_MODE_LOCAL, align 4
  %27 = load i32, i32* @IP_VS_RT_MODE_NON_LOCAL, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @IP_VS_RT_MODE_KNOWN_NH, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %9, align 8
  %32 = call i32 @__ip_vs_get_out_rt(i32 %14, i32 %17, %struct.sk_buff* %18, i32 %21, i32 %25, i32 %30, i32* null, %struct.ip_vs_iphdr* %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %4
  br label %56

36:                                               ; preds = %4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i32, i32* @NFPROTO_IPV4, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %43 = call i32 @ip_vs_send_or_cont(i32 %40, %struct.sk_buff* %41, %struct.ip_vs_conn* %42, i32 1)
  store i32 %43, i32* %5, align 4
  br label %61

44:                                               ; preds = %36
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = call i32 @ip_hdr(%struct.sk_buff* %45)
  %47 = call i32 @ip_send_check(i32 %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  store i32 1, i32* %49, align 4
  %50 = load i32, i32* @NFPROTO_IPV4, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %53 = call i32 @ip_vs_send_or_cont(i32 %50, %struct.sk_buff* %51, %struct.ip_vs_conn* %52, i32 0)
  %54 = call i32 @LeaveFunction(i32 10)
  %55 = load i32, i32* @NF_STOLEN, align 4
  store i32 %55, i32* %5, align 4
  br label %61

56:                                               ; preds = %35
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %58 = call i32 @kfree_skb(%struct.sk_buff* %57)
  %59 = call i32 @LeaveFunction(i32 10)
  %60 = load i32, i32* @NF_STOLEN, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %56, %44, %39
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @EnterFunction(i32) #1

declare dso_local i32 @__ip_vs_get_out_rt(i32, i32, %struct.sk_buff*, i32, i32, i32, i32*, %struct.ip_vs_iphdr*) #1

declare dso_local i32 @ip_vs_send_or_cont(i32, %struct.sk_buff*, %struct.ip_vs_conn*, i32) #1

declare dso_local i32 @ip_send_check(i32) #1

declare dso_local i32 @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @LeaveFunction(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
