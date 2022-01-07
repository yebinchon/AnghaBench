; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_esp6.c_esp6_err.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_esp6.c_esp6_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.inet6_skb_parm = type { i32 }
%struct.net = type { i32 }
%struct.ipv6hdr = type { i32 }
%struct.ip_esp_hdr = type { i32 }
%struct.xfrm_state = type { i32 }

@ICMPV6_PKT_TOOBIG = common dso_local global i64 0, align 8
@NDISC_REDIRECT = common dso_local global i64 0, align 8
@IPPROTO_ESP = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.inet6_skb_parm*, i64, i64, i32, i32)* @esp6_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp6_err(%struct.sk_buff* %0, %struct.inet6_skb_parm* %1, i64 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.inet6_skb_parm*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.net*, align 8
  %15 = alloca %struct.ipv6hdr*, align 8
  %16 = alloca %struct.ip_esp_hdr*, align 8
  %17 = alloca %struct.xfrm_state*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.inet6_skb_parm* %1, %struct.inet6_skb_parm** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = call %struct.net* @dev_net(%struct.TYPE_2__* %20)
  store %struct.net* %21, %struct.net** %14, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.ipv6hdr*
  store %struct.ipv6hdr* %25, %struct.ipv6hdr** %15, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %28, %30
  %32 = inttoptr i64 %31 to %struct.ip_esp_hdr*
  store %struct.ip_esp_hdr* %32, %struct.ip_esp_hdr** %16, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* @ICMPV6_PKT_TOOBIG, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %6
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* @NDISC_REDIRECT, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 0, i32* %7, align 4
  br label %82

41:                                               ; preds = %36, %6
  %42 = load %struct.net*, %struct.net** %14, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ipv6hdr*, %struct.ipv6hdr** %15, align 8
  %47 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %46, i32 0, i32 0
  %48 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %16, align 8
  %49 = getelementptr inbounds %struct.ip_esp_hdr, %struct.ip_esp_hdr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @IPPROTO_ESP, align 4
  %52 = load i32, i32* @AF_INET6, align 4
  %53 = call %struct.xfrm_state* @xfrm_state_lookup(%struct.net* %42, i32 %45, i32* %47, i32 %50, i32 %51, i32 %52)
  store %struct.xfrm_state* %53, %struct.xfrm_state** %17, align 8
  %54 = load %struct.xfrm_state*, %struct.xfrm_state** %17, align 8
  %55 = icmp ne %struct.xfrm_state* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %41
  store i32 0, i32* %7, align 4
  br label %82

57:                                               ; preds = %41
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* @NDISC_REDIRECT, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %57
  %62 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %63 = load %struct.net*, %struct.net** %14, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.net*, %struct.net** %14, align 8
  %70 = call i32 @sock_net_uid(%struct.net* %69, i32* null)
  %71 = call i32 @ip6_redirect(%struct.sk_buff* %62, %struct.net* %63, i32 %68, i32 0, i32 %70)
  br label %79

72:                                               ; preds = %57
  %73 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %74 = load %struct.net*, %struct.net** %14, align 8
  %75 = load i32, i32* %13, align 4
  %76 = load %struct.net*, %struct.net** %14, align 8
  %77 = call i32 @sock_net_uid(%struct.net* %76, i32* null)
  %78 = call i32 @ip6_update_pmtu(%struct.sk_buff* %73, %struct.net* %74, i32 %75, i32 0, i32 0, i32 %77)
  br label %79

79:                                               ; preds = %72, %61
  %80 = load %struct.xfrm_state*, %struct.xfrm_state** %17, align 8
  %81 = call i32 @xfrm_state_put(%struct.xfrm_state* %80)
  store i32 0, i32* %7, align 4
  br label %82

82:                                               ; preds = %79, %56, %40
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

declare dso_local %struct.net* @dev_net(%struct.TYPE_2__*) #1

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
