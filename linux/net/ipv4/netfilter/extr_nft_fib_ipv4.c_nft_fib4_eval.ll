; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_nft_fib_ipv4.c_nft_fib4_eval.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_nft_fib_ipv4.c_nft_fib4_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_expr = type { i32 }
%struct.nft_regs = type { %struct.TYPE_5__, i64* }
%struct.TYPE_5__ = type { i32 }
%struct.nft_pktinfo = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.nft_fib = type { i64, i32 }
%struct.iphdr = type { i32, i32, i32 }
%struct.fib_result = type { i32, i32 }
%struct.flowi4 = type { i32, i8*, i32, i32, i32, i32 }

@LOOPBACK_IFINDEX = common dso_local global i32 0, align 4
@RT_SCOPE_UNIVERSE = common dso_local global i32 0, align 4
@NFTA_FIB_F_OIF = common dso_local global i32 0, align 4
@NFTA_FIB_F_IIF = common dso_local global i32 0, align 4
@NF_INET_PRE_ROUTING = common dso_local global i64 0, align 8
@NFT_BREAK = common dso_local global i32 0, align 4
@NFTA_FIB_F_MARK = common dso_local global i32 0, align 4
@DSCP_BITS = common dso_local global i32 0, align 4
@NFTA_FIB_F_DADDR = common dso_local global i32 0, align 4
@FIB_LOOKUP_IGNORE_LINKSTATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nft_fib4_eval(%struct.nft_expr* %0, %struct.nft_regs* %1, %struct.nft_pktinfo* %2) #0 {
  %4 = alloca %struct.nft_expr*, align 8
  %5 = alloca %struct.nft_regs*, align 8
  %6 = alloca %struct.nft_pktinfo*, align 8
  %7 = alloca %struct.nft_fib*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.iphdr*, align 8
  %11 = alloca %struct.iphdr, align 4
  %12 = alloca %struct.fib_result, align 4
  %13 = alloca %struct.flowi4, align 8
  %14 = alloca %struct.net_device*, align 8
  %15 = alloca %struct.net_device*, align 8
  store %struct.nft_expr* %0, %struct.nft_expr** %4, align 8
  store %struct.nft_regs* %1, %struct.nft_regs** %5, align 8
  store %struct.nft_pktinfo* %2, %struct.nft_pktinfo** %6, align 8
  %16 = load %struct.nft_expr*, %struct.nft_expr** %4, align 8
  %17 = call %struct.nft_fib* @nft_expr_priv(%struct.nft_expr* %16)
  store %struct.nft_fib* %17, %struct.nft_fib** %7, align 8
  %18 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %19 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = call i32 @skb_network_offset(%struct.TYPE_6__* %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %23 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = load %struct.nft_fib*, %struct.nft_fib** %7, align 8
  %26 = getelementptr inbounds %struct.nft_fib, %struct.nft_fib* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i64, i64* %24, i64 %27
  store i64* %28, i64** %9, align 8
  %29 = bitcast %struct.flowi4* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %29, i8 0, i64 32, i1 false)
  %30 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %13, i32 0, i32 4
  %31 = load i32, i32* @LOOPBACK_IFINDEX, align 4
  store i32 %31, i32* %30, align 8
  %32 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %13, i32 0, i32 5
  %33 = load i32, i32* @RT_SCOPE_UNIVERSE, align 4
  store i32 %33, i32* %32, align 4
  %34 = load %struct.nft_fib*, %struct.nft_fib** %7, align 8
  %35 = getelementptr inbounds %struct.nft_fib, %struct.nft_fib* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @NFTA_FIB_F_OIF, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %3
  %41 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %42 = call %struct.net_device* @nft_out(%struct.nft_pktinfo* %41)
  store %struct.net_device* %42, %struct.net_device** %14, align 8
  br label %55

43:                                               ; preds = %3
  %44 = load %struct.nft_fib*, %struct.nft_fib** %7, align 8
  %45 = getelementptr inbounds %struct.nft_fib, %struct.nft_fib* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @NFTA_FIB_F_IIF, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %52 = call %struct.net_device* @nft_in(%struct.nft_pktinfo* %51)
  store %struct.net_device* %52, %struct.net_device** %14, align 8
  br label %54

53:                                               ; preds = %43
  store %struct.net_device* null, %struct.net_device** %14, align 8
  br label %54

54:                                               ; preds = %53, %50
  br label %55

