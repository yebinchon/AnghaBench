; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fib_semantics.c_fib_check_nh_v4_gw.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fib_semantics.c_fib_check_nh_v4_gw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.fib_nh = type { i32, %struct.net_device*, i32, i64, i32 }
%struct.net_device = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.fib_result = type { i32, i64 }
%struct.fib_table = type { i32 }
%struct.flowi4 = type { i64, i32, i32, i32 }

@RTNH_F_ONLINK = common dso_local global i32 0, align 4
@RT_SCOPE_LINK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Nexthop has invalid scope\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Nexthop device required for onlink\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Nexthop device is not up\00", align 1
@ENETDOWN = common dso_local global i32 0, align 4
@RTN_UNICAST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Nexthop has invalid gateway\00", align 1
@RTNH_F_LINKDOWN = common dso_local global i32 0, align 4
@LOOPBACK_IFINDEX = common dso_local global i32 0, align 4
@FIB_LOOKUP_IGNORE_LINKSTATE = common dso_local global i32 0, align 4
@FIB_LOOKUP_NOREF = common dso_local global i32 0, align 4
@RTN_LOCAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"No egress device for nexthop gateway\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.fib_nh*, i64, i64, %struct.netlink_ext_ack*)* @fib_check_nh_v4_gw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fib_check_nh_v4_gw(%struct.net* %0, %struct.fib_nh* %1, i64 %2, i64 %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.fib_nh*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca %struct.fib_result, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.fib_table*, align 8
  %17 = alloca %struct.flowi4, align 8
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.fib_nh* %1, %struct.fib_nh** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  store i32 0, i32* %14, align 4
  %18 = load %struct.fib_nh*, %struct.fib_nh** %8, align 8
  %19 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @RTNH_F_ONLINK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %92

24:                                               ; preds = %5
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* @RT_SCOPE_LINK, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %30 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %215

33:                                               ; preds = %24
  %34 = load %struct.net*, %struct.net** %7, align 8
  %35 = load %struct.fib_nh*, %struct.fib_nh** %8, align 8
  %36 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call %struct.net_device* @__dev_get_by_index(%struct.net* %34, i32 %37)
  store %struct.net_device* %38, %struct.net_device** %12, align 8
  %39 = load %struct.net_device*, %struct.net_device** %12, align 8
  %40 = icmp ne %struct.net_device* %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %33
  %42 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %43 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %42, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %215

46:                                               ; preds = %33
  %47 = load %struct.net_device*, %struct.net_device** %12, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IFF_UP, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %46
  %54 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %55 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* @ENETDOWN, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %215

58:                                               ; preds = %46
  %59 = load %struct.net*, %struct.net** %7, align 8
  %60 = load %struct.net_device*, %struct.net_device** %12, align 8
  %61 = load %struct.fib_nh*, %struct.fib_nh** %8, align 8
  %62 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @inet_addr_type_dev_table(%struct.net* %59, %struct.net_device* %60, i32 %63)
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* @RTN_UNICAST, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %58
  %69 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %70 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %69, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %6, align 4
  br label %215

