; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_link.c___tipc_nl_add_stats.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_link.c___tipc_nl_add_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tipc_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
@TIPC_NLA_STATS_MSG_PROF_TOT = common dso_local global i32 0, align 4
@TIPC_NLA_STATS_MSG_LEN_CNT = common dso_local global i32 0, align 4
@TIPC_NLA_STATS_MSG_LEN_TOT = common dso_local global i32 0, align 4
@TIPC_NLA_STATS_MSG_LEN_P0 = common dso_local global i32 0, align 4
@TIPC_NLA_STATS_MSG_LEN_P1 = common dso_local global i32 0, align 4
@TIPC_NLA_STATS_MSG_LEN_P2 = common dso_local global i32 0, align 4
@TIPC_NLA_STATS_MSG_LEN_P3 = common dso_local global i32 0, align 4
@TIPC_NLA_STATS_MSG_LEN_P4 = common dso_local global i32 0, align 4
@TIPC_NLA_STATS_MSG_LEN_P5 = common dso_local global i32 0, align 4
@TIPC_NLA_STATS_MSG_LEN_P6 = common dso_local global i32 0, align 4
@TIPC_NLA_STATS_RX_STATES = common dso_local global i32 0, align 4
@TIPC_NLA_STATS_RX_PROBES = common dso_local global i32 0, align 4
@TIPC_NLA_STATS_RX_NACKS = common dso_local global i32 0, align 4
@TIPC_NLA_STATS_RX_DEFERRED = common dso_local global i32 0, align 4
@TIPC_NLA_STATS_TX_STATES = common dso_local global i32 0, align 4
@TIPC_NLA_STATS_TX_PROBES = common dso_local global i32 0, align 4
@TIPC_NLA_STATS_TX_NACKS = common dso_local global i32 0, align 4
@TIPC_NLA_STATS_TX_ACKS = common dso_local global i32 0, align 4
@TIPC_NLA_STATS_RETRANSMITTED = common dso_local global i32 0, align 4
@TIPC_NLA_STATS_DUPLICATES = common dso_local global i32 0, align 4
@TIPC_NLA_STATS_LINK_CONGS = common dso_local global i32 0, align 4
@TIPC_NLA_STATS_MAX_QUEUE = common dso_local global i32 0, align 4
@TIPC_NLA_STATS_AVG_QUEUE = common dso_local global i32 0, align 4
@TIPC_NLA_LINK_STATS = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tipc_stats*)* @__tipc_nl_add_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__tipc_nl_add_stats(%struct.sk_buff* %0, %struct.tipc_stats* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.tipc_stats*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca [33 x %struct.nla_map], align 16
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.tipc_stats* %1, %struct.tipc_stats** %5, align 8
  %9 = getelementptr inbounds [33 x %struct.nla_map], [33 x %struct.nla_map]* %8, i64 0, i64 0
  %10 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %9, i32 0, i32 0
  %11 = load i32, i32* @TIPC_NLA_STATS_RX_INFO, align 4
  store i32 %11, i32* %10, align 8
  %12 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %9, i32 0, i32 1
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %9, i64 1
  %14 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %13, i32 0, i32 0
  %15 = load i32, i32* @TIPC_NLA_STATS_RX_FRAGMENTS, align 4
  store i32 %15, i32* %14, align 8
  %16 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %13, i32 0, i32 1
  %17 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %18 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %16, align 4
  %20 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %13, i64 1
  %21 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %20, i32 0, i32 0
  %22 = load i32, i32* @TIPC_NLA_STATS_RX_FRAGMENTED, align 4
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %20, i32 0, i32 1
  %24 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %25 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %23, align 4
  %27 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %20, i64 1
  %28 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %27, i32 0, i32 0
  %29 = load i32, i32* @TIPC_NLA_STATS_RX_BUNDLES, align 4
  store i32 %29, i32* %28, align 8
  %30 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %27, i32 0, i32 1
  %31 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %32 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %30, align 4
  %34 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %27, i64 1
  %35 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %34, i32 0, i32 0
  %36 = load i32, i32* @TIPC_NLA_STATS_RX_BUNDLED, align 4
  store i32 %36, i32* %35, align 8
  %37 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %34, i32 0, i32 1
  %38 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %39 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %37, align 4
  %41 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %34, i64 1
  %42 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %41, i32 0, i32 0
  %43 = load i32, i32* @TIPC_NLA_STATS_TX_INFO, align 4
  store i32 %43, i32* %42, align 8
  %44 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %41, i32 0, i32 1
  store i32 0, i32* %44, align 4
  %45 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %41, i64 1
  %46 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %45, i32 0, i32 0
  %47 = load i32, i32* @TIPC_NLA_STATS_TX_FRAGMENTS, align 4
  store i32 %47, i32* %46, align 8
  %48 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %45, i32 0, i32 1
  %49 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %50 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %48, align 4
  %52 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %45, i64 1
  %53 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %52, i32 0, i32 0
  %54 = load i32, i32* @TIPC_NLA_STATS_TX_FRAGMENTED, align 4
  store i32 %54, i32* %53, align 8
  %55 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %52, i32 0, i32 1
  %56 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %57 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %55, align 4
  %59 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %52, i64 1
  %60 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %59, i32 0, i32 0
  %61 = load i32, i32* @TIPC_NLA_STATS_TX_BUNDLES, align 4
  store i32 %61, i32* %60, align 8
  %62 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %59, i32 0, i32 1
  %63 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %64 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %62, align 4
  %66 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %59, i64 1
  %67 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %66, i32 0, i32 0
  %68 = load i32, i32* @TIPC_NLA_STATS_TX_BUNDLED, align 4
  store i32 %68, i32* %67, align 8
  %69 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %66, i32 0, i32 1
  %70 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %71 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %69, align 4
  %73 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %66, i64 1
  %74 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %73, i32 0, i32 0
  %75 = load i32, i32* @TIPC_NLA_STATS_MSG_PROF_TOT, align 4
  store i32 %75, i32* %74, align 8
  %76 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %73, i32 0, i32 1
  %77 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %78 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %77, i32 0, i32 8
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %2
  %82 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %83 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %82, i32 0, i32 8
  %84 = load i32, i32* %83, align 8
  br label %86

85:                                               ; preds = %2
  br label %86

86:                                               ; preds = %85, %81
  %87 = phi i32 [ %84, %81 ], [ 1, %85 ]
  store i32 %87, i32* %76, align 4
  %88 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %73, i64 1
  %89 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %88, i32 0, i32 0
  %90 = load i32, i32* @TIPC_NLA_STATS_MSG_LEN_CNT, align 4
  store i32 %90, i32* %89, align 8
  %91 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %88, i32 0, i32 1
  %92 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %93 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %92, i32 0, i32 8
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* %91, align 4
  %95 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %88, i64 1
  %96 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %95, i32 0, i32 0
  %97 = load i32, i32* @TIPC_NLA_STATS_MSG_LEN_TOT, align 4
  store i32 %97, i32* %96, align 8
  %98 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %95, i32 0, i32 1
  %99 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %100 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %99, i32 0, i32 9
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %98, align 4
  %102 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %95, i64 1
  %103 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %102, i32 0, i32 0
  %104 = load i32, i32* @TIPC_NLA_STATS_MSG_LEN_P0, align 4
  store i32 %104, i32* %103, align 8
  %105 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %102, i32 0, i32 1
  %106 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %107 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %106, i32 0, i32 10
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %105, align 4
  %111 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %102, i64 1
  %112 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %111, i32 0, i32 0
  %113 = load i32, i32* @TIPC_NLA_STATS_MSG_LEN_P1, align 4
  store i32 %113, i32* %112, align 8
  %114 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %111, i32 0, i32 1
  %115 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %116 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %115, i32 0, i32 10
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %114, align 4
  %120 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %111, i64 1
  %121 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %120, i32 0, i32 0
  %122 = load i32, i32* @TIPC_NLA_STATS_MSG_LEN_P2, align 4
  store i32 %122, i32* %121, align 8
  %123 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %120, i32 0, i32 1
  %124 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %125 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %124, i32 0, i32 10
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 2
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %123, align 4
  %129 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %120, i64 1
  %130 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %129, i32 0, i32 0
  %131 = load i32, i32* @TIPC_NLA_STATS_MSG_LEN_P3, align 4
  store i32 %131, i32* %130, align 8
  %132 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %129, i32 0, i32 1
  %133 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %134 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %133, i32 0, i32 10
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 3
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %132, align 4
  %138 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %129, i64 1
  %139 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %138, i32 0, i32 0
  %140 = load i32, i32* @TIPC_NLA_STATS_MSG_LEN_P4, align 4
  store i32 %140, i32* %139, align 8
  %141 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %138, i32 0, i32 1
  %142 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %143 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %142, i32 0, i32 10
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 4
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %141, align 4
  %147 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %138, i64 1
  %148 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %147, i32 0, i32 0
  %149 = load i32, i32* @TIPC_NLA_STATS_MSG_LEN_P5, align 4
  store i32 %149, i32* %148, align 8
  %150 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %147, i32 0, i32 1
  %151 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %152 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %151, i32 0, i32 10
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 5
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* %150, align 4
  %156 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %147, i64 1
  %157 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %156, i32 0, i32 0
  %158 = load i32, i32* @TIPC_NLA_STATS_MSG_LEN_P6, align 4
  store i32 %158, i32* %157, align 8
  %159 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %156, i32 0, i32 1
  %160 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %161 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %160, i32 0, i32 10
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 6
  %164 = load i32, i32* %163, align 4
  store i32 %164, i32* %159, align 4
  %165 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %156, i64 1
  %166 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %165, i32 0, i32 0
  %167 = load i32, i32* @TIPC_NLA_STATS_RX_STATES, align 4
  store i32 %167, i32* %166, align 8
  %168 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %165, i32 0, i32 1
  %169 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %170 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %169, i32 0, i32 11
  %171 = load i32, i32* %170, align 8
  store i32 %171, i32* %168, align 4
  %172 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %165, i64 1
  %173 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %172, i32 0, i32 0
  %174 = load i32, i32* @TIPC_NLA_STATS_RX_PROBES, align 4
  store i32 %174, i32* %173, align 8
  %175 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %172, i32 0, i32 1
  %176 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %177 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %176, i32 0, i32 12
  %178 = load i32, i32* %177, align 4
  store i32 %178, i32* %175, align 4
  %179 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %172, i64 1
  %180 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %179, i32 0, i32 0
  %181 = load i32, i32* @TIPC_NLA_STATS_RX_NACKS, align 4
  store i32 %181, i32* %180, align 8
  %182 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %179, i32 0, i32 1
  %183 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %184 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %183, i32 0, i32 13
  %185 = load i32, i32* %184, align 8
  store i32 %185, i32* %182, align 4
  %186 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %179, i64 1
  %187 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %186, i32 0, i32 0
  %188 = load i32, i32* @TIPC_NLA_STATS_RX_DEFERRED, align 4
  store i32 %188, i32* %187, align 8
  %189 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %186, i32 0, i32 1
  %190 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %191 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %190, i32 0, i32 14
  %192 = load i32, i32* %191, align 4
  store i32 %192, i32* %189, align 4
  %193 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %186, i64 1
  %194 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %193, i32 0, i32 0
  %195 = load i32, i32* @TIPC_NLA_STATS_TX_STATES, align 4
  store i32 %195, i32* %194, align 8
  %196 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %193, i32 0, i32 1
  %197 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %198 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %197, i32 0, i32 15
  %199 = load i32, i32* %198, align 8
  store i32 %199, i32* %196, align 4
  %200 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %193, i64 1
  %201 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %200, i32 0, i32 0
  %202 = load i32, i32* @TIPC_NLA_STATS_TX_PROBES, align 4
  store i32 %202, i32* %201, align 8
  %203 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %200, i32 0, i32 1
  %204 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %205 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %204, i32 0, i32 16
  %206 = load i32, i32* %205, align 4
  store i32 %206, i32* %203, align 4
  %207 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %200, i64 1
  %208 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %207, i32 0, i32 0
  %209 = load i32, i32* @TIPC_NLA_STATS_TX_NACKS, align 4
  store i32 %209, i32* %208, align 8
  %210 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %207, i32 0, i32 1
  %211 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %212 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %211, i32 0, i32 17
  %213 = load i32, i32* %212, align 8
  store i32 %213, i32* %210, align 4
  %214 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %207, i64 1
  %215 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %214, i32 0, i32 0
  %216 = load i32, i32* @TIPC_NLA_STATS_TX_ACKS, align 4
  store i32 %216, i32* %215, align 8
  %217 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %214, i32 0, i32 1
  %218 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %219 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %218, i32 0, i32 18
  %220 = load i32, i32* %219, align 4
  store i32 %220, i32* %217, align 4
  %221 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %214, i64 1
  %222 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %221, i32 0, i32 0
  %223 = load i32, i32* @TIPC_NLA_STATS_RETRANSMITTED, align 4
  store i32 %223, i32* %222, align 8
  %224 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %221, i32 0, i32 1
  %225 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %226 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %225, i32 0, i32 19
  %227 = load i32, i32* %226, align 8
  store i32 %227, i32* %224, align 4
  %228 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %221, i64 1
  %229 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %228, i32 0, i32 0
  %230 = load i32, i32* @TIPC_NLA_STATS_DUPLICATES, align 4
  store i32 %230, i32* %229, align 8
  %231 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %228, i32 0, i32 1
  %232 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %233 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %232, i32 0, i32 20
  %234 = load i32, i32* %233, align 4
  store i32 %234, i32* %231, align 4
  %235 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %228, i64 1
  %236 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %235, i32 0, i32 0
  %237 = load i32, i32* @TIPC_NLA_STATS_LINK_CONGS, align 4
  store i32 %237, i32* %236, align 8
  %238 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %235, i32 0, i32 1
  %239 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %240 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %239, i32 0, i32 21
  %241 = load i32, i32* %240, align 8
  store i32 %241, i32* %238, align 4
  %242 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %235, i64 1
  %243 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %242, i32 0, i32 0
  %244 = load i32, i32* @TIPC_NLA_STATS_MAX_QUEUE, align 4
  store i32 %244, i32* %243, align 8
  %245 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %242, i32 0, i32 1
  %246 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %247 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %246, i32 0, i32 22
  %248 = load i32, i32* %247, align 4
  store i32 %248, i32* %245, align 4
  %249 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %242, i64 1
  %250 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %249, i32 0, i32 0
  %251 = load i32, i32* @TIPC_NLA_STATS_AVG_QUEUE, align 4
  store i32 %251, i32* %250, align 8
  %252 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %249, i32 0, i32 1
  %253 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %254 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %253, i32 0, i32 23
  %255 = load i32, i32* %254, align 8
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %265

257:                                              ; preds = %86
  %258 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %259 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %258, i32 0, i32 24
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.tipc_stats*, %struct.tipc_stats** %5, align 8
  %262 = getelementptr inbounds %struct.tipc_stats, %struct.tipc_stats* %261, i32 0, i32 23
  %263 = load i32, i32* %262, align 8
  %264 = sdiv i32 %260, %263
  br label %266

265:                                              ; preds = %86
  br label %266

266:                                              ; preds = %265, %257
  %267 = phi i32 [ %264, %257 ], [ 0, %265 ]
  store i32 %267, i32* %252, align 4
  %268 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %269 = load i32, i32* @TIPC_NLA_LINK_STATS, align 4
  %270 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %268, i32 %269)
  store %struct.nlattr* %270, %struct.nlattr** %7, align 8
  %271 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %272 = icmp ne %struct.nlattr* %271, null
  br i1 %272, label %276, label %273

