; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_ppp.c_pppol2tp_connect.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_ppp.c_pppol2tp_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32, %struct.l2tp_tunnel* }
%struct.l2tp_tunnel = type { i64, i64, i64, i64, i32, i32* }
%struct.sockaddr = type { i32 }
%struct.pppox_sock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, %struct.sock*, i32 }
%struct.l2tp_session = type { i64, i64, i64, i64, i32, i32* }
%struct.l2tp_connect_info = type { i64, i64, i32, i32, i32, i32 }
%struct.pppol2tp_session = type { i32, i32, i64 }
%struct.l2tp_session_cfg = type { i64, i32 }
%struct.l2tp_tunnel_cfg = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@PPPOX_CONNECTED = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@L2TP_ENCAPTYPE_UDP = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@L2TP_PWTYPE_PPP = common dso_local global i64 0, align 8
@EPROTOTYPE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@PPPOL2TP_L2TP_HDR_SIZE_NOSEQ = common dso_local global i32 0, align 4
@pppol2tp_chan_ops = common dso_local global i32 0, align 4
@L2TP_MSG_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%s: created\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32, i32)* @pppol2tp_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pppol2tp_connect(%struct.socket* %0, %struct.sockaddr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.pppox_sock*, align 8
  %12 = alloca %struct.l2tp_session*, align 8
  %13 = alloca %struct.l2tp_connect_info, align 8
  %14 = alloca %struct.l2tp_tunnel*, align 8
  %15 = alloca %struct.pppol2tp_session*, align 8
  %16 = alloca %struct.l2tp_session_cfg, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.l2tp_tunnel_cfg, align 4
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %23 = load %struct.socket*, %struct.socket** %6, align 8
  %24 = getelementptr inbounds %struct.socket, %struct.socket* %23, i32 0, i32 0
  %25 = load %struct.sock*, %struct.sock** %24, align 8
  store %struct.sock* %25, %struct.sock** %10, align 8
  %26 = load %struct.sock*, %struct.sock** %10, align 8
  %27 = call %struct.pppox_sock* @pppox_sk(%struct.sock* %26)
  store %struct.pppox_sock* %27, %struct.pppox_sock** %11, align 8
  store %struct.l2tp_session* null, %struct.l2tp_session** %12, align 8
  %28 = bitcast %struct.l2tp_session_cfg* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %28, i8 0, i64 16, i1 false)
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %29 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @pppol2tp_sockaddr_get_info(%struct.sockaddr* %29, i32 %30, %struct.l2tp_connect_info* %13)
  store i32 %31, i32* %21, align 4
  %32 = load i32, i32* %21, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %4
  %35 = load i32, i32* %21, align 4
  store i32 %35, i32* %5, align 4
  br label %331

36:                                               ; preds = %4
  %37 = load %struct.sock*, %struct.sock** %10, align 8
  %38 = call i32 @lock_sock(%struct.sock* %37)
  %39 = load i32, i32* @EBUSY, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %21, align 4
  %41 = load %struct.sock*, %struct.sock** %10, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @PPPOX_CONNECTED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  br label %297

48:                                               ; preds = %36
  %49 = load i32, i32* @EALREADY, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %21, align 4
  %51 = load %struct.sock*, %struct.sock** %10, align 8
  %52 = getelementptr inbounds %struct.sock, %struct.sock* %51, i32 0, i32 1
  %53 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %52, align 8
  %54 = icmp ne %struct.l2tp_tunnel* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %297

56:                                               ; preds = %48
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %21, align 4
  %59 = getelementptr inbounds %struct.l2tp_connect_info, %struct.l2tp_connect_info* %13, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %56
  br label %297

63:                                               ; preds = %56
  %64 = load %struct.sock*, %struct.sock** %10, align 8
  %65 = call i32 @sock_net(%struct.sock* %64)
  %66 = getelementptr inbounds %struct.l2tp_connect_info, %struct.l2tp_connect_info* %13, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = call %struct.l2tp_tunnel* @l2tp_tunnel_get(i32 %65, i32 %67)
  store %struct.l2tp_tunnel* %68, %struct.l2tp_tunnel** %14, align 8
  %69 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %14, align 8
  %70 = icmp ne %struct.l2tp_tunnel* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  store i32 1, i32* %18, align 4
  br label %72

