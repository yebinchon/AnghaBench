; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_tunnel.c_nft_tunnel_opts_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_tunnel.c_nft_tunnel_opts_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nft_tunnel_obj = type { %struct.nft_tunnel_opts }
%struct.nft_tunnel_opts = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.nlattr = type { i32 }

@NFTA_TUNNEL_KEY_OPTS = common dso_local global i32 0, align 4
@TUNNEL_VXLAN_OPT = common dso_local global i32 0, align 4
@NFTA_TUNNEL_KEY_VXLAN_GBP = common dso_local global i32 0, align 4
@TUNNEL_ERSPAN_OPT = common dso_local global i32 0, align 4
@NFTA_TUNNEL_KEY_ERSPAN_V1_INDEX = common dso_local global i32 0, align 4
@NFTA_TUNNEL_KEY_ERSPAN_V2_HWID = common dso_local global i32 0, align 4
@NFTA_TUNNEL_KEY_ERSPAN_V2_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nft_tunnel_obj*)* @nft_tunnel_opts_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_tunnel_opts_dump(%struct.sk_buff* %0, %struct.nft_tunnel_obj* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nft_tunnel_obj*, align 8
  %6 = alloca %struct.nft_tunnel_opts*, align 8
  %7 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nft_tunnel_obj* %1, %struct.nft_tunnel_obj** %5, align 8
  %8 = load %struct.nft_tunnel_obj*, %struct.nft_tunnel_obj** %5, align 8
  %9 = getelementptr inbounds %struct.nft_tunnel_obj, %struct.nft_tunnel_obj* %8, i32 0, i32 0
  store %struct.nft_tunnel_opts* %9, %struct.nft_tunnel_opts** %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = load i32, i32* @NFTA_TUNNEL_KEY_OPTS, align 4
  %12 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %10, i32 %11)
  store %struct.nlattr* %12, %struct.nlattr** %7, align 8
  %13 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %14 = icmp ne %struct.nlattr* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %93

16:                                               ; preds = %2
  %17 = load %struct.nft_tunnel_opts*, %struct.nft_tunnel_opts** %6, align 8
  %18 = getelementptr inbounds %struct.nft_tunnel_opts, %struct.nft_tunnel_opts* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @TUNNEL_VXLAN_OPT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %16
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = load i32, i32* @NFTA_TUNNEL_KEY_VXLAN_GBP, align 4
  %26 = load %struct.nft_tunnel_opts*, %struct.nft_tunnel_opts** %6, align 8
  %27 = getelementptr inbounds %struct.nft_tunnel_opts, %struct.nft_tunnel_opts* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @htonl(i32 %30)
  %32 = call i64 @nla_put_be32(%struct.sk_buff* %24, i32 %25, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  store i32 -1, i32* %3, align 4
  br label %93

35:                                               ; preds = %23
  br label %89

36:                                               ; preds = %16
  %37 = load %struct.nft_tunnel_opts*, %struct.nft_tunnel_opts** %6, align 8
  %38 = getelementptr inbounds %struct.nft_tunnel_opts, %struct.nft_tunnel_opts* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @TUNNEL_ERSPAN_OPT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %88

43:                                               ; preds = %36
  %44 = load %struct.nft_tunnel_opts*, %struct.nft_tunnel_opts** %6, align 8
  %45 = getelementptr inbounds %struct.nft_tunnel_opts, %struct.nft_tunnel_opts* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %87 [
    i32 129, label %49
    i32 128, label %62
  ]

49:                                               ; preds = %43
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = load i32, i32* @NFTA_TUNNEL_KEY_ERSPAN_V1_INDEX, align 4
  %52 = load %struct.nft_tunnel_opts*, %struct.nft_tunnel_opts** %6, align 8
  %53 = getelementptr inbounds %struct.nft_tunnel_opts, %struct.nft_tunnel_opts* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @nla_put_be32(%struct.sk_buff* %50, i32 %51, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  store i32 -1, i32* %3, align 4
  br label %93

61:                                               ; preds = %49
  br label %87

62:                                               ; preds = %43
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = load i32, i32* @NFTA_TUNNEL_KEY_ERSPAN_V2_HWID, align 4
  %65 = load %struct.nft_tunnel_opts*, %struct.nft_tunnel_opts** %6, align 8
  %66 = getelementptr inbounds %struct.nft_tunnel_opts, %struct.nft_tunnel_opts* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = call i32 @get_hwid(%struct.TYPE_10__* %69)
  %71 = call i32 @nla_put_u8(%struct.sk_buff* %63, i32 %64, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %85, label %73

73:                                               ; preds = %62
  %74 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %75 = load i32, i32* @NFTA_TUNNEL_KEY_ERSPAN_V2_DIR, align 4
  %76 = load %struct.nft_tunnel_opts*, %struct.nft_tunnel_opts** %6, align 8
  %77 = getelementptr inbounds %struct.nft_tunnel_opts, %struct.nft_tunnel_opts* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @nla_put_u8(%struct.sk_buff* %74, i32 %75, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %73, %62
  store i32 -1, i32* %3, align 4
  br label %93

86:                                               ; preds = %73
  br label %87

87:                                               ; preds = %43, %86, %61
  br label %88

88:                                               ; preds = %87, %36
  br label %89

89:                                               ; preds = %88, %35
  %90 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %91 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %92 = call i32 @nla_nest_end(%struct.sk_buff* %90, %struct.nlattr* %91)
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %89, %85, %60, %34, %15
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_be32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @get_hwid(%struct.TYPE_10__*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