55:                                               ; preds = %54, %40
  %56 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %57 = call i64 @nft_hook(%struct.nft_pktinfo* %56)
  %58 = load i64, i64* @NF_INET_PRE_ROUTING, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %55
  %61 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %62 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %65 = call %struct.net_device* @nft_in(%struct.nft_pktinfo* %64)
  %66 = call i64 @nft_fib_is_loopback(%struct.TYPE_6__* %63, %struct.net_device* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %60
  %69 = load i64*, i64** %9, align 8
  %70 = load %struct.nft_fib*, %struct.nft_fib** %7, align 8
  %71 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %72 = call %struct.net_device* @nft_in(%struct.nft_pktinfo* %71)
  %73 = call i32 @nft_fib_store_result(i64* %69, %struct.nft_fib* %70, %struct.net_device* %72)
  br label %197

74:                                               ; preds = %60, %55
  %75 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %76 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %75, i32 0, i32 0
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call %struct.iphdr* @skb_header_pointer(%struct.TYPE_6__* %77, i32 %78, i32 12, %struct.iphdr* %11)
  store %struct.iphdr* %79, %struct.iphdr** %10, align 8
  %80 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %81 = icmp ne %struct.iphdr* %80, null
  br i1 %81, label %87, label %82

82:                                               ; preds = %74
  %83 = load i32, i32* @NFT_BREAK, align 4
  %84 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %85 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 8
  br label %197

87:                                               ; preds = %74
  %88 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %89 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @ipv4_is_zeronet(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %115

93:                                               ; preds = %87
  %94 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %95 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @ipv4_is_lbcast(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %93
  %100 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %101 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @ipv4_is_local_multicast(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %99, %93
  %106 = load i64*, i64** %9, align 8
  %107 = load %struct.nft_fib*, %struct.nft_fib** %7, align 8
  %108 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %109 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %108, i32 0, i32 0
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load %struct.net_device*, %struct.net_device** %111, align 8
  %113 = call i32 @nft_fib_store_result(i64* %106, %struct.nft_fib* %107, %struct.net_device* %112)
  br label %197

114:                                              ; preds = %99
  br label %115

115:                                              ; preds = %114, %87
  %116 = load %struct.nft_fib*, %struct.nft_fib** %7, align 8
  %117 = getelementptr inbounds %struct.nft_fib, %struct.nft_fib* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @NFTA_FIB_F_MARK, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %115
  %123 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %124 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %123, i32 0, i32 0
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %13, i32 0, i32 3
  store i32 %127, i32* %128, align 4
  br label %129

129:                                              ; preds = %122, %115
  %130 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %131 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @DSCP_BITS, align 4
  %134 = and i32 %132, %133
  %135 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %13, i32 0, i32 0
  store i32 %134, i32* %135, align 8
  %136 = load %struct.nft_fib*, %struct.nft_fib** %7, align 8
  %137 = getelementptr inbounds %struct.nft_fib, %struct.nft_fib* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @NFTA_FIB_F_DADDR, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %152

142:                                              ; preds = %129
  %143 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %144 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %13, i32 0, i32 2
  store i32 %145, i32* %146, align 8
  %147 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %148 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = call i8* @get_saddr(i32 %149)
  %151 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %13, i32 0, i32 1
  store i8* %150, i8** %151, align 8
  br label %162

152:                                              ; preds = %129
  %153 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %154 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %13, i32 0, i32 2
  store i32 %155, i32* %156, align 8
  %157 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %158 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i8* @get_saddr(i32 %159)
  %161 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %13, i32 0, i32 1
  store i8* %160, i8** %161, align 8
  br label %162

162:                                              ; preds = %152, %142
  %163 = load i64*, i64** %9, align 8
  store i64 0, i64* %163, align 8
  %164 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %165 = call i32 @nft_net(%struct.nft_pktinfo* %164)
  %166 = load i32, i32* @FIB_LOOKUP_IGNORE_LINKSTATE, align 4
  %167 = call i64 @fib_lookup(i32 %165, %struct.flowi4* %13, %struct.fib_result* %12, i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %162
  br label %197

170:                                              ; preds = %162
  %171 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %12, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  switch i32 %172, label %175 [
    i32 128, label %173
    i32 129, label %174
  ]

173:                                              ; preds = %170
  br label %176

174:                                              ; preds = %170
  br label %197

175:                                              ; preds = %170
  br label %176

176:                                              ; preds = %175, %173
  %177 = load %struct.net_device*, %struct.net_device** %14, align 8
  %178 = icmp ne %struct.net_device* %177, null
  br i1 %178, label %183, label %179

179:                                              ; preds = %176
  %180 = bitcast %struct.fib_result* %12 to i64*
  %181 = load i64, i64* %180, align 4
  %182 = call %struct.net_device* @FIB_RES_DEV(i64 %181)
  store %struct.net_device* %182, %struct.net_device** %15, align 8
  br label %192

183:                                              ; preds = %176
  %184 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %12, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.net_device*, %struct.net_device** %14, align 8
  %187 = call i32 @fib_info_nh_uses_dev(i32 %185, %struct.net_device* %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %183
  br label %197

190:                                              ; preds = %183
  %191 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %191, %struct.net_device** %15, align 8
  br label %192

192:                                              ; preds = %190, %179
  %193 = load i64*, i64** %9, align 8
  %194 = load %struct.nft_fib*, %struct.nft_fib** %7, align 8
  %195 = load %struct.net_device*, %struct.net_device** %15, align 8
  %196 = call i32 @nft_fib_store_result(i64* %193, %struct.nft_fib* %194, %struct.net_device* %195)
  br label %197

197:                                              ; preds = %192, %189, %174, %169, %105, %82, %68
  ret void
}

declare dso_local %struct.nft_fib* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @skb_network_offset(%struct.TYPE_6__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.net_device* @nft_out(%struct.nft_pktinfo*) #1

declare dso_local %struct.net_device* @nft_in(%struct.nft_pktinfo*) #1

declare dso_local i64 @nft_hook(%struct.nft_pktinfo*) #1

declare dso_local i64 @nft_fib_is_loopback(%struct.TYPE_6__*, %struct.net_device*) #1

declare dso_local i32 @nft_fib_store_result(i64*, %struct.nft_fib*, %struct.net_device*) #1

declare dso_local %struct.iphdr* @skb_header_pointer(%struct.TYPE_6__*, i32, i32, %struct.iphdr*) #1

declare dso_local i64 @ipv4_is_zeronet(i32) #1

declare dso_local i64 @ipv4_is_lbcast(i32) #1

declare dso_local i64 @ipv4_is_local_multicast(i32) #1

declare dso_local i8* @get_saddr(i32) #1

declare dso_local i64 @fib_lookup(i32, %struct.flowi4*, %struct.fib_result*, i32) #1

declare dso_local i32 @nft_net(%struct.nft_pktinfo*) #1

declare dso_local %struct.net_device* @FIB_RES_DEV(i64) #1

declare dso_local i32 @fib_info_nh_uses_dev(i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
