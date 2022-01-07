; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_neightbl_fill_parms.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_neightbl_fill_parms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.neigh_parms = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nlattr = type { i32 }

@NDTA_PARMS = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@NDTPA_IFINDEX = common dso_local global i32 0, align 4
@NDTPA_REFCNT = common dso_local global i32 0, align 4
@NDTPA_QUEUE_LENBYTES = common dso_local global i32 0, align 4
@QUEUE_LEN_BYTES = common dso_local global i32 0, align 4
@NDTPA_QUEUE_LEN = common dso_local global i32 0, align 4
@ETH_FRAME_LEN = common dso_local global i32 0, align 4
@NDTPA_PROXY_QLEN = common dso_local global i32 0, align 4
@PROXY_QLEN = common dso_local global i32 0, align 4
@NDTPA_APP_PROBES = common dso_local global i32 0, align 4
@APP_PROBES = common dso_local global i32 0, align 4
@NDTPA_UCAST_PROBES = common dso_local global i32 0, align 4
@UCAST_PROBES = common dso_local global i32 0, align 4
@NDTPA_MCAST_PROBES = common dso_local global i32 0, align 4
@MCAST_PROBES = common dso_local global i32 0, align 4
@NDTPA_MCAST_REPROBES = common dso_local global i32 0, align 4
@MCAST_REPROBES = common dso_local global i32 0, align 4
@NDTPA_REACHABLE_TIME = common dso_local global i32 0, align 4
@NDTPA_PAD = common dso_local global i32 0, align 4
@NDTPA_BASE_REACHABLE_TIME = common dso_local global i32 0, align 4
@BASE_REACHABLE_TIME = common dso_local global i32 0, align 4
@NDTPA_GC_STALETIME = common dso_local global i32 0, align 4
@GC_STALETIME = common dso_local global i32 0, align 4
@NDTPA_DELAY_PROBE_TIME = common dso_local global i32 0, align 4
@DELAY_PROBE_TIME = common dso_local global i32 0, align 4
@NDTPA_RETRANS_TIME = common dso_local global i32 0, align 4
@RETRANS_TIME = common dso_local global i32 0, align 4
@NDTPA_ANYCAST_DELAY = common dso_local global i32 0, align 4
@ANYCAST_DELAY = common dso_local global i32 0, align 4
@NDTPA_PROXY_DELAY = common dso_local global i32 0, align 4
@PROXY_DELAY = common dso_local global i32 0, align 4
@NDTPA_LOCKTIME = common dso_local global i32 0, align 4
@LOCKTIME = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.neigh_parms*)* @neightbl_fill_parms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @neightbl_fill_parms(%struct.sk_buff* %0, %struct.neigh_parms* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.neigh_parms*, align 8
  %6 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.neigh_parms* %1, %struct.neigh_parms** %5, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = load i32, i32* @NDTA_PARMS, align 4
  %9 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %7, i32 %8)
  store %struct.nlattr* %9, %struct.nlattr** %6, align 8
  %10 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %11 = icmp eq %struct.nlattr* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOBUFS, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %180

