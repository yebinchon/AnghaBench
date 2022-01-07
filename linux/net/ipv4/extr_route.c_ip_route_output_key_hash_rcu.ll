; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_ip_route_output_key_hash_rcu.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_ip_route_output_key_hash_rcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtable = type { i32 }
%struct.net = type { %struct.net_device* }
%struct.net_device = type { i32, i32 }
%struct.flowi4 = type { i32, i32, i64, i8*, i8*, i32 }
%struct.fib_result = type { i64, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i8* }
%struct.sk_buff = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENETUNREACH = common dso_local global i32 0, align 4
@FLOWI_FLAG_ANYSRC = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IPPROTO_IGMP = common dso_local global i64 0, align 8
@RT_SCOPE_LINK = common dso_local global i32 0, align 4
@RT_SCOPE_HOST = common dso_local global i32 0, align 4
@INADDR_LOOPBACK = common dso_local global i32 0, align 4
@LOOPBACK_IFINDEX = common dso_local global i32 0, align 4
@RTN_LOCAL = common dso_local global i64 0, align 8
@RTCF_LOCAL = common dso_local global i32 0, align 4
@RTN_UNICAST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rtable* @ip_route_output_key_hash_rcu(%struct.net* %0, %struct.flowi4* %1, %struct.fib_result* %2, %struct.sk_buff* %3) #0 {
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.flowi4*, align 8
  %7 = alloca %struct.fib_result*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rtable*, align 8
  %13 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.flowi4* %1, %struct.flowi4** %6, align 8
  store %struct.fib_result* %2, %struct.fib_result** %7, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %8, align 8
  store %struct.net_device* null, %struct.net_device** %9, align 8
  %14 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %15 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %17 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %18 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %17, i32 0, i32 4
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %95

