; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_validate_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_validate_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.nlattr = type opaque
%struct.sw_flow_key = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sw_flow_actions = type { i32 }
%struct.ovs_key_ipv4 = type { i32, i32 }
%struct.ovs_key_ipv6 = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_MAX = common dso_local global i32 0, align 4
@ovs_key_lens = common dso_local global %struct.TYPE_4__* null, align 8
@MAC_PROTO_ETHERNET = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@IPPROTO_SCTP = common dso_local global i32 0, align 4
@ETH_P_NSH = common dso_local global i32 0, align 4
@OVS_ACTION_ATTR_SET_TO_MASKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*, %struct.sw_flow_key*, %struct.sw_flow_actions**, i32*, i32, i32, i32, i32)* @validate_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_set(%struct.nlattr* %0, %struct.sw_flow_key* %1, %struct.sw_flow_actions** %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.nlattr*, align 8
  %11 = alloca %struct.sw_flow_key*, align 8
  %12 = alloca %struct.sw_flow_actions**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.nlattr*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca %struct.ovs_key_ipv4*, align 8
  %22 = alloca %struct.ovs_key_ipv6*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.ovs_key_ipv4*, align 8
  %25 = alloca %struct.ovs_key_ipv6*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.nlattr*, align 8
  %29 = alloca %struct.ovs_key_ipv6*, align 8
  store %struct.nlattr* %0, %struct.nlattr** %10, align 8
  store %struct.sw_flow_key* %1, %struct.sw_flow_key** %11, align 8
  store %struct.sw_flow_actions** %2, %struct.sw_flow_actions*** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %30 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %31 = call i8* @nla_data(%struct.nlattr* %30)
  %32 = bitcast i8* %31 to %struct.nlattr*
  store %struct.nlattr* %32, %struct.nlattr** %18, align 8
  %33 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %34 = call i32 @nla_type(%struct.nlattr* %33)
  store i32 %34, i32* %19, align 4
  %35 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %36 = call i64 @nla_len(%struct.nlattr* %35)
  %37 = call i64 @nla_total_size(i64 %36)
  %38 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %39 = call i64 @nla_len(%struct.nlattr* %38)
  %40 = icmp ne i64 %37, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %8
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %9, align 4
  br label %397

44:                                               ; preds = %8
  %45 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %46 = call i64 @nla_len(%struct.nlattr* %45)
  store i64 %46, i64* %20, align 8
  %47 = load i32, i32* %16, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i64, i64* %20, align 8
  %51 = udiv i64 %50, 2
  store i64 %51, i64* %20, align 8
  br label %52

52:                                               ; preds = %49, %44
  %53 = load i32, i32* %19, align 4
  %54 = load i32, i32* @OVS_KEY_ATTR_MAX, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %66, label %56

56:                                               ; preds = %52
  %57 = load i64, i64* %20, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ovs_key_lens, align 8
  %59 = load i32, i32* %19, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @check_attr_len(i64 %57, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %56, %52
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %9, align 4
  br label %397

69:                                               ; preds = %56
  %70 = load i32, i32* %16, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %69
  %73 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %74 = call i8* @nla_data(%struct.nlattr* %73)
  %75 = load i64, i64* %20, align 8
  %76 = call i32 @validate_masked(i8* %74, i64 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %72
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %9, align 4
  br label %397

81:                                               ; preds = %72, %69
  %82 = load i32, i32* %19, align 4
  switch i32 %82, label %331 [
    i32 133, label %83
    i32 131, label %83
    i32 139, label %83
    i32 140, label %83
    i32 138, label %84
    i32 129, label %92
    i32 137, label %109
    i32 136, label %165
    i32 130, label %241
    i32 128, label %262
    i32 135, label %283
    i32 132, label %291
    i32 134, label %312
  ]

83:                                               ; preds = %81, %81, %81, %81
  br label %334

84:                                               ; preds = %81
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* @MAC_PROTO_ETHERNET, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %9, align 4
  br label %397

91:                                               ; preds = %84
  br label %334

92:                                               ; preds = %81
  %93 = load i32, i32* %16, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %9, align 4
  br label %397

98:                                               ; preds = %92
  %99 = load i32*, i32** %13, align 8
  store i32 1, i32* %99, align 4
  %100 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %101 = load %struct.sw_flow_actions**, %struct.sw_flow_actions*** %12, align 8
  %102 = load i32, i32* %17, align 4
  %103 = call i32 @validate_and_copy_set_tun(%struct.nlattr* %100, %struct.sw_flow_actions** %101, i32 %102)
  store i32 %103, i32* %23, align 4
  %104 = load i32, i32* %23, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %98
  %107 = load i32, i32* %23, align 4
  store i32 %107, i32* %9, align 4
  br label %397

108:                                              ; preds = %98
  br label %334

109:                                              ; preds = %81
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* @ETH_P_IP, align 4
  %112 = call i32 @htons(i32 %111)
  %113 = icmp ne i32 %110, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %9, align 4
  br label %397

117:                                              ; preds = %109
  %118 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %119 = call i8* @nla_data(%struct.nlattr* %118)
  %120 = bitcast i8* %119 to %struct.ovs_key_ipv4*
  store %struct.ovs_key_ipv4* %120, %struct.ovs_key_ipv4** %21, align 8
  %121 = load i32, i32* %16, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %139

123:                                              ; preds = %117
  %124 = load %struct.ovs_key_ipv4*, %struct.ovs_key_ipv4** %21, align 8
  %125 = getelementptr inbounds %struct.ovs_key_ipv4, %struct.ovs_key_ipv4* %124, i64 1
  store %struct.ovs_key_ipv4* %125, %struct.ovs_key_ipv4** %24, align 8
  %126 = load %struct.ovs_key_ipv4*, %struct.ovs_key_ipv4** %24, align 8
  %127 = getelementptr inbounds %struct.ovs_key_ipv4, %struct.ovs_key_ipv4* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %123
  %131 = load %struct.ovs_key_ipv4*, %struct.ovs_key_ipv4** %24, align 8
  %132 = getelementptr inbounds %struct.ovs_key_ipv4, %struct.ovs_key_ipv4* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %130, %123
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %9, align 4
  br label %397

138:                                              ; preds = %130
  br label %164

139:                                              ; preds = %117
  %140 = load %struct.ovs_key_ipv4*, %struct.ovs_key_ipv4** %21, align 8
  %141 = getelementptr inbounds %struct.ovs_key_ipv4, %struct.ovs_key_ipv4* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.sw_flow_key*, %struct.sw_flow_key** %11, align 8
  %144 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %142, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %139
  %149 = load i32, i32* @EINVAL, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %9, align 4
  br label %397

151:                                              ; preds = %139
  %152 = load %struct.ovs_key_ipv4*, %struct.ovs_key_ipv4** %21, align 8
  %153 = getelementptr inbounds %struct.ovs_key_ipv4, %struct.ovs_key_ipv4* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.sw_flow_key*, %struct.sw_flow_key** %11, align 8
  %156 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %154, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %151
  %161 = load i32, i32* @EINVAL, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %9, align 4
  br label %397

163:                                              ; preds = %151
  br label %164

164:                                              ; preds = %163, %138
  br label %334

165:                                              ; preds = %81
  %166 = load i32, i32* %15, align 4
  %167 = load i32, i32* @ETH_P_IPV6, align 4
  %168 = call i32 @htons(i32 %167)
  %169 = icmp ne i32 %166, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %165
  %171 = load i32, i32* @EINVAL, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %9, align 4
  br label %397

173:                                              ; preds = %165
  %174 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %175 = call i8* @nla_data(%struct.nlattr* %174)
  %176 = bitcast i8* %175 to %struct.ovs_key_ipv6*
  store %struct.ovs_key_ipv6* %176, %struct.ovs_key_ipv6** %22, align 8
  %177 = load i32, i32* %16, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %205

179:                                              ; preds = %173
  %180 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %22, align 8
  %181 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %180, i64 1
  store %struct.ovs_key_ipv6* %181, %struct.ovs_key_ipv6** %25, align 8
  %182 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %25, align 8
  %183 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %191, label %186

186:                                              ; preds = %179
  %187 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %25, align 8
  %188 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %186, %179
  %192 = load i32, i32* @EINVAL, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %9, align 4
  br label %397

194:                                              ; preds = %186
  %195 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %25, align 8
  %196 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @ntohl(i32 %197)
  %199 = and i32 %198, -1048576
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %194
  %202 = load i32, i32* @EINVAL, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %9, align 4
  br label %397

204:                                              ; preds = %194
  br label %230

205:                                              ; preds = %173
  %206 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %22, align 8
  %207 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.sw_flow_key*, %struct.sw_flow_key** %11, align 8
  %210 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = icmp ne i32 %208, %212
  br i1 %213, label %214, label %217

214:                                              ; preds = %205
  %215 = load i32, i32* @EINVAL, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %9, align 4
  br label %397

217:                                              ; preds = %205
  %218 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %22, align 8
  %219 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.sw_flow_key*, %struct.sw_flow_key** %11, align 8
  %222 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = icmp ne i32 %220, %224
  br i1 %225, label %226, label %229

226:                                              ; preds = %217
  %227 = load i32, i32* @EINVAL, align 4
  %228 = sub nsw i32 0, %227
  store i32 %228, i32* %9, align 4
  br label %397

229:                                              ; preds = %217
  br label %230

230:                                              ; preds = %229, %204
  %231 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %22, align 8
  %232 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @ntohl(i32 %233)
  %235 = and i32 %234, -1048576
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %230
  %238 = load i32, i32* @EINVAL, align 4
  %239 = sub nsw i32 0, %238
  store i32 %239, i32* %9, align 4
  br label %397

240:                                              ; preds = %230
  br label %334

241:                                              ; preds = %81
  %242 = load i32, i32* %15, align 4
  %243 = load i32, i32* @ETH_P_IP, align 4
  %244 = call i32 @htons(i32 %243)
  %245 = icmp ne i32 %242, %244
  br i1 %245, label %246, label %251

246:                                              ; preds = %241
  %247 = load i32, i32* %15, align 4
  %248 = load i32, i32* @ETH_P_IPV6, align 4
  %249 = call i32 @htons(i32 %248)
  %250 = icmp ne i32 %247, %249
  br i1 %250, label %258, label %251

251:                                              ; preds = %246, %241
  %252 = load %struct.sw_flow_key*, %struct.sw_flow_key** %11, align 8
  %253 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* @IPPROTO_TCP, align 4
  %257 = icmp ne i32 %255, %256
  br i1 %257, label %258, label %261

258:                                              ; preds = %251, %246
  %259 = load i32, i32* @EINVAL, align 4
  %260 = sub nsw i32 0, %259
  store i32 %260, i32* %9, align 4
  br label %397

261:                                              ; preds = %251
  br label %334

262:                                              ; preds = %81
  %263 = load i32, i32* %15, align 4
  %264 = load i32, i32* @ETH_P_IP, align 4
  %265 = call i32 @htons(i32 %264)
  %266 = icmp ne i32 %263, %265
  br i1 %266, label %267, label %272

267:                                              ; preds = %262
  %268 = load i32, i32* %15, align 4
  %269 = load i32, i32* @ETH_P_IPV6, align 4
  %270 = call i32 @htons(i32 %269)
  %271 = icmp ne i32 %268, %270
  br i1 %271, label %279, label %272

272:                                              ; preds = %267, %262
  %273 = load %struct.sw_flow_key*, %struct.sw_flow_key** %11, align 8
  %274 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* @IPPROTO_UDP, align 4
  %278 = icmp ne i32 %276, %277
  br i1 %278, label %279, label %282

279:                                              ; preds = %272, %267
  %280 = load i32, i32* @EINVAL, align 4
  %281 = sub nsw i32 0, %280
  store i32 %281, i32* %9, align 4
  br label %397

282:                                              ; preds = %272
  br label %334

283:                                              ; preds = %81
  %284 = load i32, i32* %15, align 4
  %285 = call i32 @eth_p_mpls(i32 %284)
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %290, label %287

287:                                              ; preds = %283
  %288 = load i32, i32* @EINVAL, align 4
  %289 = sub nsw i32 0, %288
  store i32 %289, i32* %9, align 4
  br label %397

290:                                              ; preds = %283
  br label %334

291:                                              ; preds = %81
  %292 = load i32, i32* %15, align 4
  %293 = load i32, i32* @ETH_P_IP, align 4
  %294 = call i32 @htons(i32 %293)
  %295 = icmp ne i32 %292, %294
  br i1 %295, label %296, label %301

296:                                              ; preds = %291
  %297 = load i32, i32* %15, align 4
  %298 = load i32, i32* @ETH_P_IPV6, align 4
  %299 = call i32 @htons(i32 %298)
  %300 = icmp ne i32 %297, %299
  br i1 %300, label %308, label %301

301:                                              ; preds = %296, %291
  %302 = load %struct.sw_flow_key*, %struct.sw_flow_key** %11, align 8
  %303 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* @IPPROTO_SCTP, align 4
  %307 = icmp ne i32 %305, %306
  br i1 %307, label %308, label %311

308:                                              ; preds = %301, %296
  %309 = load i32, i32* @EINVAL, align 4
  %310 = sub nsw i32 0, %309
  store i32 %310, i32* %9, align 4
  br label %397

311:                                              ; preds = %301
  br label %334

312:                                              ; preds = %81
  %313 = load i32, i32* %15, align 4
  %314 = load i32, i32* @ETH_P_NSH, align 4
  %315 = call i32 @htons(i32 %314)
  %316 = icmp ne i32 %313, %315
  br i1 %316, label %317, label %320

317:                                              ; preds = %312
  %318 = load i32, i32* @EINVAL, align 4
  %319 = sub nsw i32 0, %318
  store i32 %319, i32* %9, align 4
  br label %397

320:                                              ; preds = %312
  %321 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %322 = call i8* @nla_data(%struct.nlattr* %321)
  %323 = load i32, i32* %16, align 4
  %324 = load i32, i32* %17, align 4
  %325 = call i32 @validate_nsh(i8* %322, i32 %323, i32 0, i32 %324)
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %330, label %327

327:                                              ; preds = %320
  %328 = load i32, i32* @EINVAL, align 4
  %329 = sub nsw i32 0, %328
  store i32 %329, i32* %9, align 4
  br label %397

330:                                              ; preds = %320
  br label %334

331:                                              ; preds = %81
  %332 = load i32, i32* @EINVAL, align 4
  %333 = sub nsw i32 0, %332
  store i32 %333, i32* %9, align 4
  br label %397

334:                                              ; preds = %330, %311, %290, %282, %261, %240, %164, %108, %91, %83
  %335 = load i32, i32* %16, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %396, label %337

337:                                              ; preds = %334
  %338 = load i32, i32* %19, align 4
  %339 = icmp ne i32 %338, 129
  br i1 %339, label %340, label %396

340:                                              ; preds = %337
  %341 = load i64, i64* %20, align 8
  %342 = mul i64 %341, 2
  %343 = trunc i64 %342 to i32
  store i32 %343, i32* %27, align 4
  %344 = load i32*, i32** %13, align 8
  store i32 1, i32* %344, align 4
  %345 = load %struct.sw_flow_actions**, %struct.sw_flow_actions*** %12, align 8
  %346 = load i32, i32* @OVS_ACTION_ATTR_SET_TO_MASKED, align 4
  %347 = load i32, i32* %17, align 4
  %348 = call i32 @add_nested_action_start(%struct.sw_flow_actions** %345, i32 %346, i32 %347)
  store i32 %348, i32* %26, align 4
  %349 = load i32, i32* %26, align 4
  %350 = icmp slt i32 %349, 0
  br i1 %350, label %351, label %353

351:                                              ; preds = %340
  %352 = load i32, i32* %26, align 4
  store i32 %352, i32* %9, align 4
  br label %397

353:                                              ; preds = %340
  %354 = load %struct.sw_flow_actions**, %struct.sw_flow_actions*** %12, align 8
  %355 = load i32, i32* %19, align 4
  %356 = load i32, i32* %27, align 4
  %357 = load i32, i32* %17, align 4
  %358 = call %struct.nlattr* @__add_action(%struct.sw_flow_actions** %354, i32 %355, i32* null, i32 %356, i32 %357)
  store %struct.nlattr* %358, %struct.nlattr** %28, align 8
  %359 = load %struct.nlattr*, %struct.nlattr** %28, align 8
  %360 = call i64 @IS_ERR(%struct.nlattr* %359)
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %365

362:                                              ; preds = %353
  %363 = load %struct.nlattr*, %struct.nlattr** %28, align 8
  %364 = call i32 @PTR_ERR(%struct.nlattr* %363)
  store i32 %364, i32* %9, align 4
  br label %397

365:                                              ; preds = %353
  %366 = load %struct.nlattr*, %struct.nlattr** %28, align 8
  %367 = call i8* @nla_data(%struct.nlattr* %366)
  %368 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %369 = call i8* @nla_data(%struct.nlattr* %368)
  %370 = load i64, i64* %20, align 8
  %371 = call i32 @memcpy(i8* %367, i8* %369, i64 %370)
  %372 = load %struct.nlattr*, %struct.nlattr** %28, align 8
  %373 = call i8* @nla_data(%struct.nlattr* %372)
  %374 = load i64, i64* %20, align 8
  %375 = getelementptr i8, i8* %373, i64 %374
  %376 = load i64, i64* %20, align 8
  %377 = call i32 @memset(i8* %375, i32 255, i64 %376)
  %378 = load i32, i32* %19, align 4
  %379 = icmp eq i32 %378, 136
  br i1 %379, label %380, label %391

380:                                              ; preds = %365
  %381 = load %struct.nlattr*, %struct.nlattr** %28, align 8
  %382 = call i8* @nla_data(%struct.nlattr* %381)
  %383 = load i64, i64* %20, align 8
  %384 = getelementptr i8, i8* %382, i64 %383
  %385 = bitcast i8* %384 to %struct.ovs_key_ipv6*
  store %struct.ovs_key_ipv6* %385, %struct.ovs_key_ipv6** %29, align 8
  %386 = call i32 @htonl(i32 1048575)
  %387 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %29, align 8
  %388 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 4
  %390 = and i32 %389, %386
  store i32 %390, i32* %388, align 4
  br label %391

391:                                              ; preds = %380, %365
  %392 = load %struct.sw_flow_actions**, %struct.sw_flow_actions*** %12, align 8
  %393 = load %struct.sw_flow_actions*, %struct.sw_flow_actions** %392, align 8
  %394 = load i32, i32* %26, align 4
  %395 = call i32 @add_nested_action_end(%struct.sw_flow_actions* %393, i32 %394)
  br label %396

396:                                              ; preds = %391, %337, %334
  store i32 0, i32* %9, align 4
  br label %397

397:                                              ; preds = %396, %362, %351, %331, %327, %317, %308, %287, %279, %258, %237, %226, %214, %201, %191, %170, %160, %148, %135, %114, %106, %95, %88, %78, %66, %41
  %398 = load i32, i32* %9, align 4
  ret i32 %398
}

declare dso_local i8* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @nla_type(%struct.nlattr*) #1

declare dso_local i64 @nla_total_size(i64) #1

declare dso_local i64 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @check_attr_len(i64, i32) #1

declare dso_local i32 @validate_masked(i8*, i64) #1

declare dso_local i32 @validate_and_copy_set_tun(%struct.nlattr*, %struct.sw_flow_actions**, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @eth_p_mpls(i32) #1

declare dso_local i32 @validate_nsh(i8*, i32, i32, i32) #1

declare dso_local i32 @add_nested_action_start(%struct.sw_flow_actions**, i32, i32) #1

declare dso_local %struct.nlattr* @__add_action(%struct.sw_flow_actions**, i32, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.nlattr*) #1

declare dso_local i32 @PTR_ERR(%struct.nlattr*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @add_nested_action_end(%struct.sw_flow_actions*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
