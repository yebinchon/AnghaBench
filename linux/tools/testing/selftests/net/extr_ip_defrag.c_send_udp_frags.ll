; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_ip_defrag.c_send_udp_frags.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_ip_defrag.c_send_udp_frags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.ip = type { i32, i32, i32, i32, i8*, i8*, i8*, i64, i32, %struct.TYPE_2__, i8*, i8*, i64, i8*, i8*, i32, i8* }
%struct.TYPE_2__ = type { i8* }
%struct.ip6_hdr = type { i32, i32, i32, i32, i8*, i8*, i8*, i64, i32, %struct.TYPE_2__, i8*, i8*, i64, i8*, i8*, i32, i8* }
%struct.ip6_frag = type { i8*, i8*, i64, i8* }
%struct.sockaddr_in6 = type { i64 }

@ip_frame = common dso_local global i64 0, align 8
@IP6_HLEN = common dso_local global i64 0, align 8
@IPPROTO_FRAGMENT = common dso_local global i32 0, align 4
@addr6 = common dso_local global i8* null, align 8
@IPPROTO_UDP = common dso_local global i8* null, align 8
@ip_id = common dso_local global i32 0, align 4
@INADDR_LOOPBACK = common dso_local global i32 0, align 4
@addr4 = common dso_local global i32 0, align 4
@cfg_overlap = common dso_local global i64 0, align 8
@UDP_HLEN = common dso_local global i32 0, align 4
@payload_len = common dso_local global i32 0, align 4
@max_frag_len = common dso_local global i32 0, align 4
@IP6_MF = common dso_local global i32 0, align 4
@IP4_HLEN = common dso_local global i64 0, align 8
@IP4_MF = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"sendto overlap: %d\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"sendto overlap: %d vs %d\00", align 1
@frag_counter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.sockaddr*, i32, i32)* @send_udp_frags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_udp_frags(i32 %0, %struct.sockaddr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ip*, align 8
  %10 = alloca %struct.ip6_hdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ip6_frag*, align 8
  %15 = alloca %struct.ip6_frag*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load i64, i64* @ip_frame, align 8
  %17 = inttoptr i64 %16 to %struct.ip*
  store %struct.ip* %17, %struct.ip** %9, align 8
  %18 = load i64, i64* @ip_frame, align 8
  %19 = inttoptr i64 %18 to %struct.ip6_hdr*
  store %struct.ip6_hdr* %19, %struct.ip6_hdr** %10, align 8
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %56

22:                                               ; preds = %4
  %23 = load i64, i64* @ip_frame, align 8
  %24 = load i64, i64* @IP6_HLEN, align 8
  %25 = add nsw i64 %23, %24
  %26 = inttoptr i64 %25 to %struct.ip6_frag*
  store %struct.ip6_frag* %26, %struct.ip6_frag** %14, align 8
  %27 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %28 = bitcast %struct.sockaddr* %27 to %struct.sockaddr_in6*
  %29 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.ip6_hdr*, %struct.ip6_hdr** %10, align 8
  %31 = call i32 @memset(%struct.ip6_hdr* %30, i32 0, i32 120)
  %32 = call i8* @htonl(i32 1610612736)
  %33 = load %struct.ip6_hdr*, %struct.ip6_hdr** %10, align 8
  %34 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %33, i32 0, i32 16
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* @IPPROTO_FRAGMENT, align 4
  %36 = load %struct.ip6_hdr*, %struct.ip6_hdr** %10, align 8
  %37 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %36, i32 0, i32 15
  store i32 %35, i32* %37, align 8
  %38 = load %struct.ip6_hdr*, %struct.ip6_hdr** %10, align 8
  %39 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %38, i32 0, i32 0
  store i32 255, i32* %39, align 8
  %40 = load i8*, i8** @addr6, align 8
  %41 = load %struct.ip6_hdr*, %struct.ip6_hdr** %10, align 8
  %42 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %41, i32 0, i32 14
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** @addr6, align 8
  %44 = load %struct.ip6_hdr*, %struct.ip6_hdr** %10, align 8
  %45 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %44, i32 0, i32 13
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** @IPPROTO_UDP, align 8
  %47 = load %struct.ip6_frag*, %struct.ip6_frag** %14, align 8
  %48 = getelementptr inbounds %struct.ip6_frag, %struct.ip6_frag* %47, i32 0, i32 3
  store i8* %46, i8** %48, align 8
  %49 = load %struct.ip6_frag*, %struct.ip6_frag** %14, align 8
  %50 = getelementptr inbounds %struct.ip6_frag, %struct.ip6_frag* %49, i32 0, i32 2
  store i64 0, i64* %50, align 8
  %51 = load i32, i32* @ip_id, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* @ip_id, align 4
  %53 = call i8* @htonl(i32 %51)
  %54 = load %struct.ip6_frag*, %struct.ip6_frag** %14, align 8
  %55 = getelementptr inbounds %struct.ip6_frag, %struct.ip6_frag* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  br label %86

56:                                               ; preds = %4
  %57 = load %struct.ip*, %struct.ip** %9, align 8
  %58 = bitcast %struct.ip* %57 to %struct.ip6_hdr*
  %59 = call i32 @memset(%struct.ip6_hdr* %58, i32 0, i32 120)
  %60 = load %struct.ip*, %struct.ip** %9, align 8
  %61 = getelementptr inbounds %struct.ip, %struct.ip* %60, i32 0, i32 1
  store i32 5, i32* %61, align 4
  %62 = load %struct.ip*, %struct.ip** %9, align 8
  %63 = getelementptr inbounds %struct.ip, %struct.ip* %62, i32 0, i32 2
  store i32 4, i32* %63, align 8
  %64 = load %struct.ip*, %struct.ip** %9, align 8
  %65 = getelementptr inbounds %struct.ip, %struct.ip* %64, i32 0, i32 12
  store i64 0, i64* %65, align 8
  %66 = load i32, i32* @ip_id, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* @ip_id, align 4
  %68 = call i8* @htons(i32 %66)
  %69 = load %struct.ip*, %struct.ip** %9, align 8
  %70 = getelementptr inbounds %struct.ip, %struct.ip* %69, i32 0, i32 11
  store i8* %68, i8** %70, align 8
  %71 = load %struct.ip*, %struct.ip** %9, align 8
  %72 = getelementptr inbounds %struct.ip, %struct.ip* %71, i32 0, i32 3
  store i32 64, i32* %72, align 4
  %73 = load i8*, i8** @IPPROTO_UDP, align 8
  %74 = load %struct.ip*, %struct.ip** %9, align 8
  %75 = getelementptr inbounds %struct.ip, %struct.ip* %74, i32 0, i32 10
  store i8* %73, i8** %75, align 8
  %76 = load i32, i32* @INADDR_LOOPBACK, align 4
  %77 = call i8* @htonl(i32 %76)
  %78 = load %struct.ip*, %struct.ip** %9, align 8
  %79 = getelementptr inbounds %struct.ip, %struct.ip* %78, i32 0, i32 9
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store i8* %77, i8** %80, align 8
  %81 = load i32, i32* @addr4, align 4
  %82 = load %struct.ip*, %struct.ip** %9, align 8
  %83 = getelementptr inbounds %struct.ip, %struct.ip* %82, i32 0, i32 8
  store i32 %81, i32* %83, align 8
  %84 = load %struct.ip*, %struct.ip** %9, align 8
  %85 = getelementptr inbounds %struct.ip, %struct.ip* %84, i32 0, i32 7
  store i64 0, i64* %85, align 8
  br label %86

86:                                               ; preds = %56, %22
  %87 = load i64, i64* @cfg_overlap, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %111, label %89

89:                                               ; preds = %86
  %90 = call i32 (...) @rand()
  %91 = srem i32 %90, 100
  %92 = icmp slt i32 %91, 15
  br i1 %92, label %93, label %111

93:                                               ; preds = %89
  store i32 0, i32* %12, align 4
  br label %94

94:                                               ; preds = %100, %93
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* @UDP_HLEN, align 4
  %97 = load i32, i32* @payload_len, align 4
  %98 = add nsw i32 %96, %97
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %110

100:                                              ; preds = %94
  %101 = load i32, i32* %5, align 4
  %102 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @send_fragment(i32 %101, %struct.sockaddr* %102, i32 %103, i32 %104, i32 %105)
  %107 = load i32, i32* @max_frag_len, align 4
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* %12, align 4
  br label %94

110:                                              ; preds = %94
  br label %329

111:                                              ; preds = %89, %86
  %112 = load i64, i64* @cfg_overlap, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %177, label %114

114:                                              ; preds = %111
  %115 = call i32 (...) @rand()
  %116 = srem i32 %115, 100
  %117 = icmp slt i32 %116, 20
  br i1 %117, label %118, label %177

118:                                              ; preds = %114
  %119 = load i32, i32* @payload_len, align 4
  %120 = load i32, i32* @max_frag_len, align 4
  %121 = mul nsw i32 9, %120
  %122 = icmp sgt i32 %119, %121
  br i1 %122, label %123, label %177

123:                                              ; preds = %118
  %124 = load i32, i32* @max_frag_len, align 4
  %125 = mul nsw i32 6, %124
  store i32 %125, i32* %12, align 4
  br label %126

126:                                              ; preds = %132, %123
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* @UDP_HLEN, align 4
  %129 = load i32, i32* @payload_len, align 4
  %130 = add nsw i32 %128, %129
  %131 = icmp slt i32 %127, %130
  br i1 %131, label %132, label %142

132:                                              ; preds = %126
  %133 = load i32, i32* %5, align 4
  %134 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* %8, align 4
  %138 = call i32 @send_fragment(i32 %133, %struct.sockaddr* %134, i32 %135, i32 %136, i32 %137)
  %139 = load i32, i32* @max_frag_len, align 4
  %140 = load i32, i32* %12, align 4
  %141 = add nsw i32 %140, %139
  store i32 %141, i32* %12, align 4
  br label %126

142:                                              ; preds = %126
  %143 = load i32, i32* @max_frag_len, align 4
  %144 = mul nsw i32 3, %143
  store i32 %144, i32* %12, align 4
  br label %145

145:                                              ; preds = %150, %142
  %146 = load i32, i32* %12, align 4
  %147 = load i32, i32* @max_frag_len, align 4
  %148 = mul nsw i32 6, %147
  %149 = icmp slt i32 %146, %148
  br i1 %149, label %150, label %160

150:                                              ; preds = %145
  %151 = load i32, i32* %5, align 4
  %152 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* %12, align 4
  %155 = load i32, i32* %8, align 4
  %156 = call i32 @send_fragment(i32 %151, %struct.sockaddr* %152, i32 %153, i32 %154, i32 %155)
  %157 = load i32, i32* @max_frag_len, align 4
  %158 = load i32, i32* %12, align 4
  %159 = add nsw i32 %158, %157
  store i32 %159, i32* %12, align 4
  br label %145

160:                                              ; preds = %145
  store i32 0, i32* %12, align 4
  br label %161

161:                                              ; preds = %166, %160
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* @max_frag_len, align 4
  %164 = mul nsw i32 3, %163
  %165 = icmp slt i32 %162, %164
  br i1 %165, label %166, label %176

166:                                              ; preds = %161
  %167 = load i32, i32* %5, align 4
  %168 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* %12, align 4
  %171 = load i32, i32* %8, align 4
  %172 = call i32 @send_fragment(i32 %167, %struct.sockaddr* %168, i32 %169, i32 %170, i32 %171)
  %173 = load i32, i32* @max_frag_len, align 4
  %174 = load i32, i32* %12, align 4
  %175 = add nsw i32 %174, %173
  store i32 %175, i32* %12, align 4
  br label %161

176:                                              ; preds = %161
  br label %329

177:                                              ; preds = %118, %114, %111
  %178 = load i32, i32* @max_frag_len, align 4
  store i32 %178, i32* %12, align 4
  br label %179

179:                                              ; preds = %202, %177
  %180 = load i32, i32* %12, align 4
  %181 = load i32, i32* @UDP_HLEN, align 4
  %182 = load i32, i32* @payload_len, align 4
  %183 = add nsw i32 %181, %182
  %184 = icmp slt i32 %180, %183
  br i1 %184, label %185, label %207

185:                                              ; preds = %179
  %186 = load i32, i32* %5, align 4
  %187 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %188 = load i32, i32* %7, align 4
  %189 = load i32, i32* %12, align 4
  %190 = load i32, i32* %8, align 4
  %191 = call i32 @send_fragment(i32 %186, %struct.sockaddr* %187, i32 %188, i32 %189, i32 %190)
  %192 = call i32 (...) @rand()
  %193 = srem i32 %192, 100
  %194 = icmp eq i32 %193, 1
  br i1 %194, label %195, label %202

195:                                              ; preds = %185
  %196 = load i32, i32* %5, align 4
  %197 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %198 = load i32, i32* %7, align 4
  %199 = load i32, i32* %12, align 4
  %200 = load i32, i32* %8, align 4
  %201 = call i32 @send_fragment(i32 %196, %struct.sockaddr* %197, i32 %198, i32 %199, i32 %200)
  br label %202

202:                                              ; preds = %195, %185
  %203 = load i32, i32* @max_frag_len, align 4
  %204 = mul nsw i32 2, %203
  %205 = load i32, i32* %12, align 4
  %206 = add nsw i32 %205, %204
  store i32 %206, i32* %12, align 4
  br label %179

207:                                              ; preds = %179
  %208 = load i64, i64* @cfg_overlap, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %300

210:                                              ; preds = %207
  %211 = load i32, i32* @max_frag_len, align 4
  %212 = mul nsw i32 %211, 4
  %213 = load i32, i32* @payload_len, align 4
  %214 = icmp slt i32 %212, %213
  br i1 %214, label %218, label %215

215:                                              ; preds = %210
  %216 = load i32, i32* @max_frag_len, align 4
  %217 = icmp slt i32 %216, 16
  br i1 %217, label %218, label %222

218:                                              ; preds = %215, %210
  store i32 8, i32* %12, align 4
  %219 = load i32, i32* @UDP_HLEN, align 4
  %220 = load i32, i32* @max_frag_len, align 4
  %221 = add nsw i32 %219, %220
  store i32 %221, i32* %13, align 4
  br label %233

222:                                              ; preds = %215
  %223 = call i32 (...) @rand()
  %224 = load i32, i32* @payload_len, align 4
  %225 = sdiv i32 %224, 2
  %226 = srem i32 %223, %225
  store i32 %226, i32* %12, align 4
  %227 = load i32, i32* @max_frag_len, align 4
  %228 = mul nsw i32 2, %227
  %229 = add nsw i32 %228, 1
  %230 = call i32 (...) @rand()
  %231 = srem i32 %230, 256
  %232 = add nsw i32 %229, %231
  store i32 %232, i32* %13, align 4
  br label %233

233:                                              ; preds = %222, %218
  %234 = load i32, i32* %8, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %259

236:                                              ; preds = %233
  %237 = load i64, i64* @ip_frame, align 8
  %238 = load i64, i64* @IP6_HLEN, align 8
  %239 = add nsw i64 %237, %238
  %240 = inttoptr i64 %239 to %struct.ip6_frag*
  store %struct.ip6_frag* %240, %struct.ip6_frag** %15, align 8
  %241 = load i32, i32* %13, align 4
  %242 = and i32 %241, -8
  store i32 %242, i32* %13, align 4
  %243 = load i32, i32* %12, align 4
  %244 = sdiv i32 %243, 8
  %245 = load i32, i32* @IP6_MF, align 4
  %246 = or i32 %244, %245
  %247 = call i8* @htons(i32 %246)
  %248 = load %struct.ip6_frag*, %struct.ip6_frag** %15, align 8
  %249 = getelementptr inbounds %struct.ip6_frag, %struct.ip6_frag* %248, i32 0, i32 0
  store i8* %247, i8** %249, align 8
  %250 = load i32, i32* %13, align 4
  %251 = call i8* @htons(i32 %250)
  %252 = load %struct.ip6_hdr*, %struct.ip6_hdr** %10, align 8
  %253 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %252, i32 0, i32 6
  store i8* %251, i8** %253, align 8
  %254 = load i64, i64* @IP6_HLEN, align 8
  %255 = load i32, i32* %13, align 4
  %256 = sext i32 %255 to i64
  %257 = add nsw i64 %256, %254
  %258 = trunc i64 %257 to i32
  store i32 %258, i32* %13, align 4
  br label %276

259:                                              ; preds = %233
  %260 = load i64, i64* @IP4_HLEN, align 8
  %261 = load i32, i32* %13, align 4
  %262 = sext i32 %261 to i64
  %263 = add nsw i64 %262, %260
  %264 = trunc i64 %263 to i32
  store i32 %264, i32* %13, align 4
  %265 = load i32, i32* %12, align 4
  %266 = sdiv i32 %265, 8
  %267 = load i32, i32* @IP4_MF, align 4
  %268 = or i32 %266, %267
  %269 = call i8* @htons(i32 %268)
  %270 = load %struct.ip*, %struct.ip** %9, align 8
  %271 = getelementptr inbounds %struct.ip, %struct.ip* %270, i32 0, i32 5
  store i8* %269, i8** %271, align 8
  %272 = load i32, i32* %13, align 4
  %273 = call i8* @htons(i32 %272)
  %274 = load %struct.ip*, %struct.ip** %9, align 8
  %275 = getelementptr inbounds %struct.ip, %struct.ip* %274, i32 0, i32 4
  store i8* %273, i8** %275, align 8
  br label %276

276:                                              ; preds = %259, %236
  %277 = load i32, i32* %5, align 4
  %278 = load i64, i64* @ip_frame, align 8
  %279 = load i32, i32* %13, align 4
  %280 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %281 = load i32, i32* %7, align 4
  %282 = call i32 @sendto(i32 %277, i64 %278, i32 %279, i32 0, %struct.sockaddr* %280, i32 %281)
  store i32 %282, i32* %11, align 4
  %283 = load i32, i32* %11, align 4
  %284 = icmp slt i32 %283, 0
  br i1 %284, label %285, label %289

285:                                              ; preds = %276
  %286 = load i32, i32* @errno, align 4
  %287 = load i32, i32* %13, align 4
  %288 = call i32 (i32, i32, i8*, i32, ...) @error(i32 1, i32 %286, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %287)
  br label %289

289:                                              ; preds = %285, %276
  %290 = load i32, i32* %11, align 4
  %291 = load i32, i32* %13, align 4
  %292 = icmp ne i32 %290, %291
  br i1 %292, label %293, label %297

293:                                              ; preds = %289
  %294 = load i32, i32* %11, align 4
  %295 = load i32, i32* %13, align 4
  %296 = call i32 (i32, i32, i8*, i32, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %294, i32 %295)
  br label %297

297:                                              ; preds = %293, %289
  %298 = load i32, i32* @frag_counter, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* @frag_counter, align 4
  br label %300

300:                                              ; preds = %297, %207
  store i32 0, i32* %12, align 4
  br label %301

301:                                              ; preds = %324, %300
  %302 = load i32, i32* %12, align 4
  %303 = load i32, i32* @UDP_HLEN, align 4
  %304 = load i32, i32* @payload_len, align 4
  %305 = add nsw i32 %303, %304
  %306 = icmp slt i32 %302, %305
  br i1 %306, label %307, label %329

307:                                              ; preds = %301
  %308 = load i32, i32* %5, align 4
  %309 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %310 = load i32, i32* %7, align 4
  %311 = load i32, i32* %12, align 4
  %312 = load i32, i32* %8, align 4
  %313 = call i32 @send_fragment(i32 %308, %struct.sockaddr* %309, i32 %310, i32 %311, i32 %312)
  %314 = call i32 (...) @rand()
  %315 = srem i32 %314, 100
  %316 = icmp eq i32 %315, 1
  br i1 %316, label %317, label %324

317:                                              ; preds = %307
  %318 = load i32, i32* %5, align 4
  %319 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %320 = load i32, i32* %7, align 4
  %321 = load i32, i32* %12, align 4
  %322 = load i32, i32* %8, align 4
  %323 = call i32 @send_fragment(i32 %318, %struct.sockaddr* %319, i32 %320, i32 %321, i32 %322)
  br label %324

324:                                              ; preds = %317, %307
  %325 = load i32, i32* @max_frag_len, align 4
  %326 = mul nsw i32 2, %325
  %327 = load i32, i32* %12, align 4
  %328 = add nsw i32 %327, %326
  store i32 %328, i32* %12, align 4
  br label %301

329:                                              ; preds = %110, %176, %301
  ret void
}

declare dso_local i32 @memset(%struct.ip6_hdr*, i32, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @send_fragment(i32, %struct.sockaddr*, i32, i32, i32) #1

declare dso_local i32 @sendto(i32, i64, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @error(i32, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
