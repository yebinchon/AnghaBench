; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_route.c___mkroute_input.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_route.c___mkroute_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.fib_result = type { i32, i32 }
%struct.in_device = type { i32 }
%struct.fib_nh_common = type { i64, i32, %struct.TYPE_6__, %struct.net_device* }
%struct.TYPE_6__ = type { i32 }
%struct.net_device = type { i32 }
%struct.fib_nh_exception = type { i32 }
%struct.rtable = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"Bug in ip_route_input_slow(). Please report.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@IPSKB_DOREDIRECT = common dso_local global i32 0, align 4
@NOPOLICY = common dso_local global i32 0, align 4
@NOXFRM = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@in_slow_tot = common dso_local global i32 0, align 4
@ip_forward = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.fib_result*, %struct.in_device*, i32, i32, i64)* @__mkroute_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mkroute_input(%struct.sk_buff* %0, %struct.fib_result* %1, %struct.in_device* %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.fib_result*, align 8
  %10 = alloca %struct.in_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.fib_nh_common*, align 8
  %15 = alloca %struct.net_device*, align 8
  %16 = alloca %struct.fib_nh_exception*, align 8
  %17 = alloca %struct.rtable*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.in_device*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.fib_result* %1, %struct.fib_result** %9, align 8
  store %struct.in_device* %2, %struct.in_device** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %23 = load %struct.fib_result*, %struct.fib_result** %9, align 8
  %24 = bitcast %struct.fib_result* %23 to i64*
  %25 = load i64, i64* %24, align 4
  %26 = call %struct.fib_nh_common* @FIB_RES_NHC(i64 %25)
  store %struct.fib_nh_common* %26, %struct.fib_nh_common** %14, align 8
  %27 = load %struct.fib_nh_common*, %struct.fib_nh_common** %14, align 8
  %28 = getelementptr inbounds %struct.fib_nh_common, %struct.fib_nh_common* %27, i32 0, i32 3
  %29 = load %struct.net_device*, %struct.net_device** %28, align 8
  store %struct.net_device* %29, %struct.net_device** %15, align 8
  store i64 0, i64* %21, align 8
  %30 = load %struct.net_device*, %struct.net_device** %15, align 8
  %31 = call %struct.in_device* @__in_dev_get_rcu(%struct.net_device* %30)
  store %struct.in_device* %31, %struct.in_device** %19, align 8
  %32 = load %struct.in_device*, %struct.in_device** %19, align 8
  %33 = icmp ne %struct.in_device* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %6
  %35 = call i32 @net_crit_ratelimited(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  br label %223

38:                                               ; preds = %6
  %39 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i64, i64* %13, align 8
  %43 = load %struct.fib_result*, %struct.fib_result** %9, align 8
  %44 = bitcast %struct.fib_result* %43 to i64*
  %45 = load i64, i64* %44, align 4
  %46 = call i32 @FIB_RES_OIF(i64 %45)
  %47 = load %struct.in_device*, %struct.in_device** %10, align 8
  %48 = getelementptr inbounds %struct.in_device, %struct.in_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.in_device*, %struct.in_device** %10, align 8
  %51 = call i32 @fib_validate_source(%struct.sk_buff* %39, i32 %40, i32 %41, i64 %42, i32 %46, i32 %49, %struct.in_device* %50, i64* %21)
  store i32 %51, i32* %18, align 4
  %52 = load i32, i32* %18, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %38
  %55 = load %struct.in_device*, %struct.in_device** %10, align 8
  %56 = getelementptr inbounds %struct.in_device, %struct.in_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.in_device*, %struct.in_device** %10, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @ip_handle_martian_source(i32 %57, %struct.in_device* %58, %struct.sk_buff* %59, i32 %60, i32 %61)
  br label %221

63:                                               ; preds = %38
  %64 = load %struct.fib_result*, %struct.fib_result** %9, align 8
  %65 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i64, i64* %21, align 8
  %70 = icmp ne i64 %69, 0
  %71 = xor i1 %70, true
  br label %72

72:                                               ; preds = %68, %63
  %73 = phi i1 [ false, %63 ], [ %71, %68 ]
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %20, align 4
  %75 = load %struct.in_device*, %struct.in_device** %19, align 8
  %76 = load %struct.in_device*, %struct.in_device** %10, align 8
  %77 = icmp eq %struct.in_device* %75, %76
  br i1 %77, label %78, label %123

78:                                               ; preds = %72
  %79 = load i32, i32* %18, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %123

81:                                               ; preds = %78
  %82 = load %struct.in_device*, %struct.in_device** %19, align 8
  %83 = call i64 @IN_DEV_TX_REDIRECTS(%struct.in_device* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %123

85:                                               ; preds = %81
  %86 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %87 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* @ETH_P_IP, align 4
  %90 = call i64 @htons(i32 %89)
  %91 = icmp eq i64 %88, %90
  br i1 %91, label %92, label %123

92:                                               ; preds = %85
  %93 = load %struct.fib_nh_common*, %struct.fib_nh_common** %14, align 8
  %94 = getelementptr inbounds %struct.fib_nh_common, %struct.fib_nh_common* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @AF_INET, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %92
  %99 = load %struct.fib_nh_common*, %struct.fib_nh_common** %14, align 8
  %100 = getelementptr inbounds %struct.fib_nh_common, %struct.fib_nh_common* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  br label %104

103:                                              ; preds = %92
  br label %104

104:                                              ; preds = %103, %98
  %105 = phi i32 [ %102, %98 ], [ 0, %103 ]
  store i32 %105, i32* %22, align 4
  %106 = load %struct.in_device*, %struct.in_device** %19, align 8
  %107 = call i64 @IN_DEV_SHARED_MEDIA(%struct.in_device* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %115, label %109

109:                                              ; preds = %104
  %110 = load %struct.in_device*, %struct.in_device** %19, align 8
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* %22, align 4
  %113 = call i64 @inet_addr_onlink(%struct.in_device* %110, i32 %111, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %109, %104
  %116 = load i32, i32* @IPSKB_DOREDIRECT, align 4
  %117 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %118 = call %struct.TYPE_8__* @IPCB(%struct.sk_buff* %117)
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %116
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %115, %109
  br label %123

123:                                              ; preds = %122, %85, %81, %78, %72
  %124 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %125 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i32, i32* @ETH_P_IP, align 4
  %128 = call i64 @htons(i32 %127)
  %129 = icmp ne i64 %126, %128
  br i1 %129, label %130, label %142

130:                                              ; preds = %123
  %131 = load %struct.in_device*, %struct.in_device** %19, align 8
  %132 = load %struct.in_device*, %struct.in_device** %10, align 8
  %133 = icmp eq %struct.in_device* %131, %132
  br i1 %133, label %134, label %141

134:                                              ; preds = %130
  %135 = load %struct.in_device*, %struct.in_device** %10, align 8
  %136 = call i64 @IN_DEV_PROXY_ARP_PVLAN(%struct.in_device* %135)
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %134
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %18, align 4
  br label %221

141:                                              ; preds = %134, %130
  br label %142

142:                                              ; preds = %141, %123
  %143 = load %struct.fib_nh_common*, %struct.fib_nh_common** %14, align 8
  %144 = load i32, i32* %11, align 4
  %145 = call %struct.fib_nh_exception* @find_exception(%struct.fib_nh_common* %143, i32 %144)
  store %struct.fib_nh_exception* %145, %struct.fib_nh_exception** %16, align 8
  %146 = load i32, i32* %20, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %171

148:                                              ; preds = %142
  %149 = load %struct.fib_nh_exception*, %struct.fib_nh_exception** %16, align 8
  %150 = icmp ne %struct.fib_nh_exception* %149, null
  br i1 %150, label %151, label %156

151:                                              ; preds = %148
  %152 = load %struct.fib_nh_exception*, %struct.fib_nh_exception** %16, align 8
  %153 = getelementptr inbounds %struct.fib_nh_exception, %struct.fib_nh_exception* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call %struct.rtable* @rcu_dereference(i32 %154)
  store %struct.rtable* %155, %struct.rtable** %17, align 8
  br label %161

156:                                              ; preds = %148
  %157 = load %struct.fib_nh_common*, %struct.fib_nh_common** %14, align 8
  %158 = getelementptr inbounds %struct.fib_nh_common, %struct.fib_nh_common* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = call %struct.rtable* @rcu_dereference(i32 %159)
  store %struct.rtable* %160, %struct.rtable** %17, align 8
  br label %161

161:                                              ; preds = %156, %151
  %162 = load %struct.rtable*, %struct.rtable** %17, align 8
  %163 = call i64 @rt_cache_valid(%struct.rtable* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %161
  %166 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %167 = load %struct.rtable*, %struct.rtable** %17, align 8
  %168 = getelementptr inbounds %struct.rtable, %struct.rtable* %167, i32 0, i32 1
  %169 = call i32 @skb_dst_set_noref(%struct.sk_buff* %166, %struct.TYPE_7__* %168)
  br label %220

170:                                              ; preds = %161
  br label %171

171:                                              ; preds = %170, %142
  %172 = load %struct.in_device*, %struct.in_device** %19, align 8
  %173 = getelementptr inbounds %struct.in_device, %struct.in_device* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.fib_result*, %struct.fib_result** %9, align 8
  %176 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.in_device*, %struct.in_device** %10, align 8
  %179 = load i32, i32* @NOPOLICY, align 4
  %180 = call i32 @IN_DEV_CONF_GET(%struct.in_device* %178, i32 %179)
  %181 = load %struct.in_device*, %struct.in_device** %19, align 8
  %182 = load i32, i32* @NOXFRM, align 4
  %183 = call i32 @IN_DEV_CONF_GET(%struct.in_device* %181, i32 %182)
  %184 = load i32, i32* %20, align 4
  %185 = call %struct.rtable* @rt_dst_alloc(i32 %174, i32 0, i32 %177, i32 %180, i32 %183, i32 %184)
  store %struct.rtable* %185, %struct.rtable** %17, align 8
  %186 = load %struct.rtable*, %struct.rtable** %17, align 8
  %187 = icmp ne %struct.rtable* %186, null
  br i1 %187, label %191, label %188

188:                                              ; preds = %171
  %189 = load i32, i32* @ENOBUFS, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %18, align 4
  br label %221

191:                                              ; preds = %171
  %192 = load %struct.rtable*, %struct.rtable** %17, align 8
  %193 = getelementptr inbounds %struct.rtable, %struct.rtable* %192, i32 0, i32 0
  store i32 1, i32* %193, align 4
  %194 = load i32, i32* @in_slow_tot, align 4
  %195 = call i32 @RT_CACHE_STAT_INC(i32 %194)
  %196 = load i32, i32* @ip_forward, align 4
  %197 = load %struct.rtable*, %struct.rtable** %17, align 8
  %198 = getelementptr inbounds %struct.rtable, %struct.rtable* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 0
  store i32 %196, i32* %199, align 4
  %200 = load %struct.rtable*, %struct.rtable** %17, align 8
  %201 = load i32, i32* %11, align 4
  %202 = load %struct.fib_result*, %struct.fib_result** %9, align 8
  %203 = load %struct.fib_nh_exception*, %struct.fib_nh_exception** %16, align 8
  %204 = load %struct.fib_result*, %struct.fib_result** %9, align 8
  %205 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.fib_result*, %struct.fib_result** %9, align 8
  %208 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load i64, i64* %21, align 8
  %211 = load i32, i32* %20, align 4
  %212 = call i32 @rt_set_nexthop(%struct.rtable* %200, i32 %201, %struct.fib_result* %202, %struct.fib_nh_exception* %203, i32 %206, i32 %209, i64 %210, i32 %211)
  %213 = load %struct.rtable*, %struct.rtable** %17, align 8
  %214 = getelementptr inbounds %struct.rtable, %struct.rtable* %213, i32 0, i32 1
  %215 = call i32 @lwtunnel_set_redirect(%struct.TYPE_7__* %214)
  %216 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %217 = load %struct.rtable*, %struct.rtable** %17, align 8
  %218 = getelementptr inbounds %struct.rtable, %struct.rtable* %217, i32 0, i32 1
  %219 = call i32 @skb_dst_set(%struct.sk_buff* %216, %struct.TYPE_7__* %218)
  br label %220

220:                                              ; preds = %191, %165
  store i32 0, i32* %18, align 4
  br label %221

221:                                              ; preds = %220, %188, %138, %54
  %222 = load i32, i32* %18, align 4
  store i32 %222, i32* %7, align 4
  br label %223

223:                                              ; preds = %221, %34
  %224 = load i32, i32* %7, align 4
  ret i32 %224
}

declare dso_local %struct.fib_nh_common* @FIB_RES_NHC(i64) #1

declare dso_local %struct.in_device* @__in_dev_get_rcu(%struct.net_device*) #1

declare dso_local i32 @net_crit_ratelimited(i8*) #1

declare dso_local i32 @fib_validate_source(%struct.sk_buff*, i32, i32, i64, i32, i32, %struct.in_device*, i64*) #1

declare dso_local i32 @FIB_RES_OIF(i64) #1

declare dso_local i32 @ip_handle_martian_source(i32, %struct.in_device*, %struct.sk_buff*, i32, i32) #1

declare dso_local i64 @IN_DEV_TX_REDIRECTS(%struct.in_device*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @IN_DEV_SHARED_MEDIA(%struct.in_device*) #1

declare dso_local i64 @inet_addr_onlink(%struct.in_device*, i32, i32) #1

declare dso_local %struct.TYPE_8__* @IPCB(%struct.sk_buff*) #1

declare dso_local i64 @IN_DEV_PROXY_ARP_PVLAN(%struct.in_device*) #1

declare dso_local %struct.fib_nh_exception* @find_exception(%struct.fib_nh_common*, i32) #1

declare dso_local %struct.rtable* @rcu_dereference(i32) #1

declare dso_local i64 @rt_cache_valid(%struct.rtable*) #1

declare dso_local i32 @skb_dst_set_noref(%struct.sk_buff*, %struct.TYPE_7__*) #1

declare dso_local %struct.rtable* @rt_dst_alloc(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @IN_DEV_CONF_GET(%struct.in_device*, i32) #1

declare dso_local i32 @RT_CACHE_STAT_INC(i32) #1

declare dso_local i32 @rt_set_nexthop(%struct.rtable*, i32, %struct.fib_result*, %struct.fib_nh_exception*, i32, i32, i64, i32) #1

declare dso_local i32 @lwtunnel_set_redirect(%struct.TYPE_7__*) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
