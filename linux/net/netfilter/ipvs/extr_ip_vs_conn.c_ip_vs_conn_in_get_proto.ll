; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_conn.c_ip_vs_conn_in_get_proto.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_conn.c_ip_vs_conn_in_get_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_conn = type { i32 }
%struct.netns_ipvs = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ip_vs_iphdr = type { i32 }
%struct.ip_vs_conn_param = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ip_vs_conn* @ip_vs_conn_in_get_proto(%struct.netns_ipvs* %0, i32 %1, %struct.sk_buff* %2, %struct.ip_vs_iphdr* %3) #0 {
  %5 = alloca %struct.ip_vs_conn*, align 8
  %6 = alloca %struct.netns_ipvs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.ip_vs_iphdr*, align 8
  %10 = alloca %struct.ip_vs_conn_param, align 4
  store %struct.netns_ipvs* %0, %struct.netns_ipvs** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store %struct.ip_vs_iphdr* %3, %struct.ip_vs_iphdr** %9, align 8
  %11 = load %struct.netns_ipvs*, %struct.netns_ipvs** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %14 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %9, align 8
  %15 = call i64 @ip_vs_conn_fill_param_proto(%struct.netns_ipvs* %11, i32 %12, %struct.sk_buff* %13, %struct.ip_vs_iphdr* %14, %struct.ip_vs_conn_param* %10)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store %struct.ip_vs_conn* null, %struct.ip_vs_conn** %5, align 8
  br label %20

18:                                               ; preds = %4
  %19 = call %struct.ip_vs_conn* @ip_vs_conn_in_get(%struct.ip_vs_conn_param* %10)
  store %struct.ip_vs_conn* %19, %struct.ip_vs_conn** %5, align 8
  br label %20

20:                                               ; preds = %18, %17
  %21 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  ret %struct.ip_vs_conn* %21
}

declare dso_local i64 @ip_vs_conn_fill_param_proto(%struct.netns_ipvs*, i32, %struct.sk_buff*, %struct.ip_vs_iphdr*, %struct.ip_vs_conn_param*) #1

declare dso_local %struct.ip_vs_conn* @ip_vs_conn_in_get(%struct.ip_vs_conn_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
