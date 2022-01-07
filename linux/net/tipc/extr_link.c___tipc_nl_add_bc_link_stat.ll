; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_link.c___tipc_nl_add_bc_link_stat.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_link.c___tipc_nl_add_bc_link_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tipc_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nlattr = type { i32 }
%struct.nla_map = type { i32, i32 }
%struct.nla_map.0 = type opaque

@TIPC_NLA_STATS_RX_INFO = common dso_local global i32 0, align 4
@TIPC_NLA_STATS_RX_FRAGMENTS = common dso_local global i32 0, align 4
@TIPC_NLA_STATS_RX_FRAGMENTED = common dso_local global i32 0, align 4
@TIPC_NLA_STATS_RX_BUNDLES = common dso_local global i32 0, align 4
@TIPC_NLA_STATS_RX_BUNDLED = common dso_local global i32 0, align 4
@TIPC_NLA_STATS_TX_INFO = common dso_local global i32 0, align 4
@TIPC_NLA_STATS_TX_FRAGMENTS = common dso_local global i32 0, align 4
@TIPC_NLA_STATS_TX_FRAGMENTED = common dso_local global i32 0, align 4
@TIPC_NLA_STATS_TX_BUNDLES = common dso_local global i32 0, align 4
@TIPC_NLA_STATS_TX_BUNDLED = common dso_local global i32 0, align 4
@TIPC_NLA_STATS_RX_NACKS = common dso_local global i32 0, align 4
@TIPC_NLA_STATS_RX_DEFERRED = common dso_local global i32 0, align 4
@TIPC_NLA_STATS_TX_NACKS = common dso_local global i32 0, align 4
@TIPC_NLA_STATS_TX_ACKS = common dso_local global i32 0, align 4
@TIPC_NLA_STATS_RETRANSMITTED = common dso_local global i32 0, align 4
@TIPC_NLA_STATS_DUPLICATES = common dso_local global i32 0, align 4
@TIPC_NLA_STATS_LINK_CONGS = common dso_local global i32 0, align 4
@TIPC_NLA_STATS_MAX_QUEUE = common dso_local global i32 0, align 4
@TIPC_NLA_STATS_AVG_QUEUE = common dso_local global i32 0, align 4
@TIPC_NLA_LINK_STATS = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tipc_stats*)* @__tipc_nl_add_bc_link_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__tipc_nl_add_bc_link_stat(%struct.sk_buff* %0, %struct.tipc_stats* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.tipc_stats*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca [19 x %struct.nla_map], align 16
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.tipc_stats* %1, %struct.tipc_stats** %5, align 8
  %9 = getelementptr inbounds [19 x %struct.nla_map], [19 x %struct.nla_map]* %8, i64 0, i64 0
  %10 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %9, i32 0, i32 0
  %11 = load i32, i32* @TIPC_NLA_STATS_RX_INFO, align 4
  store i32 %11, i32* %10, align 8
  %12 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %9, i32 0, i32 1
  %13 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %14 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %12, align 4
  %16 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %9, i64 1
  %17 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %16, i32 0, i32 0
  %18 = load i32, i32* @TIPC_NLA_STATS_RX_FRAGMENTS, align 4
  store i32 %18, i32* %17, align 8
  %19 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %16, i32 0, i32 1
  %20 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %21 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %19, align 4
  %23 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %16, i64 1
  %24 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %23, i32 0, i32 0
  %25 = load i32, i32* @TIPC_NLA_STATS_RX_FRAGMENTED, align 4
  store i32 %25, i32* %24, align 8
  %26 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %23, i32 0, i32 1
  %27 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %28 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %26, align 4
  %30 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %23, i64 1
  %31 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %30, i32 0, i32 0
  %32 = load i32, i32* @TIPC_NLA_STATS_RX_BUNDLES, align 4
  store i32 %32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %30, i32 0, i32 1
  %34 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %35 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %33, align 4
  %37 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %30, i64 1
  %38 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %37, i32 0, i32 0
  %39 = load i32, i32* @TIPC_NLA_STATS_RX_BUNDLED, align 4
  store i32 %39, i32* %38, align 8
  %40 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %37, i32 0, i32 1
  %41 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %42 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %40, align 4
  %44 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %37, i64 1
  %45 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %44, i32 0, i32 0
  %46 = load i32, i32* @TIPC_NLA_STATS_TX_INFO, align 4
  store i32 %46, i32* %45, align 8
  %47 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %44, i32 0, i32 1
  %48 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %49 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %47, align 4
  %51 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %44, i64 1
  %52 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %51, i32 0, i32 0
  %53 = load i32, i32* @TIPC_NLA_STATS_TX_FRAGMENTS, align 4
  store i32 %53, i32* %52, align 8
  %54 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %51, i32 0, i32 1
  %55 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %56 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %54, align 4
  %58 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %51, i64 1
  %59 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %58, i32 0, i32 0
  %60 = load i32, i32* @TIPC_NLA_STATS_TX_FRAGMENTED, align 4
  store i32 %60, i32* %59, align 8
  %61 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %58, i32 0, i32 1
  %62 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %63 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %62, i32 0, i32 7
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %61, align 4
  %65 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %58, i64 1
  %66 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %65, i32 0, i32 0
  %67 = load i32, i32* @TIPC_NLA_STATS_TX_BUNDLES, align 4
  store i32 %67, i32* %66, align 8
  %68 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %65, i32 0, i32 1
  %69 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %70 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %69, i32 0, i32 8
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %68, align 4
  %72 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %65, i64 1
  %73 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %72, i32 0, i32 0
  %74 = load i32, i32* @TIPC_NLA_STATS_TX_BUNDLED, align 4
  store i32 %74, i32* %73, align 8
  %75 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %72, i32 0, i32 1
  %76 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %77 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %76, i32 0, i32 9
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %75, align 4
  %79 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %72, i64 1
  %80 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %79, i32 0, i32 0
  %81 = load i32, i32* @TIPC_NLA_STATS_RX_NACKS, align 4
  store i32 %81, i32* %80, align 8
  %82 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %79, i32 0, i32 1
  %83 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %84 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %83, i32 0, i32 10
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %82, align 4
  %86 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %79, i64 1
  %87 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %86, i32 0, i32 0
  %88 = load i32, i32* @TIPC_NLA_STATS_RX_DEFERRED, align 4
  store i32 %88, i32* %87, align 8
  %89 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %86, i32 0, i32 1
  %90 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %91 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %90, i32 0, i32 11
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %89, align 4
  %93 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %86, i64 1
  %94 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %93, i32 0, i32 0
  %95 = load i32, i32* @TIPC_NLA_STATS_TX_NACKS, align 4
  store i32 %95, i32* %94, align 8
  %96 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %93, i32 0, i32 1
  %97 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %98 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %97, i32 0, i32 12
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %96, align 4
  %100 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %93, i64 1
  %101 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %100, i32 0, i32 0
  %102 = load i32, i32* @TIPC_NLA_STATS_TX_ACKS, align 4
  store i32 %102, i32* %101, align 8
  %103 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %100, i32 0, i32 1
  %104 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %105 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %104, i32 0, i32 13
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %103, align 4
  %107 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %100, i64 1
  %108 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %107, i32 0, i32 0
  %109 = load i32, i32* @TIPC_NLA_STATS_RETRANSMITTED, align 4
  store i32 %109, i32* %108, align 8
  %110 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %107, i32 0, i32 1
  %111 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %112 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %111, i32 0, i32 14
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %110, align 4
  %114 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %107, i64 1
  %115 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %114, i32 0, i32 0
  %116 = load i32, i32* @TIPC_NLA_STATS_DUPLICATES, align 4
  store i32 %116, i32* %115, align 8
  %117 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %114, i32 0, i32 1
  %118 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %119 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %118, i32 0, i32 15
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %117, align 4
  %121 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %114, i64 1
  %122 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %121, i32 0, i32 0
  %123 = load i32, i32* @TIPC_NLA_STATS_LINK_CONGS, align 4
  store i32 %123, i32* %122, align 8
  %124 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %121, i32 0, i32 1
  %125 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %126 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %125, i32 0, i32 16
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %124, align 4
  %128 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %121, i64 1
  %129 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %128, i32 0, i32 0
  %130 = load i32, i32* @TIPC_NLA_STATS_MAX_QUEUE, align 4
  store i32 %130, i32* %129, align 8
  %131 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %128, i32 0, i32 1
  %132 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %133 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %132, i32 0, i32 17
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %131, align 4
  %135 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %128, i64 1
  %136 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %135, i32 0, i32 0
  %137 = load i32, i32* @TIPC_NLA_STATS_AVG_QUEUE, align 4
  store i32 %137, i32* %136, align 8
  %138 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %135, i32 0, i32 1
  %139 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %140 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %139, i32 0, i32 18
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %2
  %144 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %145 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %144, i32 0, i32 19
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %148 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %147, i32 0, i32 18
  %149 = load i32, i32* %148, align 4
  %150 = sdiv i32 %146, %149
  br label %152

151:                                              ; preds = %2
  br label %152

152:                                              ; preds = %151, %143
  %153 = phi i32 [ %150, %143 ], [ 0, %151 ]
  store i32 %153, i32* %138, align 4
  %154 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %155 = load i32, i32* @TIPC_NLA_LINK_STATS, align 4
  %156 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %154, i32 %155)
  store %struct.nlattr* %156, %struct.nlattr** %7, align 8
  %157 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %158 = icmp ne %struct.nlattr* %157, null
  br i1 %158, label %162, label %159

