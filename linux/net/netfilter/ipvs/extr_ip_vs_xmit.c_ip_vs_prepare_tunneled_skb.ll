; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_xmit.c_ip_vs_prepare_tunneled_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_xmit.c_ip_vs_prepare_tunneled_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.iphdr = type { i32, i32, i32 }

@IP_DF = common dso_local global i32 0, align 4
@IPPROTO_IPIP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sk_buff*, i32, i32, i32*, i64*, i32*, i32*, i32*)* @ip_vs_prepare_tunneled_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ip_vs_prepare_tunneled_skb(%struct.sk_buff* %0, i32 %1, i32 %2, i32* %3, i64* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.sk_buff*, align 8
  %19 = alloca %struct.iphdr*, align 8
  %20 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i64* %4, i64** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %18, align 8
  store %struct.iphdr* null, %struct.iphdr** %19, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %22 = call i32 @ip_vs_drop_early_demux_sk(%struct.sk_buff* %21)
  %23 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %24 = call i32 @skb_headroom(%struct.sk_buff* %23)
  %25 = load i32, i32* %12, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %29 = call i64 @skb_cloned(%struct.sk_buff* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %53

31:                                               ; preds = %27, %8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %33 = load i32, i32* %12, align 4
  %34 = call %struct.sk_buff* @skb_realloc_headroom(%struct.sk_buff* %32, i32 %33)
  store %struct.sk_buff* %34, %struct.sk_buff** %18, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %36 = icmp ne %struct.sk_buff* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  br label %91

38:                                               ; preds = %31
  %39 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @skb_set_owner_w(%struct.sk_buff* %44, i64 %47)
  br label %49

49:                                               ; preds = %43, %38
  %50 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %51 = call i32 @consume_skb(%struct.sk_buff* %50)
  %52 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  store %struct.sk_buff* %52, %struct.sk_buff** %10, align 8
  br label %53

53:                                               ; preds = %49, %27
  %54 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %55 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %54)
  store %struct.iphdr* %55, %struct.iphdr** %19, align 8
  %56 = load i32*, i32** %17, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %60 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @IP_DF, align 4
  %63 = call i32 @htons(i32 %62)
  %64 = and i32 %61, %63
  %65 = load i32*, i32** %17, align 8
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %58, %53
  %67 = load i32, i32* @IPPROTO_IPIP, align 4
  %68 = load i32*, i32** %13, align 8
  store i32 %67, i32* %68, align 4
  %69 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %70 = call i32 @ip_send_check(%struct.iphdr* %69)
  %71 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %72 = call i32 @ipv4_get_dsfield(%struct.iphdr* %71)
  store i32 %72, i32* %20, align 4
  %73 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %74 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %16, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i64*, i64** %14, align 8
  %78 = icmp ne i64* %77, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %66
  %80 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %81 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @ntohs(i32 %82)
  %84 = load i64*, i64** %14, align 8
  store i64 %83, i64* %84, align 8
  br label %85

85:                                               ; preds = %79, %66
  %86 = load i32, i32* %20, align 4
  %87 = load i32, i32* %20, align 4
  %88 = call i32 @INET_ECN_encapsulate(i32 %86, i32 %87)
  %89 = load i32*, i32** %15, align 8
  store i32 %88, i32* %89, align 4
  %90 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %90, %struct.sk_buff** %9, align 8
  br label %97

91:                                               ; preds = %37
  %92 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %93 = call i32 @kfree_skb(%struct.sk_buff* %92)
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  %96 = call %struct.sk_buff* @ERR_PTR(i32 %95)
  store %struct.sk_buff* %96, %struct.sk_buff** %9, align 8
  br label %97

97:                                               ; preds = %91, %85
  %98 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  ret %struct.sk_buff* %98
}

declare dso_local i32 @ip_vs_drop_early_demux_sk(%struct.sk_buff*) #1

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i64 @skb_cloned(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_realloc_headroom(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_set_owner_w(%struct.sk_buff*, i64) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @ip_send_check(%struct.iphdr*) #1

declare dso_local i32 @ipv4_get_dsfield(%struct.iphdr*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @INET_ECN_encapsulate(i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
