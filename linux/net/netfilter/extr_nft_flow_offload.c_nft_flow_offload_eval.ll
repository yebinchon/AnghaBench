; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_flow_offload.c_nft_flow_offload_eval.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_flow_offload.c_nft_flow_offload_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_expr = type { i32 }
%struct.nft_regs = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.nft_pktinfo = type { %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.nft_flow_offload = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.nf_flowtable }
%struct.nf_flowtable = type { i32 }
%struct.tcphdr = type { i32, i32 }
%struct.nf_flow_route = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.flow_offload = type { i32 }
%struct.nf_conn = type { i32, %struct.TYPE_19__, %struct.TYPE_15__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@IP_CT_DIR_ORIGINAL = common dso_local global i64 0, align 8
@NF_CT_EXT_HELPER = common dso_local global i32 0, align 4
@IPS_SEQ_ADJUST = common dso_local global i32 0, align 4
@IPS_OFFLOAD_BIT = common dso_local global i32 0, align 4
@IP_CT_TCP_FLAG_BE_LIBERAL = common dso_local global i32 0, align 4
@NFT_BREAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_expr*, %struct.nft_regs*, %struct.nft_pktinfo*)* @nft_flow_offload_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_flow_offload_eval(%struct.nft_expr* %0, %struct.nft_regs* %1, %struct.nft_pktinfo* %2) #0 {
  %4 = alloca %struct.nft_expr*, align 8
  %5 = alloca %struct.nft_regs*, align 8
  %6 = alloca %struct.nft_pktinfo*, align 8
  %7 = alloca %struct.nft_flow_offload*, align 8
  %8 = alloca %struct.nf_flowtable*, align 8
  %9 = alloca %struct.tcphdr, align 4
  %10 = alloca %struct.tcphdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nf_flow_route, align 8
  %13 = alloca %struct.flow_offload*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.nf_conn*, align 8
  %16 = alloca i32, align 4
  store %struct.nft_expr* %0, %struct.nft_expr** %4, align 8
  store %struct.nft_regs* %1, %struct.nft_regs** %5, align 8
  store %struct.nft_pktinfo* %2, %struct.nft_pktinfo** %6, align 8
  %17 = load %struct.nft_expr*, %struct.nft_expr** %4, align 8
  %18 = call %struct.nft_flow_offload* @nft_expr_priv(%struct.nft_expr* %17)
  store %struct.nft_flow_offload* %18, %struct.nft_flow_offload** %7, align 8
  %19 = load %struct.nft_flow_offload*, %struct.nft_flow_offload** %7, align 8
  %20 = getelementptr inbounds %struct.nft_flow_offload, %struct.nft_flow_offload* %19, i32 0, i32 0
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  store %struct.nf_flowtable* %22, %struct.nf_flowtable** %8, align 8
  store %struct.tcphdr* null, %struct.tcphdr** %10, align 8
  %23 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %24 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %27 = call i32 @nft_pf(%struct.nft_pktinfo* %26)
  %28 = call i64 @nft_flow_offload_skip(i32 %25, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  br label %182

31:                                               ; preds = %3
  %32 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %33 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.nf_conn* @nf_ct_get(i32 %34, i32* %11)
  store %struct.nf_conn* %35, %struct.nf_conn** %15, align 8
  %36 = load %struct.nf_conn*, %struct.nf_conn** %15, align 8
  %37 = icmp ne %struct.nf_conn* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  br label %182

39:                                               ; preds = %31
  %40 = load %struct.nf_conn*, %struct.nf_conn** %15, align 8
  %41 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %40, i32 0, i32 2
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %41, align 8
  %43 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %78 [
    i32 129, label %49
    i32 128, label %77
  ]

49:                                               ; preds = %39
  %50 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %51 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %54 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.tcphdr* @skb_header_pointer(i32 %52, i32 %56, i32 8, %struct.tcphdr* %9)
  store %struct.tcphdr* %57, %struct.tcphdr** %10, align 8
  %58 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %59 = icmp ne %struct.tcphdr* %58, null
  br i1 %59, label %60, label %70

60:                                               ; preds = %49
  %61 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %62 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %67 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br label %70

70:                                               ; preds = %65, %60, %49
  %71 = phi i1 [ true, %60 ], [ true, %49 ], [ %69, %65 ]
  %72 = zext i1 %71 to i32
  %73 = call i32 @unlikely(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %182

76:                                               ; preds = %70
  br label %79

77:                                               ; preds = %39
  br label %79

78:                                               ; preds = %39
  br label %182

79:                                               ; preds = %77, %76
  %80 = load %struct.nf_conn*, %struct.nf_conn** %15, align 8
  %81 = load i32, i32* @NF_CT_EXT_HELPER, align 4
  %82 = call i64 @nf_ct_ext_exist(%struct.nf_conn* %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %79
  %85 = load %struct.nf_conn*, %struct.nf_conn** %15, align 8
  %86 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @IPS_SEQ_ADJUST, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84, %79
  br label %182

92:                                               ; preds = %84
  %93 = load %struct.nf_conn*, %struct.nf_conn** %15, align 8
  %94 = call i32 @nf_ct_is_confirmed(%struct.nf_conn* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %92
  br label %182

97:                                               ; preds = %92
  %98 = load i32, i32* @IPS_OFFLOAD_BIT, align 4
  %99 = load %struct.nf_conn*, %struct.nf_conn** %15, align 8
  %100 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %99, i32 0, i32 0
  %101 = call i64 @test_and_set_bit(i32 %98, i32* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %182

104:                                              ; preds = %97
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @CTINFO2DIR(i32 %105)
  store i32 %106, i32* %14, align 4
  %107 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %108 = load %struct.nf_conn*, %struct.nf_conn** %15, align 8
  %109 = load i32, i32* %14, align 4
  %110 = call i64 @nft_flow_route(%struct.nft_pktinfo* %107, %struct.nf_conn* %108, %struct.nf_flow_route* %12, i32 %109)
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %104
  br label %177

113:                                              ; preds = %104
  %114 = load %struct.nf_conn*, %struct.nf_conn** %15, align 8
  %115 = call %struct.flow_offload* @flow_offload_alloc(%struct.nf_conn* %114, %struct.nf_flow_route* %12)
  store %struct.flow_offload* %115, %struct.flow_offload** %13, align 8
  %116 = load %struct.flow_offload*, %struct.flow_offload** %13, align 8
  %117 = icmp ne %struct.flow_offload* %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %113
  br label %165

119:                                              ; preds = %113
  %120 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %121 = icmp ne %struct.tcphdr* %120, null
  br i1 %121, label %122, label %143

122:                                              ; preds = %119
  %123 = load i32, i32* @IP_CT_TCP_FLAG_BE_LIBERAL, align 4
  %124 = load %struct.nf_conn*, %struct.nf_conn** %15, align 8
  %125 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i64 0
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %123
  store i32 %132, i32* %130, align 4
  %133 = load i32, i32* @IP_CT_TCP_FLAG_BE_LIBERAL, align 4
  %134 = load %struct.nf_conn*, %struct.nf_conn** %15, align 8
  %135 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i64 1
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %133
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %122, %119
  %144 = load %struct.nf_flowtable*, %struct.nf_flowtable** %8, align 8
  %145 = load %struct.flow_offload*, %struct.flow_offload** %13, align 8
  %146 = call i32 @flow_offload_add(%struct.nf_flowtable* %144, %struct.flow_offload* %145)
  store i32 %146, i32* %16, align 4
  %147 = load i32, i32* %16, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %143
  br label %162

150:                                              ; preds = %143
  %151 = getelementptr inbounds %struct.nf_flow_route, %struct.nf_flow_route* %12, i32 0, i32 0
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %151, align 8
  %153 = load i32, i32* %14, align 4
  %154 = icmp ne i32 %153, 0
  %155 = xor i1 %154, true
  %156 = zext i1 %155 to i32
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @dst_release(i32 %160)
  br label %187

162:                                              ; preds = %149
  %163 = load %struct.flow_offload*, %struct.flow_offload** %13, align 8
  %164 = call i32 @flow_offload_free(%struct.flow_offload* %163)
  br label %165

165:                                              ; preds = %162, %118
  %166 = getelementptr inbounds %struct.nf_flow_route, %struct.nf_flow_route* %12, i32 0, i32 0
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %166, align 8
  %168 = load i32, i32* %14, align 4
  %169 = icmp ne i32 %168, 0
  %170 = xor i1 %169, true
  %171 = zext i1 %170 to i32
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @dst_release(i32 %175)
  br label %177

177:                                              ; preds = %165, %112
  %178 = load i32, i32* @IPS_OFFLOAD_BIT, align 4
  %179 = load %struct.nf_conn*, %struct.nf_conn** %15, align 8
  %180 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %179, i32 0, i32 0
  %181 = call i32 @clear_bit(i32 %178, i32* %180)
  br label %182

182:                                              ; preds = %177, %103, %96, %91, %78, %75, %38, %30
  %183 = load i32, i32* @NFT_BREAK, align 4
  %184 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %185 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 0
  store i32 %183, i32* %186, align 4
  br label %187

187:                                              ; preds = %182, %150
  ret void
}

declare dso_local %struct.nft_flow_offload* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i64 @nft_flow_offload_skip(i32, i32) #1

declare dso_local i32 @nft_pf(%struct.nft_pktinfo*) #1

declare dso_local %struct.nf_conn* @nf_ct_get(i32, i32*) #1

declare dso_local %struct.tcphdr* @skb_header_pointer(i32, i32, i32, %struct.tcphdr*) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i64 @nf_ct_ext_exist(%struct.nf_conn*, i32) #1

declare dso_local i32 @nf_ct_is_confirmed(%struct.nf_conn*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @CTINFO2DIR(i32) #1

declare dso_local i64 @nft_flow_route(%struct.nft_pktinfo*, %struct.nf_conn*, %struct.nf_flow_route*, i32) #1

declare dso_local %struct.flow_offload* @flow_offload_alloc(%struct.nf_conn*, %struct.nf_flow_route*) #1

declare dso_local i32 @flow_offload_add(%struct.nf_flowtable*, %struct.flow_offload*) #1

declare dso_local i32 @dst_release(i32) #1

declare dso_local i32 @flow_offload_free(%struct.flow_offload*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