159:                                              ; preds = %152
  %160 = load i32, i32* @EMSGSIZE, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %3, align 4
  br label %198

162:                                              ; preds = %152
  store i32 0, i32* %6, align 4
  br label %163

163:                                              ; preds = %185, %162
  %164 = load i32, i32* %6, align 4
  %165 = getelementptr inbounds [19 x %struct.nla_map], [19 x %struct.nla_map]* %8, i64 0, i64 0
  %166 = bitcast %struct.nla_map* %165 to %struct.nla_map.0*
  %167 = call i32 @ARRAY_SIZE(%struct.nla_map.0* %166)
  %168 = icmp slt i32 %164, %167
  br i1 %168, label %169, label %188

169:                                              ; preds = %163
  %170 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %171 = load i32, i32* %6, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [19 x %struct.nla_map], [19 x %struct.nla_map]* %8, i64 0, i64 %172
  %174 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* %6, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [19 x %struct.nla_map], [19 x %struct.nla_map]* %8, i64 0, i64 %177
  %179 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i64 @nla_put_u32(%struct.sk_buff* %170, i32 %175, i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %169
  br label %192

184:                                              ; preds = %169
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %6, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %6, align 4
  br label %163

188:                                              ; preds = %163
  %189 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %190 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %191 = call i32 @nla_nest_end(%struct.sk_buff* %189, %struct.nlattr* %190)
  store i32 0, i32* %3, align 4
  br label %198

192:                                              ; preds = %183
  %193 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %194 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %195 = call i32 @nla_nest_cancel(%struct.sk_buff* %193, %struct.nlattr* %194)
  %196 = load i32, i32* @EMSGSIZE, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %3, align 4
  br label %198

198:                                              ; preds = %192, %188, %159
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.nla_map.0*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
