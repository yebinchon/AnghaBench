; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_icmp.c_icmp_route_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_icmp.c_icmp_route_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtable = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.net = type { i32 }
%struct.flowi4 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.iphdr = type { i32 }
%struct.icmp_bxm = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_11__ = type { i32 }

@IPPROTO_ICMP = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@RTN_LOCAL = common dso_local global i64 0, align 8
@XFRM_LOOKUP_ICMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rtable* (%struct.net*, %struct.flowi4*, %struct.sk_buff*, %struct.iphdr*, i32, i32, i32, i32, i32, %struct.icmp_bxm*)* @icmp_route_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rtable* @icmp_route_lookup(%struct.net* %0, %struct.flowi4* %1, %struct.sk_buff* %2, %struct.iphdr* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, %struct.icmp_bxm* %9) #0 {
  %11 = alloca %struct.rtable*, align 8
  %12 = alloca %struct.net*, align 8
  %13 = alloca %struct.flowi4*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca %struct.iphdr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.icmp_bxm*, align 8
  %22 = alloca %struct.rtable*, align 8
  %23 = alloca %struct.rtable*, align 8
  %24 = alloca %struct.flowi4, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.flowi4, align 4
  %27 = alloca i64, align 8
  store %struct.net* %0, %struct.net** %12, align 8
  store %struct.flowi4* %1, %struct.flowi4** %13, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %14, align 8
  store %struct.iphdr* %3, %struct.iphdr** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store %struct.icmp_bxm* %9, %struct.icmp_bxm** %21, align 8
  %28 = load %struct.flowi4*, %struct.flowi4** %13, align 8
  %29 = call i32 @memset(%struct.flowi4* %28, i32 0, i32 36)
  %30 = load %struct.icmp_bxm*, %struct.icmp_bxm** %21, align 8
  %31 = getelementptr inbounds %struct.icmp_bxm, %struct.icmp_bxm* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %10
  %38 = load %struct.icmp_bxm*, %struct.icmp_bxm** %21, align 8
  %39 = getelementptr inbounds %struct.icmp_bxm, %struct.icmp_bxm* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  br label %48

44:                                               ; preds = %10
  %45 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %46 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  br label %48