21:                                               ; preds = %4
  %22 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %23 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %22, i32 0, i32 4
  %24 = load i8*, i8** %23, align 8
  %25 = call i64 @ipv4_is_multicast(i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %21
  %28 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %29 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %28, i32 0, i32 4
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @ipv4_is_lbcast(i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %35 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %34, i32 0, i32 4
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @ipv4_is_zeronet(i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %33, %27, %21
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  %42 = call %struct.rtable* @ERR_PTR(i32 %41)
  store %struct.rtable* %42, %struct.rtable** %12, align 8
  br label %348

43:                                               ; preds = %33
  %44 = load i32, i32* @ENETUNREACH, align 4
  %45 = sub nsw i32 0, %44
  %46 = call %struct.rtable* @ERR_PTR(i32 %45)
  store %struct.rtable* %46, %struct.rtable** %12, align 8
  %47 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %48 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %78

51:                                               ; preds = %43
  %52 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %53 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %52, i32 0, i32 3
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @ipv4_is_multicast(i8* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %51
  %58 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %59 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %58, i32 0, i32 3
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @ipv4_is_lbcast(i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %57, %51
  %64 = load %struct.net*, %struct.net** %5, align 8
  %65 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %66 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %65, i32 0, i32 4
  %67 = load i8*, i8** %66, align 8
  %68 = call %struct.net_device* @__ip_dev_find(%struct.net* %64, i8* %67, i32 0)
  store %struct.net_device* %68, %struct.net_device** %9, align 8
  %69 = load %struct.net_device*, %struct.net_device** %9, align 8
  %70 = icmp ne %struct.net_device* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %63
  br label %348

72:                                               ; preds = %63
  %73 = load %struct.net_device*, %struct.net_device** %9, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %77 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  br label %341

78:                                               ; preds = %57, %43
  %79 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %80 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @FLOWI_FLAG_ANYSRC, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %94, label %85

85:                                               ; preds = %78
  %86 = load %struct.net*, %struct.net** %5, align 8
  %87 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %88 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %87, i32 0, i32 4
  %89 = load i8*, i8** %88, align 8
  %90 = call %struct.net_device* @__ip_dev_find(%struct.net* %86, i8* %89, i32 0)
  %91 = icmp ne %struct.net_device* %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %85
  br label %348

93:                                               ; preds = %85
  br label %94

94:                                               ; preds = %93, %78
  br label %95

95:                                               ; preds = %94, %4
  %96 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %97 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %190

100:                                              ; preds = %95
  %101 = load %struct.net*, %struct.net** %5, align 8
  %102 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %103 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call %struct.net_device* @dev_get_by_index_rcu(%struct.net* %101, i32 %104)
  store %struct.net_device* %105, %struct.net_device** %9, align 8
  %106 = load i32, i32* @ENODEV, align 4
  %107 = sub nsw i32 0, %106
  %108 = call %struct.rtable* @ERR_PTR(i32 %107)
  store %struct.rtable* %108, %struct.rtable** %12, align 8
  %109 = load %struct.net_device*, %struct.net_device** %9, align 8
  %110 = icmp ne %struct.net_device* %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %100
  br label %348

112:                                              ; preds = %100
  %113 = load %struct.net_device*, %struct.net_device** %9, align 8
  %114 = getelementptr inbounds %struct.net_device, %struct.net_device* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @IFF_UP, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %112
  %120 = load %struct.net_device*, %struct.net_device** %9, align 8
  %121 = call i32 @__in_dev_get_rcu(%struct.net_device* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %119, %112
  %124 = load i32, i32* @ENETUNREACH, align 4
  %125 = sub nsw i32 0, %124
  %126 = call %struct.rtable* @ERR_PTR(i32 %125)
  store %struct.rtable* %126, %struct.rtable** %12, align 8
  br label %348

127:                                              ; preds = %119
  %128 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %129 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %128, i32 0, i32 3
  %130 = load i8*, i8** %129, align 8
  %131 = call i64 @ipv4_is_local_multicast(i8* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %145, label %133

133:                                              ; preds = %127
  %134 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %135 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %134, i32 0, i32 3
  %136 = load i8*, i8** %135, align 8
  %137 = call i64 @ipv4_is_lbcast(i8* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %145, label %139

139:                                              ; preds = %133
  %140 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %141 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @IPPROTO_IGMP, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %157

145:                                              ; preds = %139, %133, %127
  %146 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %147 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %146, i32 0, i32 4
  %148 = load i8*, i8** %147, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %156, label %150

150:                                              ; preds = %145
  %151 = load %struct.net_device*, %struct.net_device** %9, align 8
  %152 = load i32, i32* @RT_SCOPE_LINK, align 4
  %153 = call i8* @inet_select_addr(%struct.net_device* %151, i32 0, i32 %152)
  %154 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %155 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %154, i32 0, i32 4
  store i8* %153, i8** %155, align 8
  br label %156

156:                                              ; preds = %150, %145
  br label %341

157:                                              ; preds = %139
  %158 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %159 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %158, i32 0, i32 4
  %160 = load i8*, i8** %159, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %189, label %162

162:                                              ; preds = %157
  %163 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %164 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %163, i32 0, i32 3
  %165 = load i8*, i8** %164, align 8
  %166 = call i64 @ipv4_is_multicast(i8* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %162
  %169 = load %struct.net_device*, %struct.net_device** %9, align 8
  %170 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %171 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 8
  %173 = call i8* @inet_select_addr(%struct.net_device* %169, i32 0, i32 %172)
  %174 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %175 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %174, i32 0, i32 4
  store i8* %173, i8** %175, align 8
  br label %188

176:                                              ; preds = %162
  %177 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %178 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %177, i32 0, i32 3
  %179 = load i8*, i8** %178, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %187, label %181

181:                                              ; preds = %176
  %182 = load %struct.net_device*, %struct.net_device** %9, align 8
  %183 = load i32, i32* @RT_SCOPE_HOST, align 4
  %184 = call i8* @inet_select_addr(%struct.net_device* %182, i32 0, i32 %183)
  %185 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %186 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %185, i32 0, i32 4
  store i8* %184, i8** %186, align 8
  br label %187

187:                                              ; preds = %181, %176
  br label %188

188:                                              ; preds = %187, %168
  br label %189

189:                                              ; preds = %188, %157
  br label %190

190:                                              ; preds = %189, %95
  %191 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %192 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %191, i32 0, i32 3
  %193 = load i8*, i8** %192, align 8
  %194 = icmp ne i8* %193, null
  br i1 %194, label %225, label %195

195:                                              ; preds = %190
  %196 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %197 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %196, i32 0, i32 4
  %198 = load i8*, i8** %197, align 8
  %199 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %200 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %199, i32 0, i32 3
  store i8* %198, i8** %200, align 8
  %201 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %202 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %201, i32 0, i32 3
  %203 = load i8*, i8** %202, align 8
  %204 = icmp ne i8* %203, null
  br i1 %204, label %212, label %205

205:                                              ; preds = %195
  %206 = load i32, i32* @INADDR_LOOPBACK, align 4
  %207 = call i8* @htonl(i32 %206)
  %208 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %209 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %208, i32 0, i32 4
  store i8* %207, i8** %209, align 8
  %210 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %211 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %210, i32 0, i32 3
  store i8* %207, i8** %211, align 8
  br label %212

212:                                              ; preds = %205, %195
  %213 = load %struct.net*, %struct.net** %5, align 8
  %214 = getelementptr inbounds %struct.net, %struct.net* %213, i32 0, i32 0
  %215 = load %struct.net_device*, %struct.net_device** %214, align 8
  store %struct.net_device* %215, %struct.net_device** %9, align 8
  %216 = load i32, i32* @LOOPBACK_IFINDEX, align 4
  %217 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %218 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %217, i32 0, i32 0
  store i32 %216, i32* %218, align 8
  %219 = load i64, i64* @RTN_LOCAL, align 8
  %220 = load %struct.fib_result*, %struct.fib_result** %7, align 8
  %221 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %220, i32 0, i32 0
  store i64 %219, i64* %221, align 8
  %222 = load i32, i32* @RTCF_LOCAL, align 4
  %223 = load i32, i32* %11, align 4
  %224 = or i32 %223, %222
  store i32 %224, i32* %11, align 4
  br label %341

225:                                              ; preds = %190
  %226 = load %struct.net*, %struct.net** %5, align 8
  %227 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %228 = load %struct.fib_result*, %struct.fib_result** %7, align 8
  %229 = call i32 @fib_lookup(%struct.net* %226, %struct.flowi4* %227, %struct.fib_result* %228, i32 0)
  store i32 %229, i32* %13, align 4
  %230 = load i32, i32* %13, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %272

232:                                              ; preds = %225
  %233 = load %struct.fib_result*, %struct.fib_result** %7, align 8
  %234 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %233, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %234, align 8
  %235 = load %struct.fib_result*, %struct.fib_result** %7, align 8
  %236 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %235, i32 0, i32 2
  store i32* null, i32** %236, align 8
  %237 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %238 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %269

241:                                              ; preds = %232
  %242 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %243 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %242, i32 0, i32 3
  %244 = load i8*, i8** %243, align 8
  %245 = call i64 @ipv4_is_multicast(i8* %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %254, label %247

247:                                              ; preds = %241
  %248 = load %struct.net*, %struct.net** %5, align 8
  %249 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %250 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = call i32 @netif_index_is_l3_master(%struct.net* %248, i32 %251)
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %269, label %254

254:                                              ; preds = %247, %241
  %255 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %256 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %255, i32 0, i32 4
  %257 = load i8*, i8** %256, align 8
  %258 = icmp eq i8* %257, null
  br i1 %258, label %259, label %265

259:                                              ; preds = %254
  %260 = load %struct.net_device*, %struct.net_device** %9, align 8
  %261 = load i32, i32* @RT_SCOPE_LINK, align 4
  %262 = call i8* @inet_select_addr(%struct.net_device* %260, i32 0, i32 %261)
  %263 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %264 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %263, i32 0, i32 4
  store i8* %262, i8** %264, align 8
  br label %265

265:                                              ; preds = %259, %254
  %266 = load i64, i64* @RTN_UNICAST, align 8
  %267 = load %struct.fib_result*, %struct.fib_result** %7, align 8
  %268 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %267, i32 0, i32 0
  store i64 %266, i64* %268, align 8
  br label %341

269:                                              ; preds = %247, %232
  %270 = load i32, i32* %13, align 4
  %271 = call %struct.rtable* @ERR_PTR(i32 %270)
  store %struct.rtable* %271, %struct.rtable** %12, align 8
  br label %348

272:                                              ; preds = %225
  %273 = load %struct.fib_result*, %struct.fib_result** %7, align 8
  %274 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = load i64, i64* @RTN_LOCAL, align 8
  %277 = icmp eq i64 %275, %276
  br i1 %277, label %278, label %328

278:                                              ; preds = %272
  %279 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %280 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %279, i32 0, i32 4
  %281 = load i8*, i8** %280, align 8
  %282 = icmp ne i8* %281, null
  br i1 %282, label %305, label %283

283:                                              ; preds = %278
  %284 = load %struct.fib_result*, %struct.fib_result** %7, align 8
  %285 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %284, i32 0, i32 1
  %286 = load %struct.TYPE_2__*, %struct.TYPE_2__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %286, i32 0, i32 0
  %288 = load i8*, i8** %287, align 8
  %289 = icmp ne i8* %288, null
  br i1 %289, label %290, label %298

290:                                              ; preds = %283
  %291 = load %struct.fib_result*, %struct.fib_result** %7, align 8
  %292 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %291, i32 0, i32 1
  %293 = load %struct.TYPE_2__*, %struct.TYPE_2__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %293, i32 0, i32 0
  %295 = load i8*, i8** %294, align 8
  %296 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %297 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %296, i32 0, i32 4
  store i8* %295, i8** %297, align 8
  br label %304

298:                                              ; preds = %283
  %299 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %300 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %299, i32 0, i32 3
  %301 = load i8*, i8** %300, align 8
  %302 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %303 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %302, i32 0, i32 4
  store i8* %301, i8** %303, align 8
  br label %304

304:                                              ; preds = %298, %290
  br label %305

305:                                              ; preds = %304, %278
  %306 = load %struct.fib_result*, %struct.fib_result** %7, align 8
  %307 = call %struct.net_device* @FIB_RES_DEV(%struct.fib_result* byval(%struct.fib_result) align 8 %306)
  %308 = call i64 @l3mdev_master_dev_rcu(%struct.net_device* %307)
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %312

310:                                              ; preds = %305
  %311 = inttoptr i64 %308 to %struct.net_device*
  br label %316

312:                                              ; preds = %305
  %313 = load %struct.net*, %struct.net** %5, align 8
  %314 = getelementptr inbounds %struct.net, %struct.net* %313, i32 0, i32 0
  %315 = load %struct.net_device*, %struct.net_device** %314, align 8
  br label %316

316:                                              ; preds = %312, %310
  %317 = phi %struct.net_device* [ %311, %310 ], [ %315, %312 ]
  store %struct.net_device* %317, %struct.net_device** %9, align 8
  %318 = load %struct.fib_result*, %struct.fib_result** %7, align 8
  %319 = call i32 @FIB_RES_OIF(%struct.fib_result* byval(%struct.fib_result) align 8 %318)
  store i32 %319, i32* %10, align 4
  %320 = load %struct.net_device*, %struct.net_device** %9, align 8
  %321 = getelementptr inbounds %struct.net_device, %struct.net_device* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %324 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %323, i32 0, i32 0
  store i32 %322, i32* %324, align 8
  %325 = load i32, i32* @RTCF_LOCAL, align 4
  %326 = load i32, i32* %11, align 4
  %327 = or i32 %326, %325
  store i32 %327, i32* %11, align 4
  br label %341

328:                                              ; preds = %272
  %329 = load %struct.net*, %struct.net** %5, align 8
  %330 = load %struct.fib_result*, %struct.fib_result** %7, align 8
  %331 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %332 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %333 = call i32 @fib_select_path(%struct.net* %329, %struct.fib_result* %330, %struct.flowi4* %331, %struct.sk_buff* %332)
  %334 = load %struct.fib_result*, %struct.fib_result** %7, align 8
  %335 = call %struct.net_device* @FIB_RES_DEV(%struct.fib_result* byval(%struct.fib_result) align 8 %334)
  store %struct.net_device* %335, %struct.net_device** %9, align 8
  %336 = load %struct.net_device*, %struct.net_device** %9, align 8
  %337 = getelementptr inbounds %struct.net_device, %struct.net_device* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 4
  %339 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %340 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %339, i32 0, i32 0
  store i32 %338, i32* %340, align 8
  br label %341

341:                                              ; preds = %328, %316, %265, %212, %156, %72
  %342 = load %struct.fib_result*, %struct.fib_result** %7, align 8
  %343 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %344 = load i32, i32* %10, align 4
  %345 = load %struct.net_device*, %struct.net_device** %9, align 8
  %346 = load i32, i32* %11, align 4
  %347 = call %struct.rtable* @__mkroute_output(%struct.fib_result* %342, %struct.flowi4* %343, i32 %344, %struct.net_device* %345, i32 %346)
  store %struct.rtable* %347, %struct.rtable** %12, align 8
  br label %348

348:                                              ; preds = %341, %269, %123, %111, %92, %71, %39
  %349 = load %struct.rtable*, %struct.rtable** %12, align 8
  ret %struct.rtable* %349
}

declare dso_local i64 @ipv4_is_multicast(i8*) #1

declare dso_local i64 @ipv4_is_lbcast(i8*) #1

declare dso_local i64 @ipv4_is_zeronet(i8*) #1

declare dso_local %struct.rtable* @ERR_PTR(i32) #1

declare dso_local %struct.net_device* @__ip_dev_find(%struct.net*, i8*, i32) #1

declare dso_local %struct.net_device* @dev_get_by_index_rcu(%struct.net*, i32) #1

declare dso_local i32 @__in_dev_get_rcu(%struct.net_device*) #1

declare dso_local i64 @ipv4_is_local_multicast(i8*) #1

declare dso_local i8* @inet_select_addr(%struct.net_device*, i32, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @fib_lookup(%struct.net*, %struct.flowi4*, %struct.fib_result*, i32) #1

declare dso_local i32 @netif_index_is_l3_master(%struct.net*, i32) #1

declare dso_local i64 @l3mdev_master_dev_rcu(%struct.net_device*) #1

declare dso_local %struct.net_device* @FIB_RES_DEV(%struct.fib_result* byval(%struct.fib_result) align 8) #1

declare dso_local i32 @FIB_RES_OIF(%struct.fib_result* byval(%struct.fib_result) align 8) #1

declare dso_local i32 @fib_select_path(%struct.net*, %struct.fib_result*, %struct.flowi4*, %struct.sk_buff*) #1

declare dso_local %struct.rtable* @__mkroute_output(%struct.fib_result*, %struct.flowi4*, i32, %struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