72:                                               ; preds = %71, %63
  %73 = getelementptr inbounds %struct.l2tp_connect_info, %struct.l2tp_connect_info* %13, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %122, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.l2tp_connect_info, %struct.l2tp_connect_info* %13, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %122, label %80

80:                                               ; preds = %76
  %81 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %14, align 8
  %82 = icmp eq %struct.l2tp_tunnel* %81, null
  br i1 %82, label %83, label %121

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.l2tp_tunnel_cfg, %struct.l2tp_tunnel_cfg* %22, i32 0, i32 0
  store i32 0, i32* %84, align 4
  %85 = getelementptr inbounds %struct.l2tp_tunnel_cfg, %struct.l2tp_tunnel_cfg* %22, i32 0, i32 1
  %86 = load i32, i32* @L2TP_ENCAPTYPE_UDP, align 4
  store i32 %86, i32* %85, align 4
  %87 = getelementptr inbounds %struct.l2tp_connect_info, %struct.l2tp_connect_info* %13, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = load i32, i32* @EBADF, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %21, align 4
  br label %297

93:                                               ; preds = %83
  %94 = load %struct.sock*, %struct.sock** %10, align 8
  %95 = call i32 @sock_net(%struct.sock* %94)
  %96 = getelementptr inbounds %struct.l2tp_connect_info, %struct.l2tp_connect_info* %13, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.l2tp_connect_info, %struct.l2tp_connect_info* %13, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.l2tp_connect_info, %struct.l2tp_connect_info* %13, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = getelementptr inbounds %struct.l2tp_connect_info, %struct.l2tp_connect_info* %13, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @l2tp_tunnel_create(i32 %95, i64 %97, i32 %99, i32 %101, i64 %103, %struct.l2tp_tunnel_cfg* %22, %struct.l2tp_tunnel** %14)
  store i32 %104, i32* %21, align 4
  %105 = load i32, i32* %21, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %93
  br label %297

108:                                              ; preds = %93
  %109 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %14, align 8
  %110 = call i32 @l2tp_tunnel_inc_refcount(%struct.l2tp_tunnel* %109)
  %111 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %14, align 8
  %112 = load %struct.sock*, %struct.sock** %10, align 8
  %113 = call i32 @sock_net(%struct.sock* %112)
  %114 = call i32 @l2tp_tunnel_register(%struct.l2tp_tunnel* %111, i32 %113, %struct.l2tp_tunnel_cfg* %22)
  store i32 %114, i32* %21, align 4
  %115 = load i32, i32* %21, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %108
  %118 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %14, align 8
  %119 = call i32 @kfree(%struct.l2tp_tunnel* %118)
  br label %297

120:                                              ; preds = %108
  store i32 1, i32* %18, align 4
  store i32 1, i32* %20, align 4
  br label %121

121:                                              ; preds = %120, %80
  br label %135

122:                                              ; preds = %76, %72
  %123 = load i32, i32* @ENOENT, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %21, align 4
  %125 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %14, align 8
  %126 = icmp eq %struct.l2tp_tunnel* %125, null
  br i1 %126, label %127, label %128

127:                                              ; preds = %122
  br label %297

128:                                              ; preds = %122
  %129 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %14, align 8
  %130 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %129, i32 0, i32 5
  %131 = load i32*, i32** %130, align 8
  %132 = icmp eq i32* %131, null
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  br label %297

134:                                              ; preds = %128
  br label %135

135:                                              ; preds = %134, %121
  %136 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %14, align 8
  %137 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct.l2tp_connect_info, %struct.l2tp_connect_info* %13, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %14, align 8
  %144 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %143, i32 0, i32 0
  store i64 %142, i64* %144, align 8
  br label %145

145:                                              ; preds = %140, %135
  %146 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %14, align 8
  %147 = getelementptr inbounds %struct.l2tp_connect_info, %struct.l2tp_connect_info* %13, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = call %struct.l2tp_tunnel* @l2tp_tunnel_get_session(%struct.l2tp_tunnel* %146, i32 %148)
  %150 = bitcast %struct.l2tp_tunnel* %149 to %struct.l2tp_session*
  store %struct.l2tp_session* %150, %struct.l2tp_session** %12, align 8
  %151 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %152 = icmp ne %struct.l2tp_session* %151, null
  br i1 %152, label %153, label %189

