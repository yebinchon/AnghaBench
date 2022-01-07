; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_tunnel.c_nft_tunnel_ip_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_tunnel.c_nft_tunnel_ip_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ip_tunnel_info = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.nlattr = type { i32 }

@IP_TUNNEL_INFO_IPV6 = common dso_local global i32 0, align 4
@NFTA_TUNNEL_KEY_IP6 = common dso_local global i32 0, align 4
@NFTA_TUNNEL_KEY_IP6_SRC = common dso_local global i32 0, align 4
@NFTA_TUNNEL_KEY_IP6_DST = common dso_local global i32 0, align 4
@NFTA_TUNNEL_KEY_IP6_FLOWLABEL = common dso_local global i32 0, align 4
@NFTA_TUNNEL_KEY_IP = common dso_local global i32 0, align 4
@NFTA_TUNNEL_KEY_IP_SRC = common dso_local global i32 0, align 4
@NFTA_TUNNEL_KEY_IP_DST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.ip_tunnel_info*)* @nft_tunnel_ip_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_tunnel_ip_dump(%struct.sk_buff* %0, %struct.ip_tunnel_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ip_tunnel_info*, align 8
  %6 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.ip_tunnel_info* %1, %struct.ip_tunnel_info** %5, align 8
  %7 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %5, align 8
  %8 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @IP_TUNNEL_INFO_IPV6, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %54

13:                                               ; preds = %2
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = load i32, i32* @NFTA_TUNNEL_KEY_IP6, align 4
  %16 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %14, i32 %15)
  store %struct.nlattr* %16, %struct.nlattr** %6, align 8
  %17 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %18 = icmp ne %struct.nlattr* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  store i32 -1, i32* %3, align 4
  br label %89

20:                                               ; preds = %13
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = load i32, i32* @NFTA_TUNNEL_KEY_IP6_SRC, align 4
  %23 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %5, align 8
  %24 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = call i64 @nla_put_in6_addr(%struct.sk_buff* %21, i32 %22, i32* %27)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %49, label %30

30:                                               ; preds = %20
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = load i32, i32* @NFTA_TUNNEL_KEY_IP6_DST, align 4
  %33 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %5, align 8
  %34 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = call i64 @nla_put_in6_addr(%struct.sk_buff* %31, i32 %32, i32* %37)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %30
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = load i32, i32* @NFTA_TUNNEL_KEY_IP6_FLOWLABEL, align 4
  %43 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %5, align 8
  %44 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @nla_put_be32(%struct.sk_buff* %41, i32 %42, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40, %30, %20
  store i32 -1, i32* %3, align 4
  br label %89

50:                                               ; preds = %40
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %53 = call i32 @nla_nest_end(%struct.sk_buff* %51, %struct.nlattr* %52)
  br label %88

54:                                               ; preds = %2
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = load i32, i32* @NFTA_TUNNEL_KEY_IP, align 4
  %57 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %55, i32 %56)
  store %struct.nlattr* %57, %struct.nlattr** %6, align 8
  %58 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %59 = icmp ne %struct.nlattr* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  store i32 -1, i32* %3, align 4
  br label %89

61:                                               ; preds = %54
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = load i32, i32* @NFTA_TUNNEL_KEY_IP_SRC, align 4
  %64 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %5, align 8
  %65 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @nla_put_in_addr(%struct.sk_buff* %62, i32 %63, i32 %69)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %83, label %72

72:                                               ; preds = %61
  %73 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %74 = load i32, i32* @NFTA_TUNNEL_KEY_IP_DST, align 4
  %75 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %5, align 8
  %76 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @nla_put_in_addr(%struct.sk_buff* %73, i32 %74, i32 %80)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %72, %61
  store i32 -1, i32* %3, align 4
  br label %89

84:                                               ; preds = %72
  %85 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %86 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %87 = call i32 @nla_nest_end(%struct.sk_buff* %85, %struct.nlattr* %86)
  br label %88

88:                                               ; preds = %84, %50
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %83, %60, %49, %19
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_in6_addr(%struct.sk_buff*, i32, i32*) #1

declare dso_local i64 @nla_put_be32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i64 @nla_put_in_addr(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
