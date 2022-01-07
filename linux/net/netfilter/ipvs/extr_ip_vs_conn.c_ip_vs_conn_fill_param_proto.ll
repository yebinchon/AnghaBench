; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_conn.c_ip_vs_conn_fill_param_proto.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_conn.c_ip_vs_conn_fill_param_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netns_ipvs = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ip_vs_iphdr = type { i32, i32, i32, i32 }
%struct.ip_vs_conn_param = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netns_ipvs*, i32, %struct.sk_buff*, %struct.ip_vs_iphdr*, %struct.ip_vs_conn_param*)* @ip_vs_conn_fill_param_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_conn_fill_param_proto(%struct.netns_ipvs* %0, i32 %1, %struct.sk_buff* %2, %struct.ip_vs_iphdr* %3, %struct.ip_vs_conn_param* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.netns_ipvs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.ip_vs_iphdr*, align 8
  %11 = alloca %struct.ip_vs_conn_param*, align 8
  %12 = alloca [2 x i32], align 4
  %13 = alloca i32*, align 8
  store %struct.netns_ipvs* %0, %struct.netns_ipvs** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %9, align 8
  store %struct.ip_vs_iphdr* %3, %struct.ip_vs_iphdr** %10, align 8
  store %struct.ip_vs_conn_param* %4, %struct.ip_vs_conn_param** %11, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %15 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %10, align 8
  %16 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %19 = call i32* @frag_safe_skb_hp(%struct.sk_buff* %14, i32 %17, i32 8, i32* %18)
  store i32* %19, i32** %13, align 8
  %20 = load i32*, i32** %13, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %68

23:                                               ; preds = %5
  %24 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %10, align 8
  %25 = call i32 @ip_vs_iph_inverse(%struct.ip_vs_iphdr* %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @likely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %23
  %32 = load %struct.netns_ipvs*, %struct.netns_ipvs** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %10, align 8
  %35 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %10, align 8
  %38 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %37, i32 0, i32 0
  %39 = load i32*, i32** %13, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %10, align 8
  %43 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %42, i32 0, i32 1
  %44 = load i32*, i32** %13, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %11, align 8
  %48 = call i32 @ip_vs_conn_fill_param(%struct.netns_ipvs* %32, i32 %33, i32 %36, i32* %38, i32 %41, i32* %43, i32 %46, %struct.ip_vs_conn_param* %47)
  br label %67

49:                                               ; preds = %23
  %50 = load %struct.netns_ipvs*, %struct.netns_ipvs** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %10, align 8
  %53 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %10, align 8
  %56 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %55, i32 0, i32 1
  %57 = load i32*, i32** %13, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %10, align 8
  %61 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %60, i32 0, i32 0
  %62 = load i32*, i32** %13, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %11, align 8
  %66 = call i32 @ip_vs_conn_fill_param(%struct.netns_ipvs* %50, i32 %51, i32 %54, i32* %56, i32 %59, i32* %61, i32 %64, %struct.ip_vs_conn_param* %65)
  br label %67

67:                                               ; preds = %49, %31
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %67, %22
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i32* @frag_safe_skb_hp(%struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ip_vs_iph_inverse(%struct.ip_vs_iphdr*) #1

declare dso_local i32 @ip_vs_conn_fill_param(%struct.netns_ipvs*, i32, i32, i32*, i32, i32*, i32, %struct.ip_vs_conn_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
