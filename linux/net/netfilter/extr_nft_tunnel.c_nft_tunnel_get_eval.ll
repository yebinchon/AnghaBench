; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_tunnel.c_nft_tunnel_get_eval.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_tunnel.c_nft_tunnel_get_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_expr = type { i32 }
%struct.nft_regs = type { %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i8* }
%struct.nft_pktinfo = type { i32 }
%struct.nft_tunnel = type { i64, i32, i32 }
%struct.ip_tunnel_info = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@NFT_TUNNEL_MODE_NONE = common dso_local global i32 0, align 4
@NFT_TUNNEL_MODE_RX = common dso_local global i32 0, align 4
@IP_TUNNEL_INFO_TX = common dso_local global i32 0, align 4
@NFT_TUNNEL_MODE_TX = common dso_local global i32 0, align 4
@NFT_BREAK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_expr*, %struct.nft_regs*, %struct.nft_pktinfo*)* @nft_tunnel_get_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_tunnel_get_eval(%struct.nft_expr* %0, %struct.nft_regs* %1, %struct.nft_pktinfo* %2) #0 {
  %4 = alloca %struct.nft_expr*, align 8
  %5 = alloca %struct.nft_regs*, align 8
  %6 = alloca %struct.nft_pktinfo*, align 8
  %7 = alloca %struct.nft_tunnel*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ip_tunnel_info*, align 8
  store %struct.nft_expr* %0, %struct.nft_expr** %4, align 8
  store %struct.nft_regs* %1, %struct.nft_regs** %5, align 8
  store %struct.nft_pktinfo* %2, %struct.nft_pktinfo** %6, align 8
  %10 = load %struct.nft_expr*, %struct.nft_expr** %4, align 8
  %11 = call %struct.nft_tunnel* @nft_expr_priv(%struct.nft_expr* %10)
  store %struct.nft_tunnel* %11, %struct.nft_tunnel** %7, align 8
  %12 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %13 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.nft_tunnel*, %struct.nft_tunnel** %7, align 8
  %16 = getelementptr inbounds %struct.nft_tunnel, %struct.nft_tunnel* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  store i32* %18, i32** %8, align 8
  %19 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %20 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.ip_tunnel_info* @skb_tunnel_info(i32 %21)
  store %struct.ip_tunnel_info* %22, %struct.ip_tunnel_info** %9, align 8
  %23 = load %struct.nft_tunnel*, %struct.nft_tunnel** %7, align 8
  %24 = getelementptr inbounds %struct.nft_tunnel, %struct.nft_tunnel* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %125 [
    i32 128, label %26
    i32 129, label %71
  ]

26:                                               ; preds = %3
  %27 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %9, align 8
  %28 = icmp ne %struct.ip_tunnel_info* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @nft_reg_store8(i32* %30, i32 0)
  br label %131

32:                                               ; preds = %26
  %33 = load %struct.nft_tunnel*, %struct.nft_tunnel** %7, align 8
  %34 = getelementptr inbounds %struct.nft_tunnel, %struct.nft_tunnel* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @NFT_TUNNEL_MODE_NONE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %64, label %38

38:                                               ; preds = %32
  %39 = load %struct.nft_tunnel*, %struct.nft_tunnel** %7, align 8
  %40 = getelementptr inbounds %struct.nft_tunnel, %struct.nft_tunnel* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @NFT_TUNNEL_MODE_RX, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %9, align 8
  %46 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IP_TUNNEL_INFO_TX, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %44, %38
  %52 = load %struct.nft_tunnel*, %struct.nft_tunnel** %7, align 8
  %53 = getelementptr inbounds %struct.nft_tunnel, %struct.nft_tunnel* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @NFT_TUNNEL_MODE_TX, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %51
  %58 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %9, align 8
  %59 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @IP_TUNNEL_INFO_TX, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57, %44, %32
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @nft_reg_store8(i32* %65, i32 1)
  br label %70

67:                                               ; preds = %57, %51
  %68 = load i32*, i32** %8, align 8
  %69 = call i32 @nft_reg_store8(i32* %68, i32 0)
  br label %70

70:                                               ; preds = %67, %64
  br label %131

71:                                               ; preds = %3
  %72 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %9, align 8
  %73 = icmp ne %struct.ip_tunnel_info* %72, null
  br i1 %73, label %79, label %74

74:                                               ; preds = %71
  %75 = load i8*, i8** @NFT_BREAK, align 8
  %76 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %77 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i8* %75, i8** %78, align 8
  br label %131

79:                                               ; preds = %71
  %80 = load %struct.nft_tunnel*, %struct.nft_tunnel** %7, align 8
  %81 = getelementptr inbounds %struct.nft_tunnel, %struct.nft_tunnel* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @NFT_TUNNEL_MODE_NONE, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %111, label %85

85:                                               ; preds = %79
  %86 = load %struct.nft_tunnel*, %struct.nft_tunnel** %7, align 8
  %87 = getelementptr inbounds %struct.nft_tunnel, %struct.nft_tunnel* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @NFT_TUNNEL_MODE_RX, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %85
  %92 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %9, align 8
  %93 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @IP_TUNNEL_INFO_TX, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %91, %85
  %99 = load %struct.nft_tunnel*, %struct.nft_tunnel** %7, align 8
  %100 = getelementptr inbounds %struct.nft_tunnel, %struct.nft_tunnel* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @NFT_TUNNEL_MODE_TX, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %119

104:                                              ; preds = %98
  %105 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %9, align 8
  %106 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @IP_TUNNEL_INFO_TX, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %104, %91, %79
  %112 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %9, align 8
  %113 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @tunnel_id_to_key32(i32 %115)
  %117 = call i32 @ntohl(i32 %116)
  %118 = load i32*, i32** %8, align 8
  store i32 %117, i32* %118, align 4
  br label %124

119:                                              ; preds = %104, %98
  %120 = load i8*, i8** @NFT_BREAK, align 8
  %121 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %122 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  store i8* %120, i8** %123, align 8
  br label %124

124:                                              ; preds = %119, %111
  br label %131

125:                                              ; preds = %3
  %126 = call i32 @WARN_ON(i32 1)
  %127 = load i8*, i8** @NFT_BREAK, align 8
  %128 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %129 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  store i8* %127, i8** %130, align 8
  br label %131

131:                                              ; preds = %29, %74, %125, %124, %70
  ret void
}

declare dso_local %struct.nft_tunnel* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local %struct.ip_tunnel_info* @skb_tunnel_info(i32) #1

declare dso_local i32 @nft_reg_store8(i32*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @tunnel_id_to_key32(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