48:                                               ; preds = %44, %37
  %49 = phi i32 [ %43, %37 ], [ %47, %44 ]
  %50 = load %struct.flowi4*, %struct.flowi4** %13, align 8
  %51 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %16, align 4
  %53 = load %struct.flowi4*, %struct.flowi4** %13, align 8
  %54 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %18, align 4
  %56 = load %struct.flowi4*, %struct.flowi4** %13, align 8
  %57 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %56, i32 0, i32 8
  store i32 %55, i32* %57, align 4
  %58 = load %struct.net*, %struct.net** %12, align 8
  %59 = call i32 @sock_net_uid(%struct.net* %58, i32* null)
  %60 = load %struct.flowi4*, %struct.flowi4** %13, align 8
  %61 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %60, i32 0, i32 7
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %17, align 4
  %63 = call i32 @RT_TOS(i32 %62)
  %64 = load %struct.flowi4*, %struct.flowi4** %13, align 8
  %65 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %64, i32 0, i32 6
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @IPPROTO_ICMP, align 4
  %67 = load %struct.flowi4*, %struct.flowi4** %13, align 8
  %68 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %19, align 4
  %70 = load %struct.flowi4*, %struct.flowi4** %13, align 8
  %71 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %20, align 4
  %73 = load %struct.flowi4*, %struct.flowi4** %13, align 8
  %74 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %76 = call %struct.TYPE_11__* @skb_dst(%struct.sk_buff* %75)
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @l3mdev_master_ifindex(i32 %78)
  %80 = load %struct.flowi4*, %struct.flowi4** %13, align 8
  %81 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 4
  %82 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %83 = load %struct.flowi4*, %struct.flowi4** %13, align 8
  %84 = call i32 @flowi4_to_flowi(%struct.flowi4* %83)
  %85 = call i32 @security_skb_classify_flow(%struct.sk_buff* %82, i32 %84)
  %86 = load %struct.net*, %struct.net** %12, align 8
  %87 = load %struct.flowi4*, %struct.flowi4** %13, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %89 = call %struct.rtable* @ip_route_output_key_hash(%struct.net* %86, %struct.flowi4* %87, %struct.sk_buff* %88)
  store %struct.rtable* %89, %struct.rtable** %22, align 8
  %90 = load %struct.rtable*, %struct.rtable** %22, align 8
  %91 = call i64 @IS_ERR(%struct.rtable* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %48
  %94 = load %struct.rtable*, %struct.rtable** %22, align 8
  store %struct.rtable* %94, %struct.rtable** %11, align 8
  br label %242

95:                                               ; preds = %48
  %96 = load %struct.rtable*, %struct.rtable** %22, align 8
  store %struct.rtable* %96, %struct.rtable** %23, align 8
  %97 = load %struct.net*, %struct.net** %12, align 8
  %98 = load %struct.rtable*, %struct.rtable** %22, align 8
  %99 = getelementptr inbounds %struct.rtable, %struct.rtable* %98, i32 0, i32 0
  %100 = load %struct.flowi4*, %struct.flowi4** %13, align 8
  %101 = call i32 @flowi4_to_flowi(%struct.flowi4* %100)
  %102 = call i64 @xfrm_lookup(%struct.net* %97, %struct.TYPE_10__* %99, i32 %101, i32* null, i32 0)
  %103 = inttoptr i64 %102 to %struct.rtable*
  store %struct.rtable* %103, %struct.rtable** %22, align 8
  %104 = load %struct.rtable*, %struct.rtable** %22, align 8
  %105 = call i64 @IS_ERR(%struct.rtable* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %114, label %107

107:                                              ; preds = %95
  %108 = load %struct.rtable*, %struct.rtable** %22, align 8
  %109 = load %struct.rtable*, %struct.rtable** %23, align 8
  %110 = icmp ne %struct.rtable* %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = load %struct.rtable*, %struct.rtable** %22, align 8
  store %struct.rtable* %112, %struct.rtable** %11, align 8
  br label %242

113:                                              ; preds = %107
  br label %124

114:                                              ; preds = %95
  %115 = load %struct.rtable*, %struct.rtable** %22, align 8
  %116 = call i32 @PTR_ERR(%struct.rtable* %115)
  %117 = load i32, i32* @EPERM, align 4
  %118 = sub nsw i32 0, %117
  %119 = icmp eq i32 %116, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  store %struct.rtable* null, %struct.rtable** %22, align 8
  br label %123

121:                                              ; preds = %114
  %122 = load %struct.rtable*, %struct.rtable** %22, align 8
  store %struct.rtable* %122, %struct.rtable** %11, align 8
  br label %242

123:                                              ; preds = %120
  br label %124

124:                                              ; preds = %123, %113
  %125 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %126 = call i32 @flowi4_to_flowi(%struct.flowi4* %24)
  %127 = load i32, i32* @AF_INET, align 4
  %128 = call i32 @xfrm_decode_session_reverse(%struct.sk_buff* %125, i32 %126, i32 %127)
  store i32 %128, i32* %25, align 4
  %129 = load i32, i32* %25, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %124
  br label %234

132:                                              ; preds = %124
  %133 = load %struct.net*, %struct.net** %12, align 8
  %134 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %135 = call %struct.TYPE_11__* @skb_dst(%struct.sk_buff* %134)
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %24, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = call i64 @inet_addr_type_dev_table(%struct.net* %133, i32 %137, i32 %139)
  %141 = load i64, i64* @RTN_LOCAL, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %153

143:                                              ; preds = %132
  %144 = load %struct.net*, %struct.net** %12, align 8
  %145 = call %struct.rtable* @__ip_route_output_key(%struct.net* %144, %struct.flowi4* %24)
  store %struct.rtable* %145, %struct.rtable** %23, align 8
  %146 = load %struct.rtable*, %struct.rtable** %23, align 8
  %147 = call i64 @IS_ERR(%struct.rtable* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %143
  %150 = load %struct.rtable*, %struct.rtable** %23, align 8
  %151 = call i32 @PTR_ERR(%struct.rtable* %150)
  store i32 %151, i32* %25, align 4
  br label %152

152:                                              ; preds = %149, %143
  br label %192

153:                                              ; preds = %132
  %154 = bitcast %struct.flowi4* %26 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %154, i8 0, i64 36, i1 false)
  %155 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %24, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %26, i32 0, i32 3
  store i32 %156, i32* %157, align 4
  %158 = load %struct.net*, %struct.net** %12, align 8
  %159 = call %struct.rtable* @ip_route_output_key(%struct.net* %158, %struct.flowi4* %26)
  store %struct.rtable* %159, %struct.rtable** %23, align 8
  %160 = load %struct.rtable*, %struct.rtable** %23, align 8
  %161 = call i64 @IS_ERR(%struct.rtable* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %153
  %164 = load %struct.rtable*, %struct.rtable** %23, align 8
  %165 = call i32 @PTR_ERR(%struct.rtable* %164)
  store i32 %165, i32* %25, align 4
  br label %234

166:                                              ; preds = %153
  %167 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %168 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  store i64 %169, i64* %27, align 8
  %170 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %171 = call i32 @skb_dst_set(%struct.sk_buff* %170, i32* null)
  %172 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %173 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %24, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %24, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %17, align 4
  %178 = call i32 @RT_TOS(i32 %177)
  %179 = load %struct.rtable*, %struct.rtable** %23, align 8
  %180 = getelementptr inbounds %struct.rtable, %struct.rtable* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @ip_route_input(%struct.sk_buff* %172, i32 %174, i32 %176, i32 %178, i32 %182)
  store i32 %183, i32* %25, align 4
  %184 = load %struct.rtable*, %struct.rtable** %23, align 8
  %185 = getelementptr inbounds %struct.rtable, %struct.rtable* %184, i32 0, i32 0
  %186 = call i32 @dst_release(%struct.TYPE_10__* %185)
  %187 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %188 = call %struct.rtable* @skb_rtable(%struct.sk_buff* %187)
  store %struct.rtable* %188, %struct.rtable** %23, align 8
  %189 = load i64, i64* %27, align 8
  %190 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %191 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %190, i32 0, i32 0
  store i64 %189, i64* %191, align 8
  br label %192

192:                                              ; preds = %166, %152
  %193 = load i32, i32* %25, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %192
  br label %234

196:                                              ; preds = %192
  %197 = load %struct.net*, %struct.net** %12, align 8
  %198 = load %struct.rtable*, %struct.rtable** %23, align 8
  %199 = getelementptr inbounds %struct.rtable, %struct.rtable* %198, i32 0, i32 0
  %200 = call i32 @flowi4_to_flowi(%struct.flowi4* %24)
  %201 = load i32, i32* @XFRM_LOOKUP_ICMP, align 4
  %202 = call i64 @xfrm_lookup(%struct.net* %197, %struct.TYPE_10__* %199, i32 %200, i32* null, i32 %201)
  %203 = inttoptr i64 %202 to %struct.rtable*
  store %struct.rtable* %203, %struct.rtable** %23, align 8
  %204 = load %struct.rtable*, %struct.rtable** %23, align 8
  %205 = call i64 @IS_ERR(%struct.rtable* %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %214, label %207

207:                                              ; preds = %196
  %208 = load %struct.rtable*, %struct.rtable** %22, align 8
  %209 = getelementptr inbounds %struct.rtable, %struct.rtable* %208, i32 0, i32 0
  %210 = call i32 @dst_release(%struct.TYPE_10__* %209)
  %211 = load %struct.flowi4*, %struct.flowi4** %13, align 8
  %212 = call i32 @memcpy(%struct.flowi4* %211, %struct.flowi4* %24, i32 36)
  %213 = load %struct.rtable*, %struct.rtable** %23, align 8
  store %struct.rtable* %213, %struct.rtable** %22, align 8
  br label %232

214:                                              ; preds = %196
  %215 = load %struct.rtable*, %struct.rtable** %23, align 8
  %216 = call i32 @PTR_ERR(%struct.rtable* %215)
  %217 = load i32, i32* @EPERM, align 4
  %218 = sub nsw i32 0, %217
  %219 = icmp eq i32 %216, %218
  br i1 %219, label %220, label %229

220:                                              ; preds = %214
  %221 = load %struct.rtable*, %struct.rtable** %22, align 8
  %222 = icmp ne %struct.rtable* %221, null
  br i1 %222, label %223, label %227

223:                                              ; preds = %220
  %224 = load %struct.rtable*, %struct.rtable** %22, align 8
  %225 = getelementptr inbounds %struct.rtable, %struct.rtable* %224, i32 0, i32 0
  %226 = call i32 @dst_release(%struct.TYPE_10__* %225)
  br label %227

227:                                              ; preds = %223, %220
  %228 = load %struct.rtable*, %struct.rtable** %23, align 8
  store %struct.rtable* %228, %struct.rtable** %11, align 8
  br label %242

229:                                              ; preds = %214
  %230 = load %struct.rtable*, %struct.rtable** %23, align 8
  %231 = call i32 @PTR_ERR(%struct.rtable* %230)
  store i32 %231, i32* %25, align 4
  br label %234

232:                                              ; preds = %207
  %233 = load %struct.rtable*, %struct.rtable** %22, align 8
  store %struct.rtable* %233, %struct.rtable** %11, align 8
  br label %242

234:                                              ; preds = %229, %195, %163, %131
  %235 = load %struct.rtable*, %struct.rtable** %22, align 8
  %236 = icmp ne %struct.rtable* %235, null
  br i1 %236, label %237, label %239

237:                                              ; preds = %234
  %238 = load %struct.rtable*, %struct.rtable** %22, align 8
  store %struct.rtable* %238, %struct.rtable** %11, align 8
  br label %242

239:                                              ; preds = %234
  %240 = load i32, i32* %25, align 4
  %241 = call %struct.rtable* @ERR_PTR(i32 %240)
  store %struct.rtable* %241, %struct.rtable** %11, align 8
  br label %242

242:                                              ; preds = %239, %237, %232, %227, %121, %111, %93
  %243 = load %struct.rtable*, %struct.rtable** %11, align 8
  ret %struct.rtable* %243
}

declare dso_local i32 @memset(%struct.flowi4*, i32, i32) #1

declare dso_local i32 @sock_net_uid(%struct.net*, i32*) #1

declare dso_local i32 @RT_TOS(i32) #1

declare dso_local i32 @l3mdev_master_ifindex(i32) #1

declare dso_local %struct.TYPE_11__* @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @security_skb_classify_flow(%struct.sk_buff*, i32) #1

declare dso_local i32 @flowi4_to_flowi(%struct.flowi4*) #1

declare dso_local %struct.rtable* @ip_route_output_key_hash(%struct.net*, %struct.flowi4*, %struct.sk_buff*) #1

declare dso_local i64 @IS_ERR(%struct.rtable*) #1

declare dso_local i64 @xfrm_lookup(%struct.net*, %struct.TYPE_10__*, i32, i32*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.rtable*) #1

declare dso_local i32 @xfrm_decode_session_reverse(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @inet_addr_type_dev_table(%struct.net*, i32, i32) #1

declare dso_local %struct.rtable* @__ip_route_output_key(%struct.net*, %struct.flowi4*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.rtable* @ip_route_output_key(%struct.net*, %struct.flowi4*) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, i32*) #1

declare dso_local i32 @ip_route_input(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @dst_release(%struct.TYPE_10__*) #1

declare dso_local %struct.rtable* @skb_rtable(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(%struct.flowi4*, %struct.flowi4*, i32) #1

declare dso_local %struct.rtable* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