153:                                              ; preds = %145
  store i32 1, i32* %17, align 4
  %154 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %155 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @L2TP_PWTYPE_PPP, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %153
  %160 = load i32, i32* @EPROTOTYPE, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %21, align 4
  br label %297

162:                                              ; preds = %153
  %163 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %164 = bitcast %struct.l2tp_session* %163 to %struct.l2tp_tunnel*
  %165 = call %struct.pppol2tp_session* @l2tp_session_priv(%struct.l2tp_tunnel* %164)
  store %struct.pppol2tp_session* %165, %struct.pppol2tp_session** %15, align 8
  %166 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %15, align 8
  %167 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %166, i32 0, i32 0
  %168 = call i32 @mutex_lock(i32* %167)
  %169 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %15, align 8
  %170 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %15, align 8
  %173 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %172, i32 0, i32 0
  %174 = call i32 @lockdep_is_held(i32* %173)
  %175 = call i64 @rcu_dereference_protected(i32 %171, i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %182, label %177

177:                                              ; preds = %162
  %178 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %15, align 8
  %179 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %177, %162
  %183 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %15, align 8
  %184 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %183, i32 0, i32 0
  %185 = call i32 @mutex_unlock(i32* %184)
  %186 = load i32, i32* @EEXIST, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %21, align 4
  br label %297

188:                                              ; preds = %177
  br label %234

189:                                              ; preds = %145
  %190 = load i64, i64* @L2TP_PWTYPE_PPP, align 8
  %191 = getelementptr inbounds %struct.l2tp_session_cfg, %struct.l2tp_session_cfg* %16, i32 0, i32 0
  store i64 %190, i64* %191, align 8
  %192 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %14, align 8
  %193 = getelementptr inbounds %struct.l2tp_connect_info, %struct.l2tp_connect_info* %13, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = getelementptr inbounds %struct.l2tp_connect_info, %struct.l2tp_connect_info* %13, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = call %struct.l2tp_tunnel* @l2tp_session_create(i32 16, %struct.l2tp_tunnel* %192, i32 %194, i32 %196, %struct.l2tp_session_cfg* %16)
  %198 = bitcast %struct.l2tp_tunnel* %197 to %struct.l2tp_session*
  store %struct.l2tp_session* %198, %struct.l2tp_session** %12, align 8
  %199 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %200 = bitcast %struct.l2tp_session* %199 to %struct.l2tp_tunnel*
  %201 = call i64 @IS_ERR(%struct.l2tp_tunnel* %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %189
  %204 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %205 = bitcast %struct.l2tp_session* %204 to %struct.l2tp_tunnel*
  %206 = call i32 @PTR_ERR(%struct.l2tp_tunnel* %205)
  store i32 %206, i32* %21, align 4
  br label %297

207:                                              ; preds = %189
  %208 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %209 = bitcast %struct.l2tp_session* %208 to %struct.l2tp_tunnel*
  %210 = call i32 @pppol2tp_session_init(%struct.l2tp_tunnel* %209)
  %211 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %212 = bitcast %struct.l2tp_session* %211 to %struct.l2tp_tunnel*
  %213 = call %struct.pppol2tp_session* @l2tp_session_priv(%struct.l2tp_tunnel* %212)
  store %struct.pppol2tp_session* %213, %struct.pppol2tp_session** %15, align 8
  %214 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %215 = bitcast %struct.l2tp_session* %214 to %struct.l2tp_tunnel*
  %216 = call i32 @l2tp_session_inc_refcount(%struct.l2tp_tunnel* %215)
  %217 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %15, align 8
  %218 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %217, i32 0, i32 0
  %219 = call i32 @mutex_lock(i32* %218)
  %220 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %221 = bitcast %struct.l2tp_session* %220 to %struct.l2tp_tunnel*
  %222 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %14, align 8
  %223 = call i32 @l2tp_session_register(%struct.l2tp_tunnel* %221, %struct.l2tp_tunnel* %222)
  store i32 %223, i32* %21, align 4
  %224 = load i32, i32* %21, align 4
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %226, label %233

226:                                              ; preds = %207
  %227 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %15, align 8
  %228 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %227, i32 0, i32 0
  %229 = call i32 @mutex_unlock(i32* %228)
  %230 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %231 = bitcast %struct.l2tp_session* %230 to %struct.l2tp_tunnel*
  %232 = call i32 @kfree(%struct.l2tp_tunnel* %231)
  br label %297

233:                                              ; preds = %207
  store i32 1, i32* %17, align 4
  store i32 1, i32* %19, align 4
  br label %234

234:                                              ; preds = %233, %188
  %235 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %236 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %235, i32 0, i32 2
  %237 = load i64, i64* %236, align 8
  %238 = icmp eq i64 %237, 0
  br i1 %238, label %239, label %245

239:                                              ; preds = %234
  %240 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %241 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %240, i32 0, i32 3
  %242 = load i64, i64* %241, align 8
  %243 = icmp eq i64 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %239
  store i32 0, i32* %21, align 4
  br label %274

245:                                              ; preds = %239, %234
  %246 = load i32, i32* @PPPOL2TP_L2TP_HDR_SIZE_NOSEQ, align 4
  %247 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %248 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %248, i32 0, i32 3
  store i32 %246, i32* %249, align 8
  %250 = load %struct.sock*, %struct.sock** %10, align 8
  %251 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %252 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i32 0, i32 2
  store %struct.sock* %250, %struct.sock** %253, align 8
  %254 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %255 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %255, i32 0, i32 1
  store i32* @pppol2tp_chan_ops, i32** %256, align 8
  %257 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %14, align 8
  %258 = call i32 @pppol2tp_tunnel_mtu(%struct.l2tp_tunnel* %257)
  %259 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %260 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %260, i32 0, i32 0
  store i32 %258, i32* %261, align 8
  %262 = load %struct.sock*, %struct.sock** %10, align 8
  %263 = call i32 @sock_net(%struct.sock* %262)
  %264 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %265 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %264, i32 0, i32 0
  %266 = call i32 @ppp_register_net_channel(i32 %263, %struct.TYPE_2__* %265)
  store i32 %266, i32* %21, align 4
  %267 = load i32, i32* %21, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %273

269:                                              ; preds = %245
  %270 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %15, align 8
  %271 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %270, i32 0, i32 0
  %272 = call i32 @mutex_unlock(i32* %271)
  br label %297

273:                                              ; preds = %245
  br label %274

274:                                              ; preds = %273, %244
  %275 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %276 = bitcast %struct.l2tp_session* %275 to %struct.l2tp_tunnel*
  %277 = load %struct.sock*, %struct.sock** %10, align 8
  %278 = getelementptr inbounds %struct.sock, %struct.sock* %277, i32 0, i32 1
  store %struct.l2tp_tunnel* %276, %struct.l2tp_tunnel** %278, align 8
  %279 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %15, align 8
  %280 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.sock*, %struct.sock** %10, align 8
  %283 = call i32 @rcu_assign_pointer(i32 %281, %struct.sock* %282)
  %284 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %15, align 8
  %285 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %284, i32 0, i32 0
  %286 = call i32 @mutex_unlock(i32* %285)
  store i32 0, i32* %17, align 4
  %287 = load i32, i32* @PPPOX_CONNECTED, align 4
  %288 = load %struct.sock*, %struct.sock** %10, align 8
  %289 = getelementptr inbounds %struct.sock, %struct.sock* %288, i32 0, i32 0
  store i32 %287, i32* %289, align 8
  %290 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %291 = bitcast %struct.l2tp_session* %290 to %struct.l2tp_tunnel*
  %292 = load i32, i32* @L2TP_MSG_CONTROL, align 4
  %293 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %294 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %293, i32 0, i32 4
  %295 = load i32, i32* %294, align 8
  %296 = call i32 @l2tp_info(%struct.l2tp_tunnel* %291, i32 %292, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %295)
  br label %297

297:                                              ; preds = %274, %269, %226, %203, %182, %159, %133, %127, %117, %107, %90, %62, %55, %47
  %298 = load i32, i32* %21, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %314

300:                                              ; preds = %297
  %301 = load i32, i32* %19, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %307

303:                                              ; preds = %300
  %304 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %305 = bitcast %struct.l2tp_session* %304 to %struct.l2tp_tunnel*
  %306 = call i32 @l2tp_session_delete(%struct.l2tp_tunnel* %305)
  br label %307

307:                                              ; preds = %303, %300
  %308 = load i32, i32* %20, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %313

310:                                              ; preds = %307
  %311 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %14, align 8
  %312 = call i32 @l2tp_tunnel_delete(%struct.l2tp_tunnel* %311)
  br label %313

313:                                              ; preds = %310, %307
  br label %314

314:                                              ; preds = %313, %297
  %315 = load i32, i32* %17, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %321

317:                                              ; preds = %314
  %318 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %319 = bitcast %struct.l2tp_session* %318 to %struct.l2tp_tunnel*
  %320 = call i32 @l2tp_session_dec_refcount(%struct.l2tp_tunnel* %319)
  br label %321

321:                                              ; preds = %317, %314
  %322 = load i32, i32* %18, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %327

324:                                              ; preds = %321
  %325 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %14, align 8
  %326 = call i32 @l2tp_tunnel_dec_refcount(%struct.l2tp_tunnel* %325)
  br label %327

327:                                              ; preds = %324, %321
  %328 = load %struct.sock*, %struct.sock** %10, align 8
  %329 = call i32 @release_sock(%struct.sock* %328)
  %330 = load i32, i32* %21, align 4
  store i32 %330, i32* %5, align 4
  br label %331

331:                                              ; preds = %327, %34
  %332 = load i32, i32* %5, align 4
  ret i32 %332
}

declare dso_local %struct.pppox_sock* @pppox_sk(%struct.sock*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @pppol2tp_sockaddr_get_info(%struct.sockaddr*, i32, %struct.l2tp_connect_info*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local %struct.l2tp_tunnel* @l2tp_tunnel_get(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @l2tp_tunnel_create(i32, i64, i32, i32, i64, %struct.l2tp_tunnel_cfg*, %struct.l2tp_tunnel**) #1

declare dso_local i32 @l2tp_tunnel_inc_refcount(%struct.l2tp_tunnel*) #1

declare dso_local i32 @l2tp_tunnel_register(%struct.l2tp_tunnel*, i32, %struct.l2tp_tunnel_cfg*) #1

declare dso_local i32 @kfree(%struct.l2tp_tunnel*) #1

declare dso_local %struct.l2tp_tunnel* @l2tp_tunnel_get_session(%struct.l2tp_tunnel*, i32) #1

declare dso_local %struct.pppol2tp_session* @l2tp_session_priv(%struct.l2tp_tunnel*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.l2tp_tunnel* @l2tp_session_create(i32, %struct.l2tp_tunnel*, i32, i32, %struct.l2tp_session_cfg*) #1

declare dso_local i64 @IS_ERR(%struct.l2tp_tunnel*) #1

declare dso_local i32 @PTR_ERR(%struct.l2tp_tunnel*) #1

declare dso_local i32 @pppol2tp_session_init(%struct.l2tp_tunnel*) #1

declare dso_local i32 @l2tp_session_inc_refcount(%struct.l2tp_tunnel*) #1

declare dso_local i32 @l2tp_session_register(%struct.l2tp_tunnel*, %struct.l2tp_tunnel*) #1

declare dso_local i32 @pppol2tp_tunnel_mtu(%struct.l2tp_tunnel*) #1

declare dso_local i32 @ppp_register_net_channel(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.sock*) #1

declare dso_local i32 @l2tp_info(%struct.l2tp_tunnel*, i32, i8*, i32) #1

declare dso_local i32 @l2tp_session_delete(%struct.l2tp_tunnel*) #1

declare dso_local i32 @l2tp_tunnel_delete(%struct.l2tp_tunnel*) #1

declare dso_local i32 @l2tp_session_dec_refcount(%struct.l2tp_tunnel*) #1

declare dso_local i32 @l2tp_tunnel_dec_refcount(%struct.l2tp_tunnel*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