273:                                              ; preds = %266
  %274 = load i32, i32* @EMSGSIZE, align 4
  %275 = sub nsw i32 0, %274
  store i32 %275, i32* %3, align 4
  br label %312

276:                                              ; preds = %266
  store i32 0, i32* %6, align 4
  br label %277

277:                                              ; preds = %299, %276
  %278 = load i32, i32* %6, align 4
  %279 = getelementptr inbounds [33 x %struct.nla_map], [33 x %struct.nla_map]* %8, i64 0, i64 0
  %280 = bitcast %struct.nla_map* %279 to %struct.nla_map.0*
  %281 = call i32 @ARRAY_SIZE(%struct.nla_map.0* %280)
  %282 = icmp slt i32 %278, %281
  br i1 %282, label %283, label %302

283:                                              ; preds = %277
  %284 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %285 = load i32, i32* %6, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds [33 x %struct.nla_map], [33 x %struct.nla_map]* %8, i64 0, i64 %286
  %288 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* %6, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds [33 x %struct.nla_map], [33 x %struct.nla_map]* %8, i64 0, i64 %291
  %293 = getelementptr inbounds %struct.nla_map, %struct.nla_map* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = call i64 @nla_put_u32(%struct.sk_buff* %284, i32 %289, i32 %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %298

297:                                              ; preds = %283
  br label %306

298:                                              ; preds = %283
  br label %299

299:                                              ; preds = %298
  %300 = load i32, i32* %6, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %6, align 4
  br label %277

302:                                              ; preds = %277
  %303 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %304 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %305 = call i32 @nla_nest_end(%struct.sk_buff* %303, %struct.nlattr* %304)
  store i32 0, i32* %3, align 4
  br label %312

306:                                              ; preds = %297
  %307 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %308 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %309 = call i32 @nla_nest_cancel(%struct.sk_buff* %307, %struct.nlattr* %308)
  %310 = load i32, i32* @EMSGSIZE, align 4
  %311 = sub nsw i32 0, %310
  store i32 %311, i32* %3, align 4
  br label %312

312:                                              ; preds = %306, %302, %273
  %313 = load i32, i32* %3, align 4
  ret i32 %313
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
