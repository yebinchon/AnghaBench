; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_rt_fill_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_rt_fill_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.rtable = type { i32, i64, i64, i32, %struct.TYPE_6__, i64, i32, i64, i32 }
%struct.TYPE_6__ = type { i32, i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.flowi4 = type { i64, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.rtmsg = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.rtvia = type { i32*, i64 }
%struct.TYPE_7__ = type { i32 }

@RTAX_MAX = common dso_local global i32 0, align 4
@RTM_NEWROUTE = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@RT_TABLE_COMPAT = common dso_local global i32 0, align 4
@RTA_TABLE = common dso_local global i32 0, align 4
@RT_SCOPE_UNIVERSE = common dso_local global i32 0, align 4
@RTPROT_UNSPEC = common dso_local global i32 0, align 4
@RTM_F_CLONED = common dso_local global i32 0, align 4
@RTCF_NOTIFY = common dso_local global i32 0, align 4
@RTM_F_NOTIFY = common dso_local global i32 0, align 4
@IPSKB_DOREDIRECT = common dso_local global i32 0, align 4
@RTCF_DOREDIRECT = common dso_local global i32 0, align 4
@RTA_DST = common dso_local global i32 0, align 4
@RTA_SRC = common dso_local global i32 0, align 4
@RTA_OIF = common dso_local global i32 0, align 4
@RTA_PREFSRC = common dso_local global i32 0, align 4
@RTA_GATEWAY = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@RTA_VIA = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@RTAX_MTU = common dso_local global i32 0, align 4
@RTAX_LOCK = common dso_local global i32 0, align 4
@RTA_MARK = common dso_local global i32 0, align 4
@INVALID_UID = common dso_local global i32 0, align 4
@RTA_UID = common dso_local global i32 0, align 4
@RTA_IIF = common dso_local global i32 0, align 4
@MC_FORWARDING = common dso_local global i32 0, align 4
@RTA_FLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, i64, i64, %struct.rtable*, i32, %struct.flowi4*, %struct.sk_buff*, i32, i32, i32)* @rt_fill_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt_fill_info(%struct.net* %0, i64 %1, i64 %2, %struct.rtable* %3, i32 %4, %struct.flowi4* %5, %struct.sk_buff* %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.net*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.rtable*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.flowi4*, align 8
  %18 = alloca %struct.sk_buff*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.rtmsg*, align 8
  %23 = alloca %struct.nlmsghdr*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.nlattr*, align 8
  %31 = alloca %struct.rtvia*, align 8
  %32 = alloca i64, align 8
  store %struct.net* %0, %struct.net** %12, align 8
  store i64 %1, i64* %13, align 8
  store i64 %2, i64* %14, align 8
  store %struct.rtable* %3, %struct.rtable** %15, align 8
  store i32 %4, i32* %16, align 4
  store %struct.flowi4* %5, %struct.flowi4** %17, align 8
  store %struct.sk_buff* %6, %struct.sk_buff** %18, align 8
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i64 0, i64* %24, align 8
  %33 = load i32, i32* @RTAX_MAX, align 4
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %26, align 8
  %36 = alloca i32, i64 %34, align 16
  store i64 %34, i64* %27, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %38 = load i32, i32* %19, align 4
  %39 = load i32, i32* %20, align 4
  %40 = load i32, i32* @RTM_NEWROUTE, align 4
  %41 = load i32, i32* %21, align 4
  %42 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %37, i32 %38, i32 %39, i32 %40, i32 40, i32 %41)
  store %struct.nlmsghdr* %42, %struct.nlmsghdr** %23, align 8
  %43 = load %struct.nlmsghdr*, %struct.nlmsghdr** %23, align 8
  %44 = icmp ne %struct.nlmsghdr* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %10
  %46 = load i32, i32* @EMSGSIZE, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %11, align 4
  store i32 1, i32* %28, align 4
  br label %378

48:                                               ; preds = %10
  %49 = load %struct.nlmsghdr*, %struct.nlmsghdr** %23, align 8
  %50 = call %struct.rtmsg* @nlmsg_data(%struct.nlmsghdr* %49)
  store %struct.rtmsg* %50, %struct.rtmsg** %22, align 8
  %51 = load i64, i64* @AF_INET, align 8
  %52 = load %struct.rtmsg*, %struct.rtmsg** %22, align 8
  %53 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %52, i32 0, i32 8
  store i64 %51, i64* %53, align 8
  %54 = load %struct.rtmsg*, %struct.rtmsg** %22, align 8
  %55 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %54, i32 0, i32 0
  store i32 32, i32* %55, align 8
  %56 = load %struct.rtmsg*, %struct.rtmsg** %22, align 8
  %57 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %56, i32 0, i32 1
  store i32 0, i32* %57, align 4
  %58 = load %struct.flowi4*, %struct.flowi4** %17, align 8
  %59 = icmp ne %struct.flowi4* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %48
  %61 = load %struct.flowi4*, %struct.flowi4** %17, align 8
  %62 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  br label %65

64:                                               ; preds = %48
  br label %65

65:                                               ; preds = %64, %60
  %66 = phi i32 [ %63, %60 ], [ 0, %64 ]
  %67 = load %struct.rtmsg*, %struct.rtmsg** %22, align 8
  %68 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %67, i32 0, i32 7
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %16, align 4
  %70 = icmp slt i32 %69, 256
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i32, i32* %16, align 4
  br label %75

73:                                               ; preds = %65
  %74 = load i32, i32* @RT_TABLE_COMPAT, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  %77 = load %struct.rtmsg*, %struct.rtmsg** %22, align 8
  %78 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %80 = load i32, i32* @RTA_TABLE, align 4
  %81 = load i32, i32* %16, align 4
  %82 = call i64 @nla_put_u32(%struct.sk_buff* %79, i32 %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  br label %372

85:                                               ; preds = %75
  %86 = load %struct.rtable*, %struct.rtable** %15, align 8
  %87 = getelementptr inbounds %struct.rtable, %struct.rtable* %86, i32 0, i32 8
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.rtmsg*, %struct.rtmsg** %22, align 8
  %90 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %89, i32 0, i32 6
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* @RT_SCOPE_UNIVERSE, align 4
  %92 = load %struct.rtmsg*, %struct.rtmsg** %22, align 8
  %93 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %92, i32 0, i32 5
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @RTPROT_UNSPEC, align 4
  %95 = load %struct.rtmsg*, %struct.rtmsg** %22, align 8
  %96 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 8
  %97 = load %struct.rtable*, %struct.rtable** %15, align 8
  %98 = getelementptr inbounds %struct.rtable, %struct.rtable* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = and i32 %99, -65536
  %101 = load i32, i32* @RTM_F_CLONED, align 4
  %102 = or i32 %100, %101
  %103 = load %struct.rtmsg*, %struct.rtmsg** %22, align 8
  %104 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  %105 = load %struct.rtable*, %struct.rtable** %15, align 8
  %106 = getelementptr inbounds %struct.rtable, %struct.rtable* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @RTCF_NOTIFY, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %85
  %112 = load i32, i32* @RTM_F_NOTIFY, align 4
  %113 = load %struct.rtmsg*, %struct.rtmsg** %22, align 8
  %114 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %111, %85
  %118 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %119 = call %struct.TYPE_7__* @IPCB(%struct.sk_buff* %118)
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @IPSKB_DOREDIRECT, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %117
  %126 = load i32, i32* @RTCF_DOREDIRECT, align 4
  %127 = load %struct.rtmsg*, %struct.rtmsg** %22, align 8
  %128 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 4
  br label %131

131:                                              ; preds = %125, %117
  %132 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %133 = load i32, i32* @RTA_DST, align 4
  %134 = load i64, i64* %13, align 8
  %135 = call i64 @nla_put_in_addr(%struct.sk_buff* %132, i32 %133, i64 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  br label %372

138:                                              ; preds = %131
  %139 = load i64, i64* %14, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %151

141:                                              ; preds = %138
  %142 = load %struct.rtmsg*, %struct.rtmsg** %22, align 8
  %143 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %142, i32 0, i32 1
  store i32 32, i32* %143, align 4
  %144 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %145 = load i32, i32* @RTA_SRC, align 4
  %146 = load i64, i64* %14, align 8
  %147 = call i64 @nla_put_in_addr(%struct.sk_buff* %144, i32 %145, i64 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %141
  br label %372

150:                                              ; preds = %141
  br label %151

151:                                              ; preds = %150, %138
  %152 = load %struct.rtable*, %struct.rtable** %15, align 8
  %153 = getelementptr inbounds %struct.rtable, %struct.rtable* %152, i32 0, i32 4
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 3
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %154, align 8
  %156 = icmp ne %struct.TYPE_5__* %155, null
  br i1 %156, label %157, label %169

157:                                              ; preds = %151
  %158 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %159 = load i32, i32* @RTA_OIF, align 4
  %160 = load %struct.rtable*, %struct.rtable** %15, align 8
  %161 = getelementptr inbounds %struct.rtable, %struct.rtable* %160, i32 0, i32 4
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 3
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i64 @nla_put_u32(%struct.sk_buff* %158, i32 %159, i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %157
  br label %372

169:                                              ; preds = %157, %151
  %170 = load %struct.flowi4*, %struct.flowi4** %17, align 8
  %171 = icmp ne %struct.flowi4* %170, null
  br i1 %171, label %172, label %192

172:                                              ; preds = %169
  %173 = load %struct.rtable*, %struct.rtable** %15, align 8
  %174 = call i64 @rt_is_input_route(%struct.rtable* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %192, label %176

176:                                              ; preds = %172
  %177 = load %struct.flowi4*, %struct.flowi4** %17, align 8
  %178 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* %14, align 8
  %181 = icmp ne i64 %179, %180
  br i1 %181, label %182, label %192

182:                                              ; preds = %176
  %183 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %184 = load i32, i32* @RTA_PREFSRC, align 4
  %185 = load %struct.flowi4*, %struct.flowi4** %17, align 8
  %186 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = call i64 @nla_put_in_addr(%struct.sk_buff* %183, i32 %184, i64 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %182
  br label %372

191:                                              ; preds = %182
  br label %192

192:                                              ; preds = %191, %176, %172, %169
  %193 = load %struct.rtable*, %struct.rtable** %15, align 8
  %194 = getelementptr inbounds %struct.rtable, %struct.rtable* %193, i32 0, i32 7
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %242

197:                                              ; preds = %192
  %198 = load %struct.rtable*, %struct.rtable** %15, align 8
  %199 = getelementptr inbounds %struct.rtable, %struct.rtable* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @AF_INET, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %212

203:                                              ; preds = %197
  %204 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %205 = load i32, i32* @RTA_GATEWAY, align 4
  %206 = load %struct.rtable*, %struct.rtable** %15, align 8
  %207 = getelementptr inbounds %struct.rtable, %struct.rtable* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = call i64 @nla_put_in_addr(%struct.sk_buff* %204, i32 %205, i64 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %203
  br label %372

212:                                              ; preds = %203, %197
  %213 = load %struct.rtable*, %struct.rtable** %15, align 8
  %214 = getelementptr inbounds %struct.rtable, %struct.rtable* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @AF_INET6, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %240

218:                                              ; preds = %212
  store i32 4, i32* %29, align 4
  %219 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %220 = load i32, i32* @RTA_VIA, align 4
  %221 = load i32, i32* %29, align 4
  %222 = add nsw i32 %221, 2
  %223 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %219, i32 %220, i32 %222)
  store %struct.nlattr* %223, %struct.nlattr** %30, align 8
  %224 = load %struct.nlattr*, %struct.nlattr** %30, align 8
  %225 = icmp ne %struct.nlattr* %224, null
  br i1 %225, label %227, label %226

226:                                              ; preds = %218
  br label %372

227:                                              ; preds = %218
  %228 = load %struct.nlattr*, %struct.nlattr** %30, align 8
  %229 = call %struct.rtvia* @nla_data(%struct.nlattr* %228)
  store %struct.rtvia* %229, %struct.rtvia** %31, align 8
  %230 = load i64, i64* @AF_INET6, align 8
  %231 = load %struct.rtvia*, %struct.rtvia** %31, align 8
  %232 = getelementptr inbounds %struct.rtvia, %struct.rtvia* %231, i32 0, i32 1
  store i64 %230, i64* %232, align 8
  %233 = load %struct.rtvia*, %struct.rtvia** %31, align 8
  %234 = getelementptr inbounds %struct.rtvia, %struct.rtvia* %233, i32 0, i32 0
  %235 = load i32*, i32** %234, align 8
  %236 = load %struct.rtable*, %struct.rtable** %15, align 8
  %237 = getelementptr inbounds %struct.rtable, %struct.rtable* %236, i32 0, i32 6
  %238 = load i32, i32* %29, align 4
  %239 = call i32 @memcpy(i32* %235, i32* %237, i32 %238)
  br label %240

240:                                              ; preds = %227, %212
  br label %241

241:                                              ; preds = %240
  br label %242

242:                                              ; preds = %241, %192
  %243 = load %struct.rtable*, %struct.rtable** %15, align 8
  %244 = getelementptr inbounds %struct.rtable, %struct.rtable* %243, i32 0, i32 4
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  store i64 %246, i64* %24, align 8
  %247 = load i64, i64* %24, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %261

249:                                              ; preds = %242
  %250 = load i64, i64* @jiffies, align 8
  store i64 %250, i64* %32, align 8
  %251 = load i64, i64* %32, align 8
  %252 = load i64, i64* %24, align 8
  %253 = call i64 @time_before(i64 %251, i64 %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %259

255:                                              ; preds = %249
  %256 = load i64, i64* %32, align 8
  %257 = load i64, i64* %24, align 8
  %258 = sub i64 %257, %256
  store i64 %258, i64* %24, align 8
  br label %260

259:                                              ; preds = %249
  store i64 0, i64* %24, align 8
  br label %260

260:                                              ; preds = %259, %255
  br label %261

261:                                              ; preds = %260, %242
  %262 = load %struct.rtable*, %struct.rtable** %15, align 8
  %263 = getelementptr inbounds %struct.rtable, %struct.rtable* %262, i32 0, i32 4
  %264 = call i32* @dst_metrics_ptr(%struct.TYPE_6__* %263)
  %265 = mul nuw i64 4, %34
  %266 = trunc i64 %265 to i32
  %267 = call i32 @memcpy(i32* %36, i32* %264, i32 %266)
  %268 = load %struct.rtable*, %struct.rtable** %15, align 8
  %269 = getelementptr inbounds %struct.rtable, %struct.rtable* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 8
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %283

272:                                              ; preds = %261
  %273 = load i64, i64* %24, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %283

275:                                              ; preds = %272
  %276 = load %struct.rtable*, %struct.rtable** %15, align 8
  %277 = getelementptr inbounds %struct.rtable, %struct.rtable* %276, i32 0, i32 3
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* @RTAX_MTU, align 4
  %280 = sub nsw i32 %279, 1
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %36, i64 %281
  store i32 %278, i32* %282, align 4
  br label %283

283:                                              ; preds = %275, %272, %261
  %284 = load %struct.rtable*, %struct.rtable** %15, align 8
  %285 = getelementptr inbounds %struct.rtable, %struct.rtable* %284, i32 0, i32 5
  %286 = load i64, i64* %285, align 8
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %300

288:                                              ; preds = %283
  %289 = load i64, i64* %24, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %300

291:                                              ; preds = %288
  %292 = load i32, i32* @RTAX_MTU, align 4
  %293 = call i32 @BIT(i32 %292)
  %294 = load i32, i32* @RTAX_LOCK, align 4
  %295 = sub nsw i32 %294, 1
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %36, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = or i32 %298, %293
  store i32 %299, i32* %297, align 4
  br label %300

300:                                              ; preds = %291, %288, %283
  %301 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %302 = call i64 @rtnetlink_put_metrics(%struct.sk_buff* %301, i32* %36)
  %303 = icmp slt i64 %302, 0
  br i1 %303, label %304, label %305

304:                                              ; preds = %300
  br label %372

305:                                              ; preds = %300
  %306 = load %struct.flowi4*, %struct.flowi4** %17, align 8
  %307 = icmp ne %struct.flowi4* %306, null
  br i1 %307, label %308, label %355

308:                                              ; preds = %305
  %309 = load %struct.flowi4*, %struct.flowi4** %17, align 8
  %310 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 8
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %322

313:                                              ; preds = %308
  %314 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %315 = load i32, i32* @RTA_MARK, align 4
  %316 = load %struct.flowi4*, %struct.flowi4** %17, align 8
  %317 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 8
  %319 = call i64 @nla_put_u32(%struct.sk_buff* %314, i32 %315, i32 %318)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %322

321:                                              ; preds = %313
  br label %372

322:                                              ; preds = %313, %308
  %323 = load %struct.flowi4*, %struct.flowi4** %17, align 8
  %324 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %323, i32 0, i32 4
  %325 = load i32, i32* %324, align 4
  %326 = load i32, i32* @INVALID_UID, align 4
  %327 = call i32 @uid_eq(i32 %325, i32 %326)
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %340, label %329

329:                                              ; preds = %322
  %330 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %331 = load i32, i32* @RTA_UID, align 4
  %332 = call i32 (...) @current_user_ns()
  %333 = load %struct.flowi4*, %struct.flowi4** %17, align 8
  %334 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %333, i32 0, i32 4
  %335 = load i32, i32* %334, align 4
  %336 = call i32 @from_kuid_munged(i32 %332, i32 %335)
  %337 = call i64 @nla_put_u32(%struct.sk_buff* %330, i32 %331, i32 %336)
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %340

339:                                              ; preds = %329
  br label %372

340:                                              ; preds = %329, %322
  %341 = load %struct.rtable*, %struct.rtable** %15, align 8
  %342 = call i64 @rt_is_input_route(%struct.rtable* %341)
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %354

344:                                              ; preds = %340
  %345 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %346 = load i32, i32* @RTA_IIF, align 4
  %347 = load %struct.flowi4*, %struct.flowi4** %17, align 8
  %348 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %347, i32 0, i32 2
  %349 = load i32, i32* %348, align 4
  %350 = call i64 @nla_put_u32(%struct.sk_buff* %345, i32 %346, i32 %349)
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %353

352:                                              ; preds = %344
  br label %372

353:                                              ; preds = %344
  br label %354

354:                                              ; preds = %353, %340
  br label %355

355:                                              ; preds = %354, %305
  %356 = load %struct.rtable*, %struct.rtable** %15, align 8
  %357 = getelementptr inbounds %struct.rtable, %struct.rtable* %356, i32 0, i32 4
  %358 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %357, i32 0, i32 2
  %359 = load i32, i32* %358, align 8
  store i32 %359, i32* %25, align 4
  %360 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %361 = load %struct.rtable*, %struct.rtable** %15, align 8
  %362 = getelementptr inbounds %struct.rtable, %struct.rtable* %361, i32 0, i32 4
  %363 = load i64, i64* %24, align 8
  %364 = load i32, i32* %25, align 4
  %365 = call i64 @rtnl_put_cacheinfo(%struct.sk_buff* %360, %struct.TYPE_6__* %362, i32 0, i64 %363, i32 %364)
  %366 = icmp slt i64 %365, 0
  br i1 %366, label %367, label %368

367:                                              ; preds = %355
  br label %372

368:                                              ; preds = %355
  %369 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %370 = load %struct.nlmsghdr*, %struct.nlmsghdr** %23, align 8
  %371 = call i32 @nlmsg_end(%struct.sk_buff* %369, %struct.nlmsghdr* %370)
  store i32 0, i32* %11, align 4
  store i32 1, i32* %28, align 4
  br label %378

372:                                              ; preds = %367, %352, %339, %321, %304, %226, %211, %190, %168, %149, %137, %84
  %373 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %374 = load %struct.nlmsghdr*, %struct.nlmsghdr** %23, align 8
  %375 = call i32 @nlmsg_cancel(%struct.sk_buff* %373, %struct.nlmsghdr* %374)
  %376 = load i32, i32* @EMSGSIZE, align 4
  %377 = sub nsw i32 0, %376
  store i32 %377, i32* %11, align 4
  store i32 1, i32* %28, align 4
  br label %378

378:                                              ; preds = %372, %368, %45
  %379 = load i8*, i8** %26, align 8
  call void @llvm.stackrestore(i8* %379)
  %380 = load i32, i32* %11, align 4
  ret i32 %380
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #2

declare dso_local %struct.rtmsg* @nlmsg_data(%struct.nlmsghdr*) #2

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #2

declare dso_local %struct.TYPE_7__* @IPCB(%struct.sk_buff*) #2

declare dso_local i64 @nla_put_in_addr(%struct.sk_buff*, i32, i64) #2

declare dso_local i64 @rt_is_input_route(%struct.rtable*) #2

declare dso_local %struct.nlattr* @nla_reserve(%struct.sk_buff*, i32, i32) #2

declare dso_local %struct.rtvia* @nla_data(%struct.nlattr*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i64 @time_before(i64, i64) #2

declare dso_local i32* @dst_metrics_ptr(%struct.TYPE_6__*) #2

declare dso_local i32 @BIT(i32) #2

declare dso_local i64 @rtnetlink_put_metrics(%struct.sk_buff*, i32*) #2

declare dso_local i32 @uid_eq(i32, i32) #2

declare dso_local i32 @from_kuid_munged(i32, i32) #2

declare dso_local i32 @current_user_ns(...) #2

declare dso_local i64 @rtnl_put_cacheinfo(%struct.sk_buff*, %struct.TYPE_6__*, i32, i64, i32) #2

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #2

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