15:                                               ; preds = %2
  %16 = load %struct.neigh_parms*, %struct.neigh_parms** %5, align 8
  %17 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = load i32, i32* @NDTPA_IFINDEX, align 4
  %23 = load %struct.neigh_parms*, %struct.neigh_parms** %5, align 8
  %24 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @nla_put_u32(%struct.sk_buff* %21, i32 %22, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %169, label %30

30:                                               ; preds = %20, %15
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = load i32, i32* @NDTPA_REFCNT, align 4
  %33 = load %struct.neigh_parms*, %struct.neigh_parms** %5, align 8
  %34 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %33, i32 0, i32 1
  %35 = call i32 @refcount_read(i32* %34)
  %36 = call i64 @nla_put_u32(%struct.sk_buff* %31, i32 %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %169, label %38

38:                                               ; preds = %30
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = load i32, i32* @NDTPA_QUEUE_LENBYTES, align 4
  %41 = load %struct.neigh_parms*, %struct.neigh_parms** %5, align 8
  %42 = load i32, i32* @QUEUE_LEN_BYTES, align 4
  %43 = call i32 @NEIGH_VAR(%struct.neigh_parms* %41, i32 %42)
  %44 = call i64 @nla_put_u32(%struct.sk_buff* %39, i32 %40, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %169, label %46

46:                                               ; preds = %38
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = load i32, i32* @NDTPA_QUEUE_LEN, align 4
  %49 = load %struct.neigh_parms*, %struct.neigh_parms** %5, align 8
  %50 = load i32, i32* @QUEUE_LEN_BYTES, align 4
  %51 = call i32 @NEIGH_VAR(%struct.neigh_parms* %49, i32 %50)
  %52 = load i32, i32* @ETH_FRAME_LEN, align 4
  %53 = call i32 @SKB_TRUESIZE(i32 %52)
  %54 = sdiv i32 %51, %53
  %55 = call i64 @nla_put_u32(%struct.sk_buff* %47, i32 %48, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %169, label %57

57:                                               ; preds = %46
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = load i32, i32* @NDTPA_PROXY_QLEN, align 4
  %60 = load %struct.neigh_parms*, %struct.neigh_parms** %5, align 8
  %61 = load i32, i32* @PROXY_QLEN, align 4
  %62 = call i32 @NEIGH_VAR(%struct.neigh_parms* %60, i32 %61)
  %63 = call i64 @nla_put_u32(%struct.sk_buff* %58, i32 %59, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %169, label %65

65:                                               ; preds = %57
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = load i32, i32* @NDTPA_APP_PROBES, align 4
  %68 = load %struct.neigh_parms*, %struct.neigh_parms** %5, align 8
  %69 = load i32, i32* @APP_PROBES, align 4
  %70 = call i32 @NEIGH_VAR(%struct.neigh_parms* %68, i32 %69)
  %71 = call i64 @nla_put_u32(%struct.sk_buff* %66, i32 %67, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %169, label %73

73:                                               ; preds = %65
  %74 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %75 = load i32, i32* @NDTPA_UCAST_PROBES, align 4
  %76 = load %struct.neigh_parms*, %struct.neigh_parms** %5, align 8
  %77 = load i32, i32* @UCAST_PROBES, align 4
  %78 = call i32 @NEIGH_VAR(%struct.neigh_parms* %76, i32 %77)
  %79 = call i64 @nla_put_u32(%struct.sk_buff* %74, i32 %75, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %169, label %81

81:                                               ; preds = %73
  %82 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %83 = load i32, i32* @NDTPA_MCAST_PROBES, align 4
  %84 = load %struct.neigh_parms*, %struct.neigh_parms** %5, align 8
  %85 = load i32, i32* @MCAST_PROBES, align 4
  %86 = call i32 @NEIGH_VAR(%struct.neigh_parms* %84, i32 %85)
  %87 = call i64 @nla_put_u32(%struct.sk_buff* %82, i32 %83, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %169, label %89

89:                                               ; preds = %81
  %90 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %91 = load i32, i32* @NDTPA_MCAST_REPROBES, align 4
  %92 = load %struct.neigh_parms*, %struct.neigh_parms** %5, align 8
  %93 = load i32, i32* @MCAST_REPROBES, align 4
  %94 = call i32 @NEIGH_VAR(%struct.neigh_parms* %92, i32 %93)
  %95 = call i64 @nla_put_u32(%struct.sk_buff* %90, i32 %91, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %169, label %97

97:                                               ; preds = %89
  %98 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %99 = load i32, i32* @NDTPA_REACHABLE_TIME, align 4
  %100 = load %struct.neigh_parms*, %struct.neigh_parms** %5, align 8
  %101 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @NDTPA_PAD, align 4
  %104 = call i64 @nla_put_msecs(%struct.sk_buff* %98, i32 %99, i32 %102, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %169, label %106

106:                                              ; preds = %97
  %107 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %108 = load i32, i32* @NDTPA_BASE_REACHABLE_TIME, align 4
  %109 = load %struct.neigh_parms*, %struct.neigh_parms** %5, align 8
  %110 = load i32, i32* @BASE_REACHABLE_TIME, align 4
  %111 = call i32 @NEIGH_VAR(%struct.neigh_parms* %109, i32 %110)
  %112 = load i32, i32* @NDTPA_PAD, align 4
  %113 = call i64 @nla_put_msecs(%struct.sk_buff* %107, i32 %108, i32 %111, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %169, label %115

115:                                              ; preds = %106
  %116 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %117 = load i32, i32* @NDTPA_GC_STALETIME, align 4
  %118 = load %struct.neigh_parms*, %struct.neigh_parms** %5, align 8
  %119 = load i32, i32* @GC_STALETIME, align 4
  %120 = call i32 @NEIGH_VAR(%struct.neigh_parms* %118, i32 %119)
  %121 = load i32, i32* @NDTPA_PAD, align 4
  %122 = call i64 @nla_put_msecs(%struct.sk_buff* %116, i32 %117, i32 %120, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %169, label %124

124:                                              ; preds = %115
  %125 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %126 = load i32, i32* @NDTPA_DELAY_PROBE_TIME, align 4
  %127 = load %struct.neigh_parms*, %struct.neigh_parms** %5, align 8
  %128 = load i32, i32* @DELAY_PROBE_TIME, align 4
  %129 = call i32 @NEIGH_VAR(%struct.neigh_parms* %127, i32 %128)
  %130 = load i32, i32* @NDTPA_PAD, align 4
  %131 = call i64 @nla_put_msecs(%struct.sk_buff* %125, i32 %126, i32 %129, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %169, label %133

133:                                              ; preds = %124
  %134 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %135 = load i32, i32* @NDTPA_RETRANS_TIME, align 4
  %136 = load %struct.neigh_parms*, %struct.neigh_parms** %5, align 8
  %137 = load i32, i32* @RETRANS_TIME, align 4
  %138 = call i32 @NEIGH_VAR(%struct.neigh_parms* %136, i32 %137)
  %139 = load i32, i32* @NDTPA_PAD, align 4
  %140 = call i64 @nla_put_msecs(%struct.sk_buff* %134, i32 %135, i32 %138, i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %169, label %142

142:                                              ; preds = %133
  %143 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %144 = load i32, i32* @NDTPA_ANYCAST_DELAY, align 4
  %145 = load %struct.neigh_parms*, %struct.neigh_parms** %5, align 8
  %146 = load i32, i32* @ANYCAST_DELAY, align 4
  %147 = call i32 @NEIGH_VAR(%struct.neigh_parms* %145, i32 %146)
  %148 = load i32, i32* @NDTPA_PAD, align 4
  %149 = call i64 @nla_put_msecs(%struct.sk_buff* %143, i32 %144, i32 %147, i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %169, label %151

151:                                              ; preds = %142
  %152 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %153 = load i32, i32* @NDTPA_PROXY_DELAY, align 4
  %154 = load %struct.neigh_parms*, %struct.neigh_parms** %5, align 8
  %155 = load i32, i32* @PROXY_DELAY, align 4
  %156 = call i32 @NEIGH_VAR(%struct.neigh_parms* %154, i32 %155)
  %157 = load i32, i32* @NDTPA_PAD, align 4
  %158 = call i64 @nla_put_msecs(%struct.sk_buff* %152, i32 %153, i32 %156, i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %169, label %160

160:                                              ; preds = %151
  %161 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %162 = load i32, i32* @NDTPA_LOCKTIME, align 4
  %163 = load %struct.neigh_parms*, %struct.neigh_parms** %5, align 8
  %164 = load i32, i32* @LOCKTIME, align 4
  %165 = call i32 @NEIGH_VAR(%struct.neigh_parms* %163, i32 %164)
  %166 = load i32, i32* @NDTPA_PAD, align 4
  %167 = call i64 @nla_put_msecs(%struct.sk_buff* %161, i32 %162, i32 %165, i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %160, %151, %142, %133, %124, %115, %106, %97, %89, %81, %73, %65, %57, %46, %38, %30, %20
  br label %174

170:                                              ; preds = %160
  %171 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %172 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %173 = call i32 @nla_nest_end(%struct.sk_buff* %171, %struct.nlattr* %172)
  store i32 %173, i32* %3, align 4
  br label %180

174:                                              ; preds = %169
  %175 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %176 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %177 = call i32 @nla_nest_cancel(%struct.sk_buff* %175, %struct.nlattr* %176)
  %178 = load i32, i32* @EMSGSIZE, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %3, align 4
  br label %180

180:                                              ; preds = %174, %170, %12
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @NEIGH_VAR(%struct.neigh_parms*, i32) #1

declare dso_local i32 @SKB_TRUESIZE(i32) #1

declare dso_local i64 @nla_put_msecs(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
