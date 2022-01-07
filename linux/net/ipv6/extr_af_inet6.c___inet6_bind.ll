; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_af_inet6.c___inet6_bind.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_af_inet6.c___inet6_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i64, i32, i32, %struct.TYPE_4__*, %struct.TYPE_5__, i64 }
%struct.TYPE_4__ = type { i64 (%struct.sock*, i16)* }
%struct.TYPE_5__ = type { i8** }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in6 = type { i64, %struct.TYPE_5__, i64, i32 }
%struct.inet_sock = type { i64, i64, i64, i32, i64, i8*, i8* }
%struct.ipv6_pinfo = type { %struct.TYPE_5__ }
%struct.net = type { i32 }
%struct.net_device = type { i32 }

@AF_INET6 = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@IPV6_ADDR_MULTICAST = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CAP_NET_BIND_SERVICE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i64 0, align 8
@IPV6_ADDR_MAPPED = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@RTN_LOCAL = common dso_local global i32 0, align 4
@RTN_MULTICAST = common dso_local global i32 0, align 4
@RTN_BROADCAST = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@IPV6_ADDR_ANY = common dso_local global i32 0, align 4
@LOOPBACK4_IPV6 = common dso_local global i8* null, align 8
@EADDRINUSE = common dso_local global i32 0, align 4
@SOCK_BINDADDR_LOCK = common dso_local global i32 0, align 4
@SOCK_BINDPORT_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sockaddr*, i32, i32, i32)* @__inet6_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__inet6_bind(%struct.sock* %0, %struct.sockaddr* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sockaddr_in6*, align 8
  %13 = alloca %struct.inet_sock*, align 8
  %14 = alloca %struct.ipv6_pinfo*, align 8
  %15 = alloca %struct.net*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i16, align 2
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.net_device*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.net_device*, align 8
  store %struct.sock* %0, %struct.sock** %7, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %24 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %25 = bitcast %struct.sockaddr* %24 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %25, %struct.sockaddr_in6** %12, align 8
  %26 = load %struct.sock*, %struct.sock** %7, align 8
  %27 = call %struct.inet_sock* @inet_sk(%struct.sock* %26)
  store %struct.inet_sock* %27, %struct.inet_sock** %13, align 8
  %28 = load %struct.sock*, %struct.sock** %7, align 8
  %29 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %28)
  store %struct.ipv6_pinfo* %29, %struct.ipv6_pinfo** %14, align 8
  %30 = load %struct.sock*, %struct.sock** %7, align 8
  %31 = call %struct.net* @sock_net(%struct.sock* %30)
  store %struct.net* %31, %struct.net** %15, align 8
  store i8* null, i8** %16, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %32 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %12, align 8
  %33 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @AF_INET6, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %5
  %38 = load i32, i32* @EAFNOSUPPORT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %364

40:                                               ; preds = %5
  %41 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %12, align 8
  %42 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %41, i32 0, i32 1
  %43 = call i32 @ipv6_addr_type(%struct.TYPE_5__* %42)
  store i32 %43, i32* %19, align 4
  %44 = load i32, i32* %19, align 4
  %45 = load i32, i32* @IPV6_ADDR_MULTICAST, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %40
  %49 = load %struct.sock*, %struct.sock** %7, align 8
  %50 = getelementptr inbounds %struct.sock, %struct.sock* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SOCK_STREAM, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %364