73:                                               ; preds = %58
  %74 = load %struct.net_device*, %struct.net_device** %12, align 8
  %75 = call i32 @netif_carrier_ok(%struct.net_device* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* @RTNH_F_LINKDOWN, align 4
  %79 = load %struct.fib_nh*, %struct.fib_nh** %8, align 8
  %80 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %77, %73
  %84 = load %struct.net_device*, %struct.net_device** %12, align 8
  %85 = load %struct.fib_nh*, %struct.fib_nh** %8, align 8
  %86 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %85, i32 0, i32 1
  store %struct.net_device* %84, %struct.net_device** %86, align 8
  %87 = load %struct.net_device*, %struct.net_device** %12, align 8
  %88 = call i32 @dev_hold(%struct.net_device* %87)
  %89 = load i64, i64* @RT_SCOPE_LINK, align 8
  %90 = load %struct.fib_nh*, %struct.fib_nh** %8, align 8
  %91 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %90, i32 0, i32 3
  store i64 %89, i64* %91, align 8
  store i32 0, i32* %6, align 4
  br label %215

92:                                               ; preds = %5
  %93 = call i32 (...) @rcu_read_lock()
  store %struct.fib_table* null, %struct.fib_table** %16, align 8
  %94 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %17, i32 0, i32 0
  %95 = load i64, i64* %10, align 8
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* %94, align 8
  %97 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %17, i32 0, i32 1
  %98 = load i32, i32* @LOOPBACK_IFINDEX, align 4
  store i32 %98, i32* %97, align 8
  %99 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %17, i32 0, i32 2
  %100 = load %struct.fib_nh*, %struct.fib_nh** %8, align 8
  %101 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  store i32 %102, i32* %99, align 4
  %103 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %17, i32 0, i32 3
  %104 = load %struct.fib_nh*, %struct.fib_nh** %8, align 8
  %105 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  store i32 %106, i32* %103, align 8
  %107 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %17, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @RT_SCOPE_LINK, align 8
  %110 = icmp slt i64 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %92
  %112 = load i64, i64* @RT_SCOPE_LINK, align 8
  %113 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %17, i32 0, i32 0
  store i64 %112, i64* %113, align 8
  br label %114

114:                                              ; preds = %111, %92
  %115 = load i64, i64* %9, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load %struct.net*, %struct.net** %7, align 8
  %119 = load i64, i64* %9, align 8
  %120 = call %struct.fib_table* @fib_get_table(%struct.net* %118, i64 %119)
  store %struct.fib_table* %120, %struct.fib_table** %16, align 8
  br label %121

121:                                              ; preds = %117, %114
  %122 = load %struct.fib_table*, %struct.fib_table** %16, align 8
  %123 = icmp ne %struct.fib_table* %122, null
  br i1 %123, label %124, label %130

124:                                              ; preds = %121
  %125 = load %struct.fib_table*, %struct.fib_table** %16, align 8
  %126 = load i32, i32* @FIB_LOOKUP_IGNORE_LINKSTATE, align 4
  %127 = load i32, i32* @FIB_LOOKUP_NOREF, align 4
  %128 = or i32 %126, %127
  %129 = call i32 @fib_table_lookup(%struct.fib_table* %125, %struct.flowi4* %17, %struct.fib_result* %13, i32 %128)
  store i32 %129, i32* %14, align 4
  br label %130

130:                                              ; preds = %124, %121
  %131 = load %struct.fib_table*, %struct.fib_table** %16, align 8
  %132 = icmp ne %struct.fib_table* %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load i32, i32* %14, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %133, %130
  %137 = load %struct.net*, %struct.net** %7, align 8
  %138 = load i32, i32* @FIB_LOOKUP_IGNORE_LINKSTATE, align 4
  %139 = call i32 @fib_lookup(%struct.net* %137, %struct.flowi4* %17, %struct.fib_result* %13, i32 %138)
  store i32 %139, i32* %14, align 4
  br label %140

140:                                              ; preds = %136, %133
  %141 = load i32, i32* %14, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %145 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %144, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %212

146:                                              ; preds = %140
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %14, align 4
  %149 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %13, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @RTN_UNICAST, align 4
  %152 = icmp ne i32 %150, %151
  br i1 %152, label %153, label %161

153:                                              ; preds = %146
  %154 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %13, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @RTN_LOCAL, align 4
  %157 = icmp ne i32 %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %153
  %159 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %160 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %159, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %212

161:                                              ; preds = %153, %146
  %162 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %13, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.fib_nh*, %struct.fib_nh** %8, align 8
  %165 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %164, i32 0, i32 3
  store i64 %163, i64* %165, align 8
  %166 = bitcast %struct.fib_result* %13 to { i32, i64 }*
  %167 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %166, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = call i32 @FIB_RES_OIF(i32 %168, i64 %170)
  %172 = load %struct.fib_nh*, %struct.fib_nh** %8, align 8
  %173 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %172, i32 0, i32 2
  store i32 %171, i32* %173, align 8
  %174 = bitcast %struct.fib_result* %13 to { i32, i64 }*
  %175 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %174, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = call %struct.net_device* @FIB_RES_DEV(i32 %176, i64 %178)
  store %struct.net_device* %179, %struct.net_device** %12, align 8
  %180 = load %struct.fib_nh*, %struct.fib_nh** %8, align 8
  %181 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %180, i32 0, i32 1
  store %struct.net_device* %179, %struct.net_device** %181, align 8
  %182 = load %struct.net_device*, %struct.net_device** %12, align 8
  %183 = icmp ne %struct.net_device* %182, null
  br i1 %183, label %187, label %184

184:                                              ; preds = %161
  %185 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %186 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %185, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %212

187:                                              ; preds = %161
  %188 = load %struct.net_device*, %struct.net_device** %12, align 8
  %189 = call i32 @dev_hold(%struct.net_device* %188)
  %190 = load %struct.net_device*, %struct.net_device** %12, align 8
  %191 = call i32 @netif_carrier_ok(%struct.net_device* %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %199, label %193

193:                                              ; preds = %187
  %194 = load i32, i32* @RTNH_F_LINKDOWN, align 4
  %195 = load %struct.fib_nh*, %struct.fib_nh** %8, align 8
  %196 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = or i32 %197, %194
  store i32 %198, i32* %196, align 8
  br label %199

199:                                              ; preds = %193, %187
  %200 = load %struct.net_device*, %struct.net_device** %12, align 8
  %201 = getelementptr inbounds %struct.net_device, %struct.net_device* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @IFF_UP, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %199
  br label %210

207:                                              ; preds = %199
  %208 = load i32, i32* @ENETDOWN, align 4
  %209 = sub nsw i32 0, %208
  br label %210

210:                                              ; preds = %207, %206
  %211 = phi i32 [ 0, %206 ], [ %209, %207 ]
  store i32 %211, i32* %14, align 4
  br label %212

212:                                              ; preds = %210, %184, %158, %143
  %213 = call i32 (...) @rcu_read_unlock()
  %214 = load i32, i32* %14, align 4
  store i32 %214, i32* %6, align 4
  br label %215

215:                                              ; preds = %212, %83, %68, %53, %41, %28
  %216 = load i32, i32* %6, align 4
  ret i32 %216
}

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local %struct.net_device* @__dev_get_by_index(%struct.net*, i32) #1

declare dso_local i32 @inet_addr_type_dev_table(%struct.net*, %struct.net_device*, i32) #1

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.fib_table* @fib_get_table(%struct.net*, i64) #1

declare dso_local i32 @fib_table_lookup(%struct.fib_table*, %struct.flowi4*, %struct.fib_result*, i32) #1

declare dso_local i32 @fib_lookup(%struct.net*, %struct.flowi4*, %struct.fib_result*, i32) #1

declare dso_local i32 @FIB_RES_OIF(i32, i64) #1

declare dso_local %struct.net_device* @FIB_RES_DEV(i32, i64) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
