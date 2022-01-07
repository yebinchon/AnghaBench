; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ipcomp6.c_ipcomp6_err.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ipcomp6.c_ipcomp6_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.inet6_skb_parm = type { i32 }
%struct.net = type { i32 }
%struct.ipv6hdr = type { i32 }
%struct.ip_comp_hdr = type { i32 }
%struct.xfrm_state = type { i32 }

@ICMPV6_PKT_TOOBIG = common dso_local global i64 0, align 8
@NDISC_REDIRECT = common dso_local global i64 0, align 8
@IPPROTO_COMP = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.inet6_skb_parm*, i64, i64, i32, i32)* @ipcomp6_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipcomp6_err(%struct.sk_buff* %0, %struct.inet6_skb_parm* %1, i64 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.inet6_skb_parm*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.net*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ipv6hdr*, align 8
  %17 = alloca %struct.ip_comp_hdr*, align 8
  %18 = alloca %struct.xfrm_state*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.inet6_skb_parm* %1, %struct.inet6_skb_parm** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = call %struct.net* @dev_net(%struct.TYPE_2__* %21)
  store %struct.net* %22, %struct.net** %14, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.ipv6hdr*
  store %struct.ipv6hdr* %26, %struct.ipv6hdr** %16, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %29, %31
  %33 = inttoptr i64 %32 to %struct.ip_comp_hdr*
  store %struct.ip_comp_hdr* %33, %struct.ip_comp_hdr** %17, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* @ICMPV6_PKT_TOOBIG, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %6
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* @NDISC_REDIRECT, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 0, i32* %7, align 4
  br label %86

42:                                               ; preds = %37, %6
  %43 = load %struct.ip_comp_hdr*, %struct.ip_comp_hdr** %17, align 8
  %44 = getelementptr inbounds %struct.ip_comp_hdr, %struct.ip_comp_hdr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ntohs(i32 %45)
  %47 = call i32 @htonl(i32 %46)
  store i32 %47, i32* %15, align 4
  %48 = load %struct.net*, %struct.net** %14, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.ipv6hdr*, %struct.ipv6hdr** %16, align 8
  %53 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %52, i32 0, i32 0
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* @IPPROTO_COMP, align 4
  %56 = load i32, i32* @AF_INET6, align 4
  %57 = call %struct.xfrm_state* @xfrm_state_lookup(%struct.net* %48, i32 %51, i32* %53, i32 %54, i32 %55, i32 %56)
  store %struct.xfrm_state* %57, %struct.xfrm_state** %18, align 8
  %58 = load %struct.xfrm_state*, %struct.xfrm_state** %18, align 8
  %59 = icmp ne %struct.xfrm_state* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %42
  store i32 0, i32* %7, align 4
  br label %86

61:                                               ; preds = %42
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* @NDISC_REDIRECT, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %61
  %66 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %67 = load %struct.net*, %struct.net** %14, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.net*, %struct.net** %14, align 8
  %74 = call i32 @sock_net_uid(%struct.net* %73, i32* null)
  %75 = call i32 @ip6_redirect(%struct.sk_buff* %66, %struct.net* %67, i32 %72, i32 0, i32 %74)
  br label %83

76:                                               ; preds = %61
  %77 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %78 = load %struct.net*, %struct.net** %14, align 8
  %79 = load i32, i32* %13, align 4
  %80 = load %struct.net*, %struct.net** %14, align 8
  %81 = call i32 @sock_net_uid(%struct.net* %80, i32* null)
  %82 = call i32 @ip6_update_pmtu(%struct.sk_buff* %77, %struct.net* %78, i32 %79, i32 0, i32 0, i32 %81)
  br label %83

83:                                               ; preds = %76, %65
  %84 = load %struct.xfrm_state*, %struct.xfrm_state** %18, align 8
  %85 = call i32 @xfrm_state_put(%struct.xfrm_state* %84)
  store i32 0, i32* %7, align 4
  br label %86

86:                                               ; preds = %83, %60, %41
  %87 = load i32, i32* %7, align 4
  ret i32 %87
}

declare dso_local %struct.net* @dev_net(%struct.TYPE_2__*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.xfrm_state* @xfrm_state_lookup(%struct.net*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @ip6_redirect(%struct.sk_buff*, %struct.net*, i32, i32, i32) #1

declare dso_local i32 @sock_net_uid(%struct.net*, i32*) #1

declare dso_local i32 @ip6_update_pmtu(%struct.sk_buff*, %struct.net*, i32, i32, i32, i32) #1

declare dso_local i32 @xfrm_state_put(%struct.xfrm_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
