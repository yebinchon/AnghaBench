; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_core.c___ip_vs_rs_conn_out.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_core.c___ip_vs_rs_conn_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_conn = type { i32 }
%struct.netns_ipvs = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ip_vs_iphdr = type { i32, i32, i32 }
%struct.ip_vs_dest = type { i32 }
%struct.ip_vs_service = type { i32 }
%struct.ip_vs_pe = type { %struct.ip_vs_conn* (%struct.ip_vs_service*, %struct.ip_vs_dest.0*, %struct.sk_buff*, %struct.ip_vs_iphdr.1*, i32, i32)* }
%struct.ip_vs_dest.0 = type opaque
%struct.ip_vs_iphdr.1 = type opaque

@NF_INET_LOCAL_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ip_vs_conn* (i32, %struct.netns_ipvs*, i32, %struct.sk_buff*, %struct.ip_vs_iphdr*)* @__ip_vs_rs_conn_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ip_vs_conn* @__ip_vs_rs_conn_out(i32 %0, %struct.netns_ipvs* %1, i32 %2, %struct.sk_buff* %3, %struct.ip_vs_iphdr* %4) #0 {
  %6 = alloca %struct.ip_vs_conn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.netns_ipvs*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.ip_vs_iphdr*, align 8
  %12 = alloca %struct.ip_vs_dest*, align 8
  %13 = alloca %struct.ip_vs_conn*, align 8
  %14 = alloca [2 x i32], align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.ip_vs_service*, align 8
  %17 = alloca %struct.ip_vs_pe*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.netns_ipvs* %1, %struct.netns_ipvs** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.sk_buff* %3, %struct.sk_buff** %10, align 8
  store %struct.ip_vs_iphdr* %4, %struct.ip_vs_iphdr** %11, align 8
  store %struct.ip_vs_conn* null, %struct.ip_vs_conn** %13, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @NF_INET_LOCAL_IN, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  store %struct.ip_vs_conn* null, %struct.ip_vs_conn** %6, align 8
  br label %88

22:                                               ; preds = %5
  %23 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %24 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %11, align 8
  %25 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %28 = call i32* @frag_safe_skb_hp(%struct.sk_buff* %23, i32 %26, i32 8, i32* %27)
  store i32* %28, i32** %15, align 8
  %29 = load i32*, i32** %15, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %22
  store %struct.ip_vs_conn* null, %struct.ip_vs_conn** %6, align 8
  br label %88

32:                                               ; preds = %22
  %33 = load %struct.netns_ipvs*, %struct.netns_ipvs** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %11, align 8
  %36 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %11, align 8
  %39 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %38, i32 0, i32 0
  %40 = load i32*, i32** %15, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.ip_vs_dest* @ip_vs_find_real_service(%struct.netns_ipvs* %33, i32 %34, i32 %37, i32* %39, i32 %42)
  store %struct.ip_vs_dest* %43, %struct.ip_vs_dest** %12, align 8
  %44 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %12, align 8
  %45 = icmp ne %struct.ip_vs_dest* %44, null
  br i1 %45, label %46, label %86

46:                                               ; preds = %32
  %47 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %12, align 8
  %48 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @rcu_dereference(i32 %49)
  %51 = bitcast i8* %50 to %struct.ip_vs_service*
  store %struct.ip_vs_service* %51, %struct.ip_vs_service** %16, align 8
  %52 = load %struct.ip_vs_service*, %struct.ip_vs_service** %16, align 8
  %53 = icmp ne %struct.ip_vs_service* %52, null
  br i1 %53, label %54, label %85

54:                                               ; preds = %46
  %55 = load %struct.ip_vs_service*, %struct.ip_vs_service** %16, align 8
  %56 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @rcu_dereference(i32 %57)
  %59 = bitcast i8* %58 to %struct.ip_vs_pe*
  store %struct.ip_vs_pe* %59, %struct.ip_vs_pe** %17, align 8
  %60 = load %struct.ip_vs_pe*, %struct.ip_vs_pe** %17, align 8
  %61 = icmp ne %struct.ip_vs_pe* %60, null
  br i1 %61, label %62, label %84

62:                                               ; preds = %54
  %63 = load %struct.ip_vs_pe*, %struct.ip_vs_pe** %17, align 8
  %64 = getelementptr inbounds %struct.ip_vs_pe, %struct.ip_vs_pe* %63, i32 0, i32 0
  %65 = load %struct.ip_vs_conn* (%struct.ip_vs_service*, %struct.ip_vs_dest.0*, %struct.sk_buff*, %struct.ip_vs_iphdr.1*, i32, i32)*, %struct.ip_vs_conn* (%struct.ip_vs_service*, %struct.ip_vs_dest.0*, %struct.sk_buff*, %struct.ip_vs_iphdr.1*, i32, i32)** %64, align 8
  %66 = icmp ne %struct.ip_vs_conn* (%struct.ip_vs_service*, %struct.ip_vs_dest.0*, %struct.sk_buff*, %struct.ip_vs_iphdr.1*, i32, i32)* %65, null
  br i1 %66, label %67, label %84

67:                                               ; preds = %62
  %68 = load %struct.ip_vs_pe*, %struct.ip_vs_pe** %17, align 8
  %69 = getelementptr inbounds %struct.ip_vs_pe, %struct.ip_vs_pe* %68, i32 0, i32 0
  %70 = load %struct.ip_vs_conn* (%struct.ip_vs_service*, %struct.ip_vs_dest.0*, %struct.sk_buff*, %struct.ip_vs_iphdr.1*, i32, i32)*, %struct.ip_vs_conn* (%struct.ip_vs_service*, %struct.ip_vs_dest.0*, %struct.sk_buff*, %struct.ip_vs_iphdr.1*, i32, i32)** %69, align 8
  %71 = load %struct.ip_vs_service*, %struct.ip_vs_service** %16, align 8
  %72 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %12, align 8
  %73 = bitcast %struct.ip_vs_dest* %72 to %struct.ip_vs_dest.0*
  %74 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %75 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %11, align 8
  %76 = bitcast %struct.ip_vs_iphdr* %75 to %struct.ip_vs_iphdr.1*
  %77 = load i32*, i32** %15, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %15, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = call %struct.ip_vs_conn* %70(%struct.ip_vs_service* %71, %struct.ip_vs_dest.0* %73, %struct.sk_buff* %74, %struct.ip_vs_iphdr.1* %76, i32 %79, i32 %82)
  store %struct.ip_vs_conn* %83, %struct.ip_vs_conn** %13, align 8
  br label %84

84:                                               ; preds = %67, %62, %54
  br label %85

85:                                               ; preds = %84, %46
  br label %86

86:                                               ; preds = %85, %32
  %87 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %13, align 8
  store %struct.ip_vs_conn* %87, %struct.ip_vs_conn** %6, align 8
  br label %88

88:                                               ; preds = %86, %31, %21
  %89 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  ret %struct.ip_vs_conn* %89
}

declare dso_local i32* @frag_safe_skb_hp(%struct.sk_buff*, i32, i32, i32*) #1

declare dso_local %struct.ip_vs_dest* @ip_vs_find_real_service(%struct.netns_ipvs*, i32, i32, i32*, i32) #1

declare dso_local i8* @rcu_dereference(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
