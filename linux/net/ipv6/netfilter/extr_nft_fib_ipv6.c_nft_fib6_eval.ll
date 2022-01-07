; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_nft_fib_ipv6.c_nft_fib6_eval.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_nft_fib_ipv6.c_nft_fib6_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_expr = type { i32 }
%struct.nft_regs = type { %struct.TYPE_4__, i64* }
%struct.TYPE_4__ = type { i32 }
%struct.nft_pktinfo = type { i32, i32 }
%struct.nft_fib = type { i64, i32 }
%struct.net_device = type opaque
%struct.ipv6hdr = type { i32 }
%struct.flowi6 = type { i32, i32 }
%struct.rt6_info = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.net_device* }
%struct.TYPE_5__ = type { i64 }

@LOOPBACK_IFINDEX = common dso_local global i32 0, align 4
@NFTA_FIB_F_IIF = common dso_local global i32 0, align 4
@NFTA_FIB_F_OIF = common dso_local global i32 0, align 4
@NFT_BREAK = common dso_local global i32 0, align 4
@NF_INET_PRE_ROUTING = common dso_local global i64 0, align 8
@RTF_REJECT = common dso_local global i32 0, align 4
@RTF_ANYCAST = common dso_local global i32 0, align 4
@RTF_LOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nft_fib6_eval(%struct.nft_expr* %0, %struct.nft_regs* %1, %struct.nft_pktinfo* %2) #0 {
  %4 = alloca %struct.nft_expr*, align 8
  %5 = alloca %struct.nft_regs*, align 8
  %6 = alloca %struct.nft_pktinfo*, align 8
  %7 = alloca %struct.nft_fib*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.ipv6hdr*, align 8
  %12 = alloca %struct.ipv6hdr, align 4
  %13 = alloca %struct.flowi6, align 4
  %14 = alloca %struct.rt6_info*, align 8
  %15 = alloca i32, align 4
  store %struct.nft_expr* %0, %struct.nft_expr** %4, align 8
  store %struct.nft_regs* %1, %struct.nft_regs** %5, align 8
  store %struct.nft_pktinfo* %2, %struct.nft_pktinfo** %6, align 8
  %16 = load %struct.nft_expr*, %struct.nft_expr** %4, align 8
  %17 = call %struct.nft_fib* @nft_expr_priv(%struct.nft_expr* %16)
  store %struct.nft_fib* %17, %struct.nft_fib** %7, align 8
  %18 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %19 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @skb_network_offset(i32 %20)
  store i32 %21, i32* %8, align 4
  store %struct.net_device* null, %struct.net_device** %9, align 8
  %22 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %23 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = load %struct.nft_fib*, %struct.nft_fib** %7, align 8
  %26 = getelementptr inbounds %struct.nft_fib, %struct.nft_fib* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i64, i64* %24, i64 %27
  store i64* %28, i64** %10, align 8
  %29 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %13, i32 0, i32 0
  %30 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %31 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %29, align 4
  %33 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %13, i32 0, i32 1
  %34 = load i32, i32* @LOOPBACK_IFINDEX, align 4
  store i32 %34, i32* %33, align 4
  %35 = load %struct.nft_fib*, %struct.nft_fib** %7, align 8
  %36 = getelementptr inbounds %struct.nft_fib, %struct.nft_fib* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @NFTA_FIB_F_IIF, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %3
  %42 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %43 = call %struct.net_device* @nft_in(%struct.nft_pktinfo* %42)
  store %struct.net_device* %43, %struct.net_device** %9, align 8
  br label %55

44:                                               ; preds = %3
  %45 = load %struct.nft_fib*, %struct.nft_fib** %7, align 8
  %46 = getelementptr inbounds %struct.nft_fib, %struct.nft_fib* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @NFTA_FIB_F_OIF, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %53 = call %struct.net_device* @nft_out(%struct.nft_pktinfo* %52)
  store %struct.net_device* %53, %struct.net_device** %9, align 8
  br label %54

54:                                               ; preds = %51, %44
  br label %55

55:                                               ; preds = %54, %41
  %56 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %57 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call %struct.ipv6hdr* @skb_header_pointer(i32 %58, i32 %59, i32 4, %struct.ipv6hdr* %12)
  store %struct.ipv6hdr* %60, %struct.ipv6hdr** %11, align 8
  %61 = load %struct.ipv6hdr*, %struct.ipv6hdr** %11, align 8
  %62 = icmp ne %struct.ipv6hdr* %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %55
  %64 = load i32, i32* @NFT_BREAK, align 4
  %65 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %66 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 8
  br label %145

