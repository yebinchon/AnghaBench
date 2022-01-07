; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr.c_ip_mr_input.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr.c_ip_mr_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.mfc_cache = type { i32 }
%struct.net = type { i32 }
%struct.mr_table = type { i32 }
%struct.sock = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i64, i32, i32 }

@RTCF_LOCAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IPSKB_FORWARDED = common dso_local global i32 0, align 4
@IPPROTO_IGMP = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@mrt_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_mr_input(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.mfc_cache*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mr_table*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  %17 = call %struct.net* @dev_net(%struct.net_device* %16)
  store %struct.net* %17, %struct.net** %5, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %19 = call %struct.TYPE_6__* @skb_rtable(%struct.sk_buff* %18)
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @RTCF_LOCAL, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %6, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load %struct.net_device*, %struct.net_device** %25, align 8
  store %struct.net_device* %26, %struct.net_device** %8, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load %struct.net_device*, %struct.net_device** %28, align 8
  %30 = call i64 @netif_is_l3_master(%struct.net_device* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %1
  %33 = load %struct.net*, %struct.net** %5, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %35 = call %struct.TYPE_8__* @IPCB(%struct.sk_buff* %34)
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call %struct.net_device* @dev_get_by_index_rcu(%struct.net* %33, i32 %37)
  store %struct.net_device* %38, %struct.net_device** %8, align 8
  %39 = load %struct.net_device*, %struct.net_device** %8, align 8
  %40 = icmp ne %struct.net_device* %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %32
  %42 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %43 = call i32 @kfree_skb(%struct.sk_buff* %42)
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %200

46:                                               ; preds = %32
  br label %47

47:                                               ; preds = %46, %1
  %48 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %49 = call %struct.TYPE_8__* @IPCB(%struct.sk_buff* %48)
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @IPSKB_FORWARDED, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %191

56:                                               ; preds = %47
  %57 = load %struct.net*, %struct.net** %5, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %59 = call %struct.mr_table* @ipmr_rt_fib_lookup(%struct.net* %57, %struct.sk_buff* %58)
  store %struct.mr_table* %59, %struct.mr_table** %7, align 8
  %60 = load %struct.mr_table*, %struct.mr_table** %7, align 8
  %61 = call i64 @IS_ERR(%struct.mr_table* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  %64 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %65 = call i32 @kfree_skb(%struct.sk_buff* %64)
  %66 = load %struct.mr_table*, %struct.mr_table** %7, align 8
  %67 = call i32 @PTR_ERR(%struct.mr_table* %66)
  store i32 %67, i32* %2, align 4
  br label %200

68:                                               ; preds = %56
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %107, label %71

71:                                               ; preds = %68
  %72 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %73 = call %struct.TYPE_8__* @IPCB(%struct.sk_buff* %72)
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %71
  %79 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %80 = call i64 @ip_call_ra_chain(%struct.sk_buff* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i32 0, i32* %2, align 4
  br label %200

83:                                               ; preds = %78
  br label %106

84:                                               ; preds = %71
  %85 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %86 = call %struct.TYPE_7__* @ip_hdr(%struct.sk_buff* %85)
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @IPPROTO_IGMP, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %84
  %92 = load %struct.mr_table*, %struct.mr_table** %7, align 8
  %93 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call %struct.sock* @rcu_dereference(i32 %94)
  store %struct.sock* %95, %struct.sock** %9, align 8
  %96 = load %struct.sock*, %struct.sock** %9, align 8
  %97 = icmp ne %struct.sock* %96, null
  br i1 %97, label %98, label %104

98:                                               ; preds = %91
  %99 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %100 = call i32 @nf_reset_ct(%struct.sk_buff* %99)
  %101 = load %struct.sock*, %struct.sock** %9, align 8
  %102 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %103 = call i32 @raw_rcv(%struct.sock* %101, %struct.sk_buff* %102)
  store i32 0, i32* %2, align 4
  br label %200

104:                                              ; preds = %91
  br label %105

105:                                              ; preds = %104, %84
  br label %106

106:                                              ; preds = %105, %83
  br label %107

107:                                              ; preds = %106, %68
  %108 = load %struct.mr_table*, %struct.mr_table** %7, align 8
  %109 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %110 = call %struct.TYPE_7__* @ip_hdr(%struct.sk_buff* %109)
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %114 = call %struct.TYPE_7__* @ip_hdr(%struct.sk_buff* %113)
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call %struct.mfc_cache* @ipmr_cache_find(%struct.mr_table* %108, i32 %112, i32 %116)
  store %struct.mfc_cache* %117, %struct.mfc_cache** %4, align 8
  %118 = load %struct.mfc_cache*, %struct.mfc_cache** %4, align 8
  %119 = icmp ne %struct.mfc_cache* %118, null
  br i1 %119, label %135, label %120

120:                                              ; preds = %107
  %121 = load %struct.mr_table*, %struct.mr_table** %7, align 8
  %122 = load %struct.net_device*, %struct.net_device** %8, align 8
  %123 = call i32 @ipmr_find_vif(%struct.mr_table* %121, %struct.net_device* %122)
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %10, align 4
  %125 = icmp sge i32 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %120
  %127 = load %struct.mr_table*, %struct.mr_table** %7, align 8
  %128 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %129 = call %struct.TYPE_7__* @ip_hdr(%struct.sk_buff* %128)
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %10, align 4
  %133 = call %struct.mfc_cache* @ipmr_cache_find_any(%struct.mr_table* %127, i32 %131, i32 %132)
  store %struct.mfc_cache* %133, %struct.mfc_cache** %4, align 8
  br label %134

134:                                              ; preds = %126, %120
  br label %135

135:                                              ; preds = %134, %107
  %136 = load %struct.mfc_cache*, %struct.mfc_cache** %4, align 8
  %137 = icmp ne %struct.mfc_cache* %136, null
  br i1 %137, label %175, label %138

138:                                              ; preds = %135
  %139 = load i32, i32* %6, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %154

141:                                              ; preds = %138
  %142 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %143 = load i32, i32* @GFP_ATOMIC, align 4
  %144 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %142, i32 %143)
  store %struct.sk_buff* %144, %struct.sk_buff** %12, align 8
  %145 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %146 = call i32 @ip_local_deliver(%struct.sk_buff* %145)
  %147 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %148 = icmp ne %struct.sk_buff* %147, null
  br i1 %148, label %152, label %149

149:                                              ; preds = %141
  %150 = load i32, i32* @ENOBUFS, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %2, align 4
  br label %200

152:                                              ; preds = %141
  %153 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  store %struct.sk_buff* %153, %struct.sk_buff** %3, align 8
  br label %154

154:                                              ; preds = %152, %138
  %155 = call i32 @read_lock(i32* @mrt_lock)
  %156 = load %struct.mr_table*, %struct.mr_table** %7, align 8
  %157 = load %struct.net_device*, %struct.net_device** %8, align 8
  %158 = call i32 @ipmr_find_vif(%struct.mr_table* %156, %struct.net_device* %157)
  store i32 %158, i32* %11, align 4
  %159 = load i32, i32* %11, align 4
  %160 = icmp sge i32 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %154
  %162 = load %struct.mr_table*, %struct.mr_table** %7, align 8
  %163 = load i32, i32* %11, align 4
  %164 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %165 = load %struct.net_device*, %struct.net_device** %8, align 8
  %166 = call i32 @ipmr_cache_unresolved(%struct.mr_table* %162, i32 %163, %struct.sk_buff* %164, %struct.net_device* %165)
  store i32 %166, i32* %13, align 4
  %167 = call i32 @read_unlock(i32* @mrt_lock)
  %168 = load i32, i32* %13, align 4
  store i32 %168, i32* %2, align 4
  br label %200

169:                                              ; preds = %154
  %170 = call i32 @read_unlock(i32* @mrt_lock)
  %171 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %172 = call i32 @kfree_skb(%struct.sk_buff* %171)
  %173 = load i32, i32* @ENODEV, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %2, align 4
  br label %200

175:                                              ; preds = %135
  %176 = call i32 @read_lock(i32* @mrt_lock)
  %177 = load %struct.net*, %struct.net** %5, align 8
  %178 = load %struct.mr_table*, %struct.mr_table** %7, align 8
  %179 = load %struct.net_device*, %struct.net_device** %8, align 8
  %180 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %181 = load %struct.mfc_cache*, %struct.mfc_cache** %4, align 8
  %182 = load i32, i32* %6, align 4
  %183 = call i32 @ip_mr_forward(%struct.net* %177, %struct.mr_table* %178, %struct.net_device* %179, %struct.sk_buff* %180, %struct.mfc_cache* %181, i32 %182)
  %184 = call i32 @read_unlock(i32* @mrt_lock)
  %185 = load i32, i32* %6, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %175
  %188 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %189 = call i32 @ip_local_deliver(%struct.sk_buff* %188)
  store i32 %189, i32* %2, align 4
  br label %200

190:                                              ; preds = %175
  store i32 0, i32* %2, align 4
  br label %200

191:                                              ; preds = %55
  %192 = load i32, i32* %6, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %191
  %195 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %196 = call i32 @ip_local_deliver(%struct.sk_buff* %195)
  store i32 %196, i32* %2, align 4
  br label %200

197:                                              ; preds = %191
  %198 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %199 = call i32 @kfree_skb(%struct.sk_buff* %198)
  store i32 0, i32* %2, align 4
  br label %200

200:                                              ; preds = %197, %194, %190, %187, %169, %161, %149, %98, %82, %63, %41
  %201 = load i32, i32* %2, align 4
  ret i32 %201
}

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local %struct.TYPE_6__* @skb_rtable(%struct.sk_buff*) #1

declare dso_local i64 @netif_is_l3_master(%struct.net_device*) #1

declare dso_local %struct.net_device* @dev_get_by_index_rcu(%struct.net*, i32) #1

declare dso_local %struct.TYPE_8__* @IPCB(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.mr_table* @ipmr_rt_fib_lookup(%struct.net*, %struct.sk_buff*) #1

declare dso_local i64 @IS_ERR(%struct.mr_table*) #1

declare dso_local i32 @PTR_ERR(%struct.mr_table*) #1

declare dso_local i64 @ip_call_ra_chain(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_7__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.sock* @rcu_dereference(i32) #1

declare dso_local i32 @nf_reset_ct(%struct.sk_buff*) #1

declare dso_local i32 @raw_rcv(%struct.sock*, %struct.sk_buff*) #1

declare dso_local %struct.mfc_cache* @ipmr_cache_find(%struct.mr_table*, i32, i32) #1

declare dso_local i32 @ipmr_find_vif(%struct.mr_table*, %struct.net_device*) #1

declare dso_local %struct.mfc_cache* @ipmr_cache_find_any(%struct.mr_table*, i32, i32) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @ip_local_deliver(%struct.sk_buff*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @ipmr_cache_unresolved(%struct.mr_table*, i32, %struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @ip_mr_forward(%struct.net*, %struct.mr_table*, %struct.net_device*, %struct.sk_buff*, %struct.mfc_cache*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