57:                                               ; preds = %48, %40
  %58 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %12, align 8
  %59 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call zeroext i16 @ntohs(i32 %60)
  store i16 %61, i16* %17, align 2
  %62 = load i16, i16* %17, align 2
  %63 = zext i16 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %57
  %66 = load i16, i16* %17, align 2
  %67 = zext i16 %66 to i32
  %68 = load %struct.net*, %struct.net** %15, align 8
  %69 = call zeroext i16 @inet_prot_sock(%struct.net* %68)
  %70 = zext i16 %69 to i32
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %65
  %73 = load %struct.net*, %struct.net** %15, align 8
  %74 = getelementptr inbounds %struct.net, %struct.net* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @CAP_NET_BIND_SERVICE, align 4
  %77 = call i32 @ns_capable(i32 %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %72
  %80 = load i32, i32* @EACCES, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %6, align 4
  br label %364

82:                                               ; preds = %72, %65, %57
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load %struct.sock*, %struct.sock** %7, align 8
  %87 = call i32 @lock_sock(%struct.sock* %86)
  br label %88

88:                                               ; preds = %85, %82
  %89 = load %struct.sock*, %struct.sock** %7, align 8
  %90 = getelementptr inbounds %struct.sock, %struct.sock* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @TCP_CLOSE, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %99, label %94

94:                                               ; preds = %88
  %95 = load %struct.inet_sock*, %struct.inet_sock** %13, align 8
  %96 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94, %88
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %20, align 4
  br label %354

102:                                              ; preds = %94
  %103 = load i32, i32* %19, align 4
  %104 = load i32, i32* @IPV6_ADDR_MAPPED, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %169

106:                                              ; preds = %102
  store %struct.net_device* null, %struct.net_device** %21, align 8
  %107 = load %struct.sock*, %struct.sock** %7, align 8
  %108 = getelementptr inbounds %struct.sock, %struct.sock* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %20, align 4
  br label %354

114:                                              ; preds = %106
  %115 = call i32 (...) @rcu_read_lock()
  %116 = load %struct.sock*, %struct.sock** %7, align 8
  %117 = getelementptr inbounds %struct.sock, %struct.sock* %116, i32 0, i32 6
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %132

120:                                              ; preds = %114
  %121 = load %struct.net*, %struct.net** %15, align 8
  %122 = load %struct.sock*, %struct.sock** %7, align 8
  %123 = getelementptr inbounds %struct.sock, %struct.sock* %122, i32 0, i32 6
  %124 = load i64, i64* %123, align 8
  %125 = call %struct.net_device* @dev_get_by_index_rcu(%struct.net* %121, i64 %124)
  store %struct.net_device* %125, %struct.net_device** %21, align 8
  %126 = load %struct.net_device*, %struct.net_device** %21, align 8
  %127 = icmp ne %struct.net_device* %126, null
  br i1 %127, label %131, label %128

128:                                              ; preds = %120
  %129 = load i32, i32* @ENODEV, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %20, align 4
  br label %362

131:                                              ; preds = %120
  br label %132

132:                                              ; preds = %131, %114
  %133 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %12, align 8
  %134 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i8**, i8*** %135, align 8
  %137 = getelementptr inbounds i8*, i8** %136, i64 3
  %138 = load i8*, i8** %137, align 8
  store i8* %138, i8** %16, align 8
  %139 = load %struct.net*, %struct.net** %15, align 8
  %140 = load %struct.net_device*, %struct.net_device** %21, align 8
  %141 = load i8*, i8** %16, align 8
  %142 = call i32 @inet_addr_type_dev_table(%struct.net* %139, %struct.net_device* %140, i8* %141)
  store i32 %142, i32* %22, align 4
  %143 = call i32 (...) @rcu_read_unlock()
  %144 = load %struct.net*, %struct.net** %15, align 8
  %145 = load %struct.inet_sock*, %struct.inet_sock** %13, align 8
  %146 = call i32 @inet_can_nonlocal_bind(%struct.net* %144, %struct.inet_sock* %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %168, label %148

148:                                              ; preds = %132
  %149 = load i8*, i8** %16, align 8
  %150 = load i32, i32* @INADDR_ANY, align 4
  %151 = call i8* @htonl(i32 %150)
  %152 = icmp ne i8* %149, %151
  br i1 %152, label %153, label %168

153:                                              ; preds = %148
  %154 = load i32, i32* %22, align 4
  %155 = load i32, i32* @RTN_LOCAL, align 4
  %156 = icmp ne i32 %154, %155
  br i1 %156, label %157, label %168

157:                                              ; preds = %153
  %158 = load i32, i32* %22, align 4
  %159 = load i32, i32* @RTN_MULTICAST, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %161, label %168

161:                                              ; preds = %157
  %162 = load i32, i32* %22, align 4
  %163 = load i32, i32* @RTN_BROADCAST, align 4
  %164 = icmp ne i32 %162, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %161
  %166 = load i32, i32* @EADDRNOTAVAIL, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %20, align 4
  br label %354

168:                                              ; preds = %161, %157, %153, %148, %132
  br label %244

169:                                              ; preds = %102
  %170 = load i32, i32* %19, align 4
  %171 = load i32, i32* @IPV6_ADDR_ANY, align 4
  %172 = icmp ne i32 %170, %171
  br i1 %172, label %173, label %243

173:                                              ; preds = %169
  store %struct.net_device* null, %struct.net_device** %23, align 8
  %174 = call i32 (...) @rcu_read_lock()
  %175 = load i32, i32* %19, align 4
  %176 = call i64 @__ipv6_addr_needs_scope_id(i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %202

178:                                              ; preds = %173
  %179 = load i32, i32* %9, align 4
  %180 = sext i32 %179 to i64
  %181 = icmp uge i64 %180, 32
  br i1 %181, label %182, label %193

182:                                              ; preds = %178
  %183 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %12, align 8
  %184 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %182
  %188 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %12, align 8
  %189 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.sock*, %struct.sock** %7, align 8
  %192 = getelementptr inbounds %struct.sock, %struct.sock* %191, i32 0, i32 6
  store i64 %190, i64* %192, align 8
  br label %193

193:                                              ; preds = %187, %182, %178
  %194 = load %struct.sock*, %struct.sock** %7, align 8
  %195 = getelementptr inbounds %struct.sock, %struct.sock* %194, i32 0, i32 6
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %201, label %198

198:                                              ; preds = %193
  %199 = load i32, i32* @EINVAL, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %20, align 4
  br label %362

201:                                              ; preds = %193
  br label %202

202:                                              ; preds = %201, %173
  %203 = load %struct.sock*, %struct.sock** %7, align 8
  %204 = getelementptr inbounds %struct.sock, %struct.sock* %203, i32 0, i32 6
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %219

207:                                              ; preds = %202
  %208 = load %struct.net*, %struct.net** %15, align 8
  %209 = load %struct.sock*, %struct.sock** %7, align 8
  %210 = getelementptr inbounds %struct.sock, %struct.sock* %209, i32 0, i32 6
  %211 = load i64, i64* %210, align 8
  %212 = call %struct.net_device* @dev_get_by_index_rcu(%struct.net* %208, i64 %211)
  store %struct.net_device* %212, %struct.net_device** %23, align 8
  %213 = load %struct.net_device*, %struct.net_device** %23, align 8
  %214 = icmp ne %struct.net_device* %213, null
  br i1 %214, label %218, label %215

215:                                              ; preds = %207
  %216 = load i32, i32* @ENODEV, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %20, align 4
  br label %362

218:                                              ; preds = %207
  br label %219

219:                                              ; preds = %218, %202
  %220 = load i8*, i8** @LOOPBACK4_IPV6, align 8
  store i8* %220, i8** %16, align 8
  %221 = load i32, i32* %19, align 4
  %222 = load i32, i32* @IPV6_ADDR_MULTICAST, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %241, label %225

225:                                              ; preds = %219
  %226 = load %struct.net*, %struct.net** %15, align 8
  %227 = load %struct.inet_sock*, %struct.inet_sock** %13, align 8
  %228 = call i32 @ipv6_can_nonlocal_bind(%struct.net* %226, %struct.inet_sock* %227)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %240, label %230

230:                                              ; preds = %225
  %231 = load %struct.net*, %struct.net** %15, align 8
  %232 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %12, align 8
  %233 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %232, i32 0, i32 1
  %234 = load %struct.net_device*, %struct.net_device** %23, align 8
  %235 = call i32 @ipv6_chk_addr(%struct.net* %231, %struct.TYPE_5__* %233, %struct.net_device* %234, i32 0)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %240, label %237

237:                                              ; preds = %230
  %238 = load i32, i32* @EADDRNOTAVAIL, align 4
  %239 = sub nsw i32 0, %238
  store i32 %239, i32* %20, align 4
  br label %362

240:                                              ; preds = %230, %225
  br label %241

241:                                              ; preds = %240, %219
  %242 = call i32 (...) @rcu_read_unlock()
  br label %243

243:                                              ; preds = %241, %169
  br label %244

244:                                              ; preds = %243, %168
  %245 = load i8*, i8** %16, align 8
  %246 = load %struct.inet_sock*, %struct.inet_sock** %13, align 8
  %247 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %246, i32 0, i32 6
  store i8* %245, i8** %247, align 8
  %248 = load i8*, i8** %16, align 8
  %249 = load %struct.inet_sock*, %struct.inet_sock** %13, align 8
  %250 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %249, i32 0, i32 5
  store i8* %248, i8** %250, align 8
  %251 = load %struct.sock*, %struct.sock** %7, align 8
  %252 = getelementptr inbounds %struct.sock, %struct.sock* %251, i32 0, i32 5
  %253 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %12, align 8
  %254 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %253, i32 0, i32 1
  %255 = bitcast %struct.TYPE_5__* %252 to i8*
  %256 = bitcast %struct.TYPE_5__* %254 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %255, i8* align 8 %256, i64 8, i1 false)
  %257 = load i32, i32* %19, align 4
  %258 = load i32, i32* @IPV6_ADDR_MULTICAST, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %268, label %261

261:                                              ; preds = %244
  %262 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %14, align 8
  %263 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %262, i32 0, i32 0
  %264 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %12, align 8
  %265 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %264, i32 0, i32 1
  %266 = bitcast %struct.TYPE_5__* %263 to i8*
  %267 = bitcast %struct.TYPE_5__* %265 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %266, i8* align 8 %267, i64 8, i1 false)
  br label %268

268:                                              ; preds = %261, %244
  %269 = load %struct.sock*, %struct.sock** %7, align 8
  %270 = getelementptr inbounds %struct.sock, %struct.sock* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  store i32 %271, i32* %18, align 4
  %272 = load i32, i32* %19, align 4
  %273 = load i32, i32* @IPV6_ADDR_ANY, align 4
  %274 = icmp ne i32 %272, %273
  br i1 %274, label %275, label %282

275:                                              ; preds = %268
  %276 = load i32, i32* %19, align 4
  %277 = load i32, i32* @IPV6_ADDR_MAPPED, align 4
  %278 = icmp ne i32 %276, %277
  br i1 %278, label %279, label %282

279:                                              ; preds = %275
  %280 = load %struct.sock*, %struct.sock** %7, align 8
  %281 = getelementptr inbounds %struct.sock, %struct.sock* %280, i32 0, i32 2
  store i32 1, i32* %281, align 8
  br label %282

282:                                              ; preds = %279, %275, %268
  %283 = load i16, i16* %17, align 2
  %284 = zext i16 %283 to i32
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %294, label %286

286:                                              ; preds = %282
  %287 = load %struct.inet_sock*, %struct.inet_sock** %13, align 8
  %288 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %287, i32 0, i32 4
  %289 = load i64, i64* %288, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %324, label %291

291:                                              ; preds = %286
  %292 = load i32, i32* %10, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %324, label %294

294:                                              ; preds = %291, %282
  %295 = load %struct.sock*, %struct.sock** %7, align 8
  %296 = getelementptr inbounds %struct.sock, %struct.sock* %295, i32 0, i32 4
  %297 = load %struct.TYPE_4__*, %struct.TYPE_4__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %297, i32 0, i32 0
  %299 = load i64 (%struct.sock*, i16)*, i64 (%struct.sock*, i16)** %298, align 8
  %300 = load %struct.sock*, %struct.sock** %7, align 8
  %301 = load i16, i16* %17, align 2
  %302 = call i64 %299(%struct.sock* %300, i16 zeroext %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %312

304:                                              ; preds = %294
  %305 = load i32, i32* %18, align 4
  %306 = load %struct.sock*, %struct.sock** %7, align 8
  %307 = getelementptr inbounds %struct.sock, %struct.sock* %306, i32 0, i32 2
  store i32 %305, i32* %307, align 8
  %308 = load %struct.sock*, %struct.sock** %7, align 8
  %309 = call i32 @inet_reset_saddr(%struct.sock* %308)
  %310 = load i32, i32* @EADDRINUSE, align 4
  %311 = sub nsw i32 0, %310
  store i32 %311, i32* %20, align 4
  br label %354

312:                                              ; preds = %294
  %313 = load %struct.sock*, %struct.sock** %7, align 8
  %314 = call i32 @BPF_CGROUP_RUN_PROG_INET6_POST_BIND(%struct.sock* %313)
  store i32 %314, i32* %20, align 4
  %315 = load i32, i32* %20, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %323

317:                                              ; preds = %312
  %318 = load i32, i32* %18, align 4
  %319 = load %struct.sock*, %struct.sock** %7, align 8
  %320 = getelementptr inbounds %struct.sock, %struct.sock* %319, i32 0, i32 2
  store i32 %318, i32* %320, align 8
  %321 = load %struct.sock*, %struct.sock** %7, align 8
  %322 = call i32 @inet_reset_saddr(%struct.sock* %321)
  br label %354

323:                                              ; preds = %312
  br label %324

324:                                              ; preds = %323, %291, %286
  %325 = load i32, i32* %19, align 4
  %326 = load i32, i32* @IPV6_ADDR_ANY, align 4
  %327 = icmp ne i32 %325, %326
  br i1 %327, label %328, label %334

328:                                              ; preds = %324
  %329 = load i32, i32* @SOCK_BINDADDR_LOCK, align 4
  %330 = load %struct.sock*, %struct.sock** %7, align 8
  %331 = getelementptr inbounds %struct.sock, %struct.sock* %330, i32 0, i32 3
  %332 = load i32, i32* %331, align 4
  %333 = or i32 %332, %329
  store i32 %333, i32* %331, align 4
  br label %334

334:                                              ; preds = %328, %324
  %335 = load i16, i16* %17, align 2
  %336 = icmp ne i16 %335, 0
  br i1 %336, label %337, label %343

337:                                              ; preds = %334
  %338 = load i32, i32* @SOCK_BINDPORT_LOCK, align 4
  %339 = load %struct.sock*, %struct.sock** %7, align 8
  %340 = getelementptr inbounds %struct.sock, %struct.sock* %339, i32 0, i32 3
  %341 = load i32, i32* %340, align 4
  %342 = or i32 %341, %338
  store i32 %342, i32* %340, align 4
  br label %343

343:                                              ; preds = %337, %334
  %344 = load %struct.inet_sock*, %struct.inet_sock** %13, align 8
  %345 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %344, i32 0, i32 2
  %346 = load i64, i64* %345, align 8
  %347 = call i32 @htons(i64 %346)
  %348 = load %struct.inet_sock*, %struct.inet_sock** %13, align 8
  %349 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %348, i32 0, i32 3
  store i32 %347, i32* %349, align 8
  %350 = load %struct.inet_sock*, %struct.inet_sock** %13, align 8
  %351 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %350, i32 0, i32 1
  store i64 0, i64* %351, align 8
  %352 = load %struct.inet_sock*, %struct.inet_sock** %13, align 8
  %353 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %352, i32 0, i32 0
  store i64 0, i64* %353, align 8
  br label %354

354:                                              ; preds = %362, %343, %317, %304, %165, %111, %99
  %355 = load i32, i32* %11, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %360

357:                                              ; preds = %354
  %358 = load %struct.sock*, %struct.sock** %7, align 8
  %359 = call i32 @release_sock(%struct.sock* %358)
  br label %360

360:                                              ; preds = %357, %354
  %361 = load i32, i32* %20, align 4
  store i32 %361, i32* %6, align 4
  br label %364

362:                                              ; preds = %237, %215, %198, %128
  %363 = call i32 (...) @rcu_read_unlock()
  br label %354

364:                                              ; preds = %360, %79, %54, %37
  %365 = load i32, i32* %6, align 4
  ret i32 %365
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @ipv6_addr_type(%struct.TYPE_5__*) #1

declare dso_local zeroext i16 @ntohs(i32) #1

declare dso_local zeroext i16 @inet_prot_sock(%struct.net*) #1

declare dso_local i32 @ns_capable(i32, i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_device* @dev_get_by_index_rcu(%struct.net*, i64) #1

declare dso_local i32 @inet_addr_type_dev_table(%struct.net*, %struct.net_device*, i8*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @inet_can_nonlocal_bind(%struct.net*, %struct.inet_sock*) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i64 @__ipv6_addr_needs_scope_id(i32) #1

declare dso_local i32 @ipv6_can_nonlocal_bind(%struct.net*, %struct.inet_sock*) #1

declare dso_local i32 @ipv6_chk_addr(%struct.net*, %struct.TYPE_5__*, %struct.net_device*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @inet_reset_saddr(%struct.sock*) #1

declare dso_local i32 @BPF_CGROUP_RUN_PROG_INET6_POST_BIND(%struct.sock*) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