68:                                               ; preds = %55
  %69 = load %struct.nft_fib*, %struct.nft_fib** %7, align 8
  %70 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %71 = load %struct.net_device*, %struct.net_device** %9, align 8
  %72 = load %struct.ipv6hdr*, %struct.ipv6hdr** %11, align 8
  %73 = call i32 @nft_fib6_flowi_init(%struct.flowi6* %13, %struct.nft_fib* %69, %struct.nft_pktinfo* %70, %struct.net_device* %71, %struct.ipv6hdr* %72)
  store i32 %73, i32* %15, align 4
  %74 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %75 = call i64 @nft_hook(%struct.nft_pktinfo* %74)
  %76 = load i64, i64* @NF_INET_PRE_ROUTING, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %92

78:                                               ; preds = %68
  %79 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %80 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %83 = call %struct.net_device* @nft_in(%struct.nft_pktinfo* %82)
  %84 = call i64 @nft_fib_is_loopback(i32 %81, %struct.net_device* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %78
  %87 = load i64*, i64** %10, align 8
  %88 = load %struct.nft_fib*, %struct.nft_fib** %7, align 8
  %89 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %90 = call %struct.net_device* @nft_in(%struct.nft_pktinfo* %89)
  %91 = call i32 @nft_fib_store_result(i64* %87, %struct.nft_fib* %88, %struct.net_device* %90)
  br label %145

92:                                               ; preds = %78, %68
  %93 = load i64*, i64** %10, align 8
  store i64 0, i64* %93, align 8
  %94 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %95 = call i32 @nft_net(%struct.nft_pktinfo* %94)
  %96 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %97 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %15, align 4
  %100 = call i64 @ip6_route_lookup(i32 %95, %struct.flowi6* %13, i32 %98, i32 %99)
  %101 = inttoptr i64 %100 to i8*
  %102 = bitcast i8* %101 to %struct.rt6_info*
  store %struct.rt6_info* %102, %struct.rt6_info** %14, align 8
  %103 = load %struct.rt6_info*, %struct.rt6_info** %14, align 8
  %104 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %92
  br label %142

109:                                              ; preds = %92
  %110 = load %struct.rt6_info*, %struct.rt6_info** %14, align 8
  %111 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @RTF_REJECT, align 4
  %114 = load i32, i32* @RTF_ANYCAST, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @RTF_LOCAL, align 4
  %117 = or i32 %115, %116
  %118 = and i32 %112, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %109
  br label %142

121:                                              ; preds = %109
  %122 = load %struct.net_device*, %struct.net_device** %9, align 8
  %123 = icmp ne %struct.net_device* %122, null
  br i1 %123, label %124, label %133

124:                                              ; preds = %121
  %125 = load %struct.net_device*, %struct.net_device** %9, align 8
  %126 = load %struct.rt6_info*, %struct.rt6_info** %14, align 8
  %127 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %126, i32 0, i32 1
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load %struct.net_device*, %struct.net_device** %129, align 8
  %131 = icmp ne %struct.net_device* %125, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %124
  br label %142

133:                                              ; preds = %124, %121
  %134 = load i64*, i64** %10, align 8
  %135 = load %struct.nft_fib*, %struct.nft_fib** %7, align 8
  %136 = load %struct.rt6_info*, %struct.rt6_info** %14, align 8
  %137 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %136, i32 0, i32 1
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load %struct.net_device*, %struct.net_device** %139, align 8
  %141 = call i32 @nft_fib_store_result(i64* %134, %struct.nft_fib* %135, %struct.net_device* %140)
  br label %142

142:                                              ; preds = %133, %132, %120, %108
  %143 = load %struct.rt6_info*, %struct.rt6_info** %14, align 8
  %144 = call i32 @ip6_rt_put(%struct.rt6_info* %143)
  br label %145

145:                                              ; preds = %142, %86, %63
  ret void
}

declare dso_local %struct.nft_fib* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @skb_network_offset(i32) #1

declare dso_local %struct.net_device* @nft_in(%struct.nft_pktinfo*) #1

declare dso_local %struct.net_device* @nft_out(%struct.nft_pktinfo*) #1

declare dso_local %struct.ipv6hdr* @skb_header_pointer(i32, i32, i32, %struct.ipv6hdr*) #1

declare dso_local i32 @nft_fib6_flowi_init(%struct.flowi6*, %struct.nft_fib*, %struct.nft_pktinfo*, %struct.net_device*, %struct.ipv6hdr*) #1

declare dso_local i64 @nft_hook(%struct.nft_pktinfo*) #1

declare dso_local i64 @nft_fib_is_loopback(i32, %struct.net_device*) #1

declare dso_local i32 @nft_fib_store_result(i64*, %struct.nft_fib*, %struct.net_device*) #1

declare dso_local i64 @ip6_route_lookup(i32, %struct.flowi6*, i32, i32) #1

declare dso_local i32 @nft_net(%struct.nft_pktinfo*) #1

declare dso_local i32 @ip6_rt_put(%struct.rt6_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
