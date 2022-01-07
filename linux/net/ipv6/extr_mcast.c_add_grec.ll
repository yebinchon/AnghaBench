; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_add_grec.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_add_grec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ifmcaddr6 = type { i32, i64, i64, %struct.ip6_sf_list*, %struct.ip6_sf_list*, %struct.inet6_dev* }
%struct.ip6_sf_list = type { i64, %struct.ip6_sf_list*, %struct.in6_addr, i64 }
%struct.in6_addr = type { i32 }
%struct.inet6_dev = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.mld2_report = type { i64 }
%struct.mld2_grec = type { i8* }

@MAF_NOREPORT = common dso_local global i32 0, align 4
@IPV6_MIN_MTU = common dso_local global i32 0, align 4
@MLD2_MODE_IS_INCLUDE = common dso_local global i32 0, align 4
@MLD2_MODE_IS_EXCLUDE = common dso_local global i32 0, align 4
@MLD2_CHANGE_TO_EXCLUDE = common dso_local global i32 0, align 4
@MCAST_EXCLUDE = common dso_local global i64 0, align 8
@MLD2_ALLOW_NEW_SOURCES = common dso_local global i32 0, align 4
@MLD2_BLOCK_OLD_SOURCES = common dso_local global i32 0, align 4
@MAF_GSQUERY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sk_buff*, %struct.ifmcaddr6*, i32, i32, i32, i32)* @add_grec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @add_grec(%struct.sk_buff* %0, %struct.ifmcaddr6* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.ifmcaddr6*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.inet6_dev*, align 8
  %15 = alloca %struct.net_device*, align 8
  %16 = alloca %struct.mld2_report*, align 8
  %17 = alloca %struct.mld2_grec*, align 8
  %18 = alloca %struct.ip6_sf_list*, align 8
  %19 = alloca %struct.ip6_sf_list*, align 8
  %20 = alloca %struct.ip6_sf_list*, align 8
  %21 = alloca %struct.ip6_sf_list**, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.in6_addr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.ifmcaddr6* %1, %struct.ifmcaddr6** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %29 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %9, align 8
  %30 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %29, i32 0, i32 5
  %31 = load %struct.inet6_dev*, %struct.inet6_dev** %30, align 8
  store %struct.inet6_dev* %31, %struct.inet6_dev** %14, align 8
  %32 = load %struct.inet6_dev*, %struct.inet6_dev** %14, align 8
  %33 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %32, i32 0, i32 0
  %34 = load %struct.net_device*, %struct.net_device** %33, align 8
  store %struct.net_device* %34, %struct.net_device** %15, align 8
  store %struct.mld2_grec* null, %struct.mld2_grec** %17, align 8
  %35 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %9, align 8
  %36 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @MAF_NOREPORT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %6
  %42 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %42, %struct.sk_buff** %7, align 8
  br label %359

43:                                               ; preds = %6
  %44 = load %struct.net_device*, %struct.net_device** %15, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @READ_ONCE(i32 %46)
  store i32 %47, i32* %27, align 4
  %48 = load i32, i32* %27, align 4
  %49 = load i32, i32* @IPV6_MIN_MTU, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %52, %struct.sk_buff** %7, align 8
  br label %359

53:                                               ; preds = %43
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @MLD2_MODE_IS_INCLUDE, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @MLD2_MODE_IS_EXCLUDE, align 4
  %60 = icmp eq i32 %58, %59
  br label %61

61:                                               ; preds = %57, %53
  %62 = phi i1 [ true, %53 ], [ %60, %57 ]
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %25, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @MLD2_MODE_IS_EXCLUDE, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %71, label %67

67:                                               ; preds = %61
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @MLD2_CHANGE_TO_EXCLUDE, align 4
  %70 = icmp eq i32 %68, %69
  br label %71

71:                                               ; preds = %67, %61
  %72 = phi i1 [ true, %61 ], [ %70, %67 ]
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %26, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %9, align 8
  %78 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %77, i32 0, i32 4
  br label %82

79:                                               ; preds = %71
  %80 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %9, align 8
  %81 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %80, i32 0, i32 3
  br label %82

82:                                               ; preds = %79, %76
  %83 = phi %struct.ip6_sf_list** [ %78, %76 ], [ %81, %79 ]
  store %struct.ip6_sf_list** %83, %struct.ip6_sf_list*** %21, align 8
  %84 = load %struct.ip6_sf_list**, %struct.ip6_sf_list*** %21, align 8
  %85 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %84, align 8
  %86 = icmp ne %struct.ip6_sf_list* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %82
  br label %297

88:                                               ; preds = %82
  %89 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %90 = icmp ne %struct.sk_buff* %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %93 = call i64 @skb_transport_header(%struct.sk_buff* %92)
  %94 = inttoptr i64 %93 to %struct.mld2_report*
  br label %96

95:                                               ; preds = %88
  br label %96

96:                                               ; preds = %95, %91
  %97 = phi %struct.mld2_report* [ %94, %91 ], [ null, %95 ]
  store %struct.mld2_report* %97, %struct.mld2_report** %16, align 8
  %98 = load i32, i32* %26, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %128

100:                                              ; preds = %96
  %101 = load %struct.mld2_report*, %struct.mld2_report** %16, align 8
  %102 = icmp ne %struct.mld2_report* %101, null
  br i1 %102, label %103, label %127

103:                                              ; preds = %100
  %104 = load %struct.mld2_report*, %struct.mld2_report** %16, align 8
  %105 = getelementptr inbounds %struct.mld2_report, %struct.mld2_report* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %127

108:                                              ; preds = %103
  %109 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %110 = call i32 @AVAILABLE(%struct.sk_buff* %109)
  %111 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %9, align 8
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @grec_size(%struct.ifmcaddr6* %111, i32 %112, i32 %113, i32 %114)
  %116 = icmp slt i32 %110, %115
  br i1 %116, label %117, label %127

117:                                              ; preds = %108
  %118 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %119 = icmp ne %struct.sk_buff* %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %122 = call i32 @mld_sendpack(%struct.sk_buff* %121)
  br label %123

123:                                              ; preds = %120, %117
  %124 = load %struct.inet6_dev*, %struct.inet6_dev** %14, align 8
  %125 = load i32, i32* %27, align 4
  %126 = call %struct.sk_buff* @mld_newpack(%struct.inet6_dev* %124, i32 %125)
  store %struct.sk_buff* %126, %struct.sk_buff** %8, align 8
  br label %127

127:                                              ; preds = %123, %108, %103, %100
  br label %128

128:                                              ; preds = %127, %96
  store i32 1, i32* %24, align 4
  store %struct.ip6_sf_list* null, %struct.ip6_sf_list** %20, align 8
  %129 = load %struct.ip6_sf_list**, %struct.ip6_sf_list*** %21, align 8
  %130 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %129, align 8
  store %struct.ip6_sf_list* %130, %struct.ip6_sf_list** %18, align 8
  br label %131

131:                                              ; preds = %294, %128
  %132 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %18, align 8
  %133 = icmp ne %struct.ip6_sf_list* %132, null
  br i1 %133, label %134, label %296

134:                                              ; preds = %131
  %135 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %18, align 8
  %136 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %135, i32 0, i32 1
  %137 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %136, align 8
  store %struct.ip6_sf_list* %137, %struct.ip6_sf_list** %19, align 8
  %138 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %9, align 8
  %139 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %18, align 8
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* %12, align 4
  %143 = call i32 @is_in(%struct.ifmcaddr6* %138, %struct.ip6_sf_list* %139, i32 %140, i32 %141, i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %134
  %146 = load i32, i32* %13, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %150, label %148

148:                                              ; preds = %145
  %149 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %18, align 8
  store %struct.ip6_sf_list* %149, %struct.ip6_sf_list** %20, align 8
  br label %294

150:                                              ; preds = %145, %134
  %151 = load i32, i32* %11, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %150
  %154 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %9, align 8
  %155 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @MCAST_EXCLUDE, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %167, label %159

159:                                              ; preds = %153, %150
  %160 = load i32, i32* %11, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %181, label %162

162:                                              ; preds = %159
  %163 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %9, align 8
  %164 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %181

167:                                              ; preds = %162, %153
  %168 = load i32, i32* %10, align 4
  %169 = load i32, i32* @MLD2_ALLOW_NEW_SOURCES, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %175, label %171

171:                                              ; preds = %167
  %172 = load i32, i32* %10, align 4
  %173 = load i32, i32* @MLD2_BLOCK_OLD_SOURCES, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %181

175:                                              ; preds = %171, %167
  %176 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %18, align 8
  %177 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %175
  br label %259

181:                                              ; preds = %175, %171, %162, %159
  %182 = load i32, i32* %25, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %181
  %185 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %18, align 8
  %186 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %185, i32 0, i32 3
  store i64 0, i64* %186, align 8
  br label %187

187:                                              ; preds = %184, %181
  %188 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %189 = call i32 @AVAILABLE(%struct.sk_buff* %188)
  %190 = sext i32 %189 to i64
  %191 = load i32, i32* %24, align 4
  %192 = sext i32 %191 to i64
  %193 = mul i64 %192, 8
  %194 = add i64 4, %193
  %195 = icmp ult i64 %190, %194
  br i1 %195, label %196, label %221

196:                                              ; preds = %187
  %197 = load i32, i32* %26, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %196
  %200 = load i32, i32* %24, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %203, label %202

202:                                              ; preds = %199
  br label %296

203:                                              ; preds = %199, %196
  %204 = load %struct.mld2_grec*, %struct.mld2_grec** %17, align 8
  %205 = icmp ne %struct.mld2_grec* %204, null
  br i1 %205, label %206, label %211

206:                                              ; preds = %203
  %207 = load i32, i32* %22, align 4
  %208 = call i8* @htons(i32 %207)
  %209 = load %struct.mld2_grec*, %struct.mld2_grec** %17, align 8
  %210 = getelementptr inbounds %struct.mld2_grec, %struct.mld2_grec* %209, i32 0, i32 0
  store i8* %208, i8** %210, align 8
  br label %211

211:                                              ; preds = %206, %203
  %212 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %213 = icmp ne %struct.sk_buff* %212, null
  br i1 %213, label %214, label %217

214:                                              ; preds = %211
  %215 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %216 = call i32 @mld_sendpack(%struct.sk_buff* %215)
  br label %217

217:                                              ; preds = %214, %211
  %218 = load %struct.inet6_dev*, %struct.inet6_dev** %14, align 8
  %219 = load i32, i32* %27, align 4
  %220 = call %struct.sk_buff* @mld_newpack(%struct.inet6_dev* %218, i32 %219)
  store %struct.sk_buff* %220, %struct.sk_buff** %8, align 8
  store i32 1, i32* %24, align 4
  store i32 0, i32* %22, align 4
  br label %221

221:                                              ; preds = %217, %187
  %222 = load i32, i32* %24, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %230

224:                                              ; preds = %221
  %225 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %226 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %9, align 8
  %227 = load i32, i32* %10, align 4
  %228 = load i32, i32* %27, align 4
  %229 = call %struct.sk_buff* @add_grhead(%struct.sk_buff* %225, %struct.ifmcaddr6* %226, i32 %227, %struct.mld2_grec** %17, i32 %228)
  store %struct.sk_buff* %229, %struct.sk_buff** %8, align 8
  store i32 0, i32* %24, align 4
  br label %230

230:                                              ; preds = %224, %221
  %231 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %232 = icmp ne %struct.sk_buff* %231, null
  br i1 %232, label %234, label %233

233:                                              ; preds = %230
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  br label %359

234:                                              ; preds = %230
  %235 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %236 = call %struct.in6_addr* @skb_put(%struct.sk_buff* %235, i32 4)
  store %struct.in6_addr* %236, %struct.in6_addr** %28, align 8
  %237 = load %struct.in6_addr*, %struct.in6_addr** %28, align 8
  %238 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %18, align 8
  %239 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %238, i32 0, i32 2
  %240 = bitcast %struct.in6_addr* %237 to i8*
  %241 = bitcast %struct.in6_addr* %239 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %240, i8* align 8 %241, i64 4, i1 false)
  %242 = load i32, i32* %22, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %22, align 4
  %244 = load i32, i32* %23, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %23, align 4
  %246 = load i32, i32* %10, align 4
  %247 = load i32, i32* @MLD2_ALLOW_NEW_SOURCES, align 4
  %248 = icmp eq i32 %246, %247
  br i1 %248, label %253, label %249

249:                                              ; preds = %234
  %250 = load i32, i32* %10, align 4
  %251 = load i32, i32* @MLD2_BLOCK_OLD_SOURCES, align 4
  %252 = icmp eq i32 %250, %251
  br i1 %252, label %253, label %292

253:                                              ; preds = %249, %234
  %254 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %18, align 8
  %255 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %292

258:                                              ; preds = %253
  br label %259

259:                                              ; preds = %258, %180
  %260 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %18, align 8
  %261 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = add nsw i64 %262, -1
  store i64 %263, i64* %261, align 8
  %264 = load i32, i32* %12, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %269, label %266

266:                                              ; preds = %259
  %267 = load i32, i32* %11, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %291

269:                                              ; preds = %266, %259
  %270 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %18, align 8
  %271 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = icmp eq i64 %272, 0
  br i1 %273, label %274, label %291

274:                                              ; preds = %269
  %275 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %20, align 8
  %276 = icmp ne %struct.ip6_sf_list* %275, null
  br i1 %276, label %277, label %283

277:                                              ; preds = %274
  %278 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %18, align 8
  %279 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %278, i32 0, i32 1
  %280 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %279, align 8
  %281 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %20, align 8
  %282 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %281, i32 0, i32 1
  store %struct.ip6_sf_list* %280, %struct.ip6_sf_list** %282, align 8
  br label %288

283:                                              ; preds = %274
  %284 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %18, align 8
  %285 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %284, i32 0, i32 1
  %286 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %285, align 8
  %287 = load %struct.ip6_sf_list**, %struct.ip6_sf_list*** %21, align 8
  store %struct.ip6_sf_list* %286, %struct.ip6_sf_list** %287, align 8
  br label %288

288:                                              ; preds = %283, %277
  %289 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %18, align 8
  %290 = call i32 @kfree(%struct.ip6_sf_list* %289)
  br label %294

291:                                              ; preds = %269, %266
  br label %292

292:                                              ; preds = %291, %253, %249
  %293 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %18, align 8
  store %struct.ip6_sf_list* %293, %struct.ip6_sf_list** %20, align 8
  br label %294

294:                                              ; preds = %292, %288, %148
  %295 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %19, align 8
  store %struct.ip6_sf_list* %295, %struct.ip6_sf_list** %18, align 8
  br label %131

296:                                              ; preds = %202, %131
  br label %297

297:                                              ; preds = %296, %87
  %298 = load i32, i32* %23, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %339, label %300

300:                                              ; preds = %297
  %301 = load i32, i32* %10, align 4
  %302 = load i32, i32* @MLD2_ALLOW_NEW_SOURCES, align 4
  %303 = icmp eq i32 %301, %302
  br i1 %303, label %308, label %304

304:                                              ; preds = %300
  %305 = load i32, i32* %10, align 4
  %306 = load i32, i32* @MLD2_BLOCK_OLD_SOURCES, align 4
  %307 = icmp eq i32 %305, %306
  br i1 %307, label %308, label %310

308:                                              ; preds = %304, %300
  %309 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %309, %struct.sk_buff** %7, align 8
  br label %359

310:                                              ; preds = %304
  %311 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %9, align 8
  %312 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %311, i32 0, i32 2
  %313 = load i64, i64* %312, align 8
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %321, label %315

315:                                              ; preds = %310
  %316 = load i32, i32* %25, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %321, label %318

318:                                              ; preds = %315
  %319 = load i32, i32* %13, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %338

321:                                              ; preds = %318, %315, %310
  %322 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %323 = icmp ne %struct.sk_buff* %322, null
  br i1 %323, label %324, label %332

324:                                              ; preds = %321
  %325 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %326 = call i32 @AVAILABLE(%struct.sk_buff* %325)
  %327 = sext i32 %326 to i64
  %328 = icmp ult i64 %327, 8
  br i1 %328, label %329, label %332

329:                                              ; preds = %324
  %330 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %331 = call i32 @mld_sendpack(%struct.sk_buff* %330)
  store %struct.sk_buff* null, %struct.sk_buff** %8, align 8
  br label %332

332:                                              ; preds = %329, %324, %321
  %333 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %334 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %9, align 8
  %335 = load i32, i32* %10, align 4
  %336 = load i32, i32* %27, align 4
  %337 = call %struct.sk_buff* @add_grhead(%struct.sk_buff* %333, %struct.ifmcaddr6* %334, i32 %335, %struct.mld2_grec** %17, i32 %336)
  store %struct.sk_buff* %337, %struct.sk_buff** %8, align 8
  br label %338

338:                                              ; preds = %332, %318
  br label %339

339:                                              ; preds = %338, %297
  %340 = load %struct.mld2_grec*, %struct.mld2_grec** %17, align 8
  %341 = icmp ne %struct.mld2_grec* %340, null
  br i1 %341, label %342, label %347

342:                                              ; preds = %339
  %343 = load i32, i32* %22, align 4
  %344 = call i8* @htons(i32 %343)
  %345 = load %struct.mld2_grec*, %struct.mld2_grec** %17, align 8
  %346 = getelementptr inbounds %struct.mld2_grec, %struct.mld2_grec* %345, i32 0, i32 0
  store i8* %344, i8** %346, align 8
  br label %347

347:                                              ; preds = %342, %339
  %348 = load i32, i32* %25, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %357

350:                                              ; preds = %347
  %351 = load i32, i32* @MAF_GSQUERY, align 4
  %352 = xor i32 %351, -1
  %353 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %9, align 8
  %354 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = and i32 %355, %352
  store i32 %356, i32* %354, align 8
  br label %357

357:                                              ; preds = %350, %347
  %358 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %358, %struct.sk_buff** %7, align 8
  br label %359

359:                                              ; preds = %357, %308, %233, %51, %41
  %360 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  ret %struct.sk_buff* %360
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i64 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @AVAILABLE(%struct.sk_buff*) #1

declare dso_local i32 @grec_size(%struct.ifmcaddr6*, i32, i32, i32) #1

declare dso_local i32 @mld_sendpack(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @mld_newpack(%struct.inet6_dev*, i32) #1

declare dso_local i32 @is_in(%struct.ifmcaddr6*, %struct.ip6_sf_list*, i32, i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local %struct.sk_buff* @add_grhead(%struct.sk_buff*, %struct.ifmcaddr6*, i32, %struct.mld2_grec**, i32) #1

declare dso_local %struct.in6_addr* @skb_put(%struct.sk_buff*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @kfree(%struct.ip6_sf_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
