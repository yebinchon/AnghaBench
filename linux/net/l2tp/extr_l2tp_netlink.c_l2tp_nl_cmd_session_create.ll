; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_netlink.c_l2tp_nl_cmd_session_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_netlink.c_l2tp_nl_cmd_session_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.net*, %struct.l2tp_tunnel*, i8*, i8*, %struct.l2tp_session_cfg*)* }
%struct.net = type { i32 }
%struct.l2tp_tunnel = type { i32 }
%struct.l2tp_session_cfg = type { i64, i64, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32*, i32*, i32 }
%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64* }
%struct.l2tp_session = type { i32 }

@L2TP_ATTR_CONN_ID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@L2TP_ATTR_SESSION_ID = common dso_local global i64 0, align 8
@L2TP_ATTR_PEER_SESSION_ID = common dso_local global i64 0, align 8
@L2TP_ATTR_PW_TYPE = common dso_local global i64 0, align 8
@__L2TP_PWTYPE_MAX = common dso_local global i64 0, align 8
@L2TP_PWTYPE_PPP = common dso_local global i64 0, align 8
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@L2TP_ATTR_L2SPEC_TYPE = common dso_local global i64 0, align 8
@L2TP_L2SPECTYPE_DEFAULT = common dso_local global i64 0, align 8
@L2TP_L2SPECTYPE_NONE = common dso_local global i64 0, align 8
@L2TP_ATTR_COOKIE = common dso_local global i64 0, align 8
@L2TP_ATTR_PEER_COOKIE = common dso_local global i64 0, align 8
@L2TP_ATTR_IFNAME = common dso_local global i64 0, align 8
@L2TP_ATTR_DEBUG = common dso_local global i64 0, align 8
@L2TP_ATTR_RECV_SEQ = common dso_local global i64 0, align 8
@L2TP_ATTR_SEND_SEQ = common dso_local global i64 0, align 8
@L2TP_ATTR_LNS_MODE = common dso_local global i64 0, align 8
@L2TP_ATTR_RECV_TIMEOUT = common dso_local global i64 0, align 8
@l2tp_nl_cmd_ops = common dso_local global %struct.TYPE_2__** null, align 8
@l2tp_nl_family = common dso_local global i32 0, align 4
@L2TP_CMD_SESSION_CREATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @l2tp_nl_cmd_session_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2tp_nl_cmd_session_create(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.genl_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.l2tp_tunnel*, align 8
  %10 = alloca %struct.l2tp_session*, align 8
  %11 = alloca %struct.l2tp_session_cfg, align 8
  %12 = alloca %struct.net*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.genl_info* %1, %struct.genl_info** %4, align 8
  store i8* null, i8** %5, align 8
  store i32 0, i32* %8, align 4
  %15 = bitcast %struct.l2tp_session_cfg* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 96, i1 false)
  %16 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %17 = call %struct.net* @genl_info_net(%struct.genl_info* %16)
  store %struct.net* %17, %struct.net** %12, align 8
  %18 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %19 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* @L2TP_ATTR_CONN_ID, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %8, align 4
  br label %386

28:                                               ; preds = %2
  %29 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %30 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* @L2TP_ATTR_CONN_ID, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = call i8* @nla_get_u32(i64 %34)
  store i8* %35, i8** %5, align 8
  %36 = load %struct.net*, %struct.net** %12, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = call %struct.l2tp_tunnel* @l2tp_tunnel_get(%struct.net* %36, i8* %37)
  store %struct.l2tp_tunnel* %38, %struct.l2tp_tunnel** %9, align 8
  %39 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %9, align 8
  %40 = icmp ne %struct.l2tp_tunnel* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %28
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %8, align 4
  br label %386

44:                                               ; preds = %28
  %45 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %46 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load i64, i64* @L2TP_ATTR_SESSION_ID, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %44
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %8, align 4
  br label %383

55:                                               ; preds = %44
  %56 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %57 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* @L2TP_ATTR_SESSION_ID, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = call i8* @nla_get_u32(i64 %61)
  store i8* %62, i8** %6, align 8
  %63 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %64 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = load i64, i64* @L2TP_ATTR_PEER_SESSION_ID, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %55
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %8, align 4
  br label %383

73:                                               ; preds = %55
  %74 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %75 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = load i64, i64* @L2TP_ATTR_PEER_SESSION_ID, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = call i8* @nla_get_u32(i64 %79)
  store i8* %80, i8** %7, align 8
  %81 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %82 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = load i64, i64* @L2TP_ATTR_PW_TYPE, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %73
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %8, align 4
  br label %383

91:                                               ; preds = %73
  %92 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %93 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %92, i32 0, i32 0
  %94 = load i64*, i64** %93, align 8
  %95 = load i64, i64* @L2TP_ATTR_PW_TYPE, align 8
  %96 = getelementptr inbounds i64, i64* %94, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @nla_get_u16(i64 %97)
  %99 = getelementptr inbounds %struct.l2tp_session_cfg, %struct.l2tp_session_cfg* %11, i32 0, i32 0
  store i64 %98, i64* %99, align 8
  %100 = getelementptr inbounds %struct.l2tp_session_cfg, %struct.l2tp_session_cfg* %11, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @__L2TP_PWTYPE_MAX, align 8
  %103 = icmp uge i64 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %91
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %8, align 4
  br label %383

107:                                              ; preds = %91
  %108 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %9, align 8
  %109 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 2
  br i1 %111, label %112, label %120

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.l2tp_session_cfg, %struct.l2tp_session_cfg* %11, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @L2TP_PWTYPE_PPP, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = load i32, i32* @EPROTONOSUPPORT, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %8, align 4
  br label %383

120:                                              ; preds = %112, %107
  %121 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %9, align 8
  %122 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp sgt i32 %123, 2
  br i1 %124, label %125, label %249

125:                                              ; preds = %120
  %126 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %127 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %126, i32 0, i32 0
  %128 = load i64*, i64** %127, align 8
  %129 = load i64, i64* @L2TP_ATTR_L2SPEC_TYPE, align 8
  %130 = getelementptr inbounds i64, i64* %128, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %156

133:                                              ; preds = %125
  %134 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %135 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %134, i32 0, i32 0
  %136 = load i64*, i64** %135, align 8
  %137 = load i64, i64* @L2TP_ATTR_L2SPEC_TYPE, align 8
  %138 = getelementptr inbounds i64, i64* %136, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = call i8* @nla_get_u8(i64 %139)
  %141 = ptrtoint i8* %140 to i64
  %142 = getelementptr inbounds %struct.l2tp_session_cfg, %struct.l2tp_session_cfg* %11, i32 0, i32 1
  store i64 %141, i64* %142, align 8
  %143 = getelementptr inbounds %struct.l2tp_session_cfg, %struct.l2tp_session_cfg* %11, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @L2TP_L2SPECTYPE_DEFAULT, align 8
  %146 = icmp ne i64 %144, %145
  br i1 %146, label %147, label %155

147:                                              ; preds = %133
  %148 = getelementptr inbounds %struct.l2tp_session_cfg, %struct.l2tp_session_cfg* %11, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @L2TP_L2SPECTYPE_NONE, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  %153 = load i32, i32* @EINVAL, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %8, align 4
  br label %383

155:                                              ; preds = %147, %133
  br label %159

156:                                              ; preds = %125
  %157 = load i64, i64* @L2TP_L2SPECTYPE_DEFAULT, align 8
  %158 = getelementptr inbounds %struct.l2tp_session_cfg, %struct.l2tp_session_cfg* %11, i32 0, i32 1
  store i64 %157, i64* %158, align 8
  br label %159

159:                                              ; preds = %156, %155
  %160 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %161 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %160, i32 0, i32 0
  %162 = load i64*, i64** %161, align 8
  %163 = load i64, i64* @L2TP_ATTR_COOKIE, align 8
  %164 = getelementptr inbounds i64, i64* %162, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %195

167:                                              ; preds = %159
  %168 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %169 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %168, i32 0, i32 0
  %170 = load i64*, i64** %169, align 8
  %171 = load i64, i64* @L2TP_ATTR_COOKIE, align 8
  %172 = getelementptr inbounds i64, i64* %170, i64 %171
  %173 = load i64, i64* %172, align 8
  %174 = call i32 @nla_len(i64 %173)
  store i32 %174, i32* %13, align 4
  %175 = load i32, i32* %13, align 4
  %176 = icmp sgt i32 %175, 8
  br i1 %176, label %177, label %180

177:                                              ; preds = %167
  %178 = load i32, i32* @EINVAL, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %8, align 4
  br label %383

180:                                              ; preds = %167
  %181 = load i32, i32* %13, align 4
  %182 = getelementptr inbounds %struct.l2tp_session_cfg, %struct.l2tp_session_cfg* %11, i32 0, i32 2
  store i32 %181, i32* %182, align 8
  %183 = getelementptr inbounds %struct.l2tp_session_cfg, %struct.l2tp_session_cfg* %11, i32 0, i32 11
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 0
  %186 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %187 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %186, i32 0, i32 0
  %188 = load i64*, i64** %187, align 8
  %189 = load i64, i64* @L2TP_ATTR_COOKIE, align 8
  %190 = getelementptr inbounds i64, i64* %188, i64 %189
  %191 = load i64, i64* %190, align 8
  %192 = call i32 @nla_data(i64 %191)
  %193 = load i32, i32* %13, align 4
  %194 = call i32 @memcpy(i32* %185, i32 %192, i32 %193)
  br label %195

195:                                              ; preds = %180, %159
  %196 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %197 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %196, i32 0, i32 0
  %198 = load i64*, i64** %197, align 8
  %199 = load i64, i64* @L2TP_ATTR_PEER_COOKIE, align 8
  %200 = getelementptr inbounds i64, i64* %198, i64 %199
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %231

203:                                              ; preds = %195
  %204 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %205 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %204, i32 0, i32 0
  %206 = load i64*, i64** %205, align 8
  %207 = load i64, i64* @L2TP_ATTR_PEER_COOKIE, align 8
  %208 = getelementptr inbounds i64, i64* %206, i64 %207
  %209 = load i64, i64* %208, align 8
  %210 = call i32 @nla_len(i64 %209)
  store i32 %210, i32* %14, align 4
  %211 = load i32, i32* %14, align 4
  %212 = icmp sgt i32 %211, 8
  br i1 %212, label %213, label %216

213:                                              ; preds = %203
  %214 = load i32, i32* @EINVAL, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %8, align 4
  br label %383

216:                                              ; preds = %203
  %217 = load i32, i32* %14, align 4
  %218 = getelementptr inbounds %struct.l2tp_session_cfg, %struct.l2tp_session_cfg* %11, i32 0, i32 3
  store i32 %217, i32* %218, align 4
  %219 = getelementptr inbounds %struct.l2tp_session_cfg, %struct.l2tp_session_cfg* %11, i32 0, i32 10
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 0
  %222 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %223 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %222, i32 0, i32 0
  %224 = load i64*, i64** %223, align 8
  %225 = load i64, i64* @L2TP_ATTR_PEER_COOKIE, align 8
  %226 = getelementptr inbounds i64, i64* %224, i64 %225
  %227 = load i64, i64* %226, align 8
  %228 = call i32 @nla_data(i64 %227)
  %229 = load i32, i32* %14, align 4
  %230 = call i32 @memcpy(i32* %221, i32 %228, i32 %229)
  br label %231

231:                                              ; preds = %216, %195
  %232 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %233 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %232, i32 0, i32 0
  %234 = load i64*, i64** %233, align 8
  %235 = load i64, i64* @L2TP_ATTR_IFNAME, align 8
  %236 = getelementptr inbounds i64, i64* %234, i64 %235
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %248

239:                                              ; preds = %231
  %240 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %241 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %240, i32 0, i32 0
  %242 = load i64*, i64** %241, align 8
  %243 = load i64, i64* @L2TP_ATTR_IFNAME, align 8
  %244 = getelementptr inbounds i64, i64* %242, i64 %243
  %245 = load i64, i64* %244, align 8
  %246 = call i32 @nla_data(i64 %245)
  %247 = getelementptr inbounds %struct.l2tp_session_cfg, %struct.l2tp_session_cfg* %11, i32 0, i32 9
  store i32 %246, i32* %247, align 8
  br label %248

248:                                              ; preds = %239, %231
  br label %249

249:                                              ; preds = %248, %120
  %250 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %251 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %250, i32 0, i32 0
  %252 = load i64*, i64** %251, align 8
  %253 = load i64, i64* @L2TP_ATTR_DEBUG, align 8
  %254 = getelementptr inbounds i64, i64* %252, i64 %253
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %266

257:                                              ; preds = %249
  %258 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %259 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %258, i32 0, i32 0
  %260 = load i64*, i64** %259, align 8
  %261 = load i64, i64* @L2TP_ATTR_DEBUG, align 8
  %262 = getelementptr inbounds i64, i64* %260, i64 %261
  %263 = load i64, i64* %262, align 8
  %264 = call i8* @nla_get_u32(i64 %263)
  %265 = getelementptr inbounds %struct.l2tp_session_cfg, %struct.l2tp_session_cfg* %11, i32 0, i32 8
  store i8* %264, i8** %265, align 8
  br label %266

266:                                              ; preds = %257, %249
  %267 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %268 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %267, i32 0, i32 0
  %269 = load i64*, i64** %268, align 8
  %270 = load i64, i64* @L2TP_ATTR_RECV_SEQ, align 8
  %271 = getelementptr inbounds i64, i64* %269, i64 %270
  %272 = load i64, i64* %271, align 8
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %283

274:                                              ; preds = %266
  %275 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %276 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %275, i32 0, i32 0
  %277 = load i64*, i64** %276, align 8
  %278 = load i64, i64* @L2TP_ATTR_RECV_SEQ, align 8
  %279 = getelementptr inbounds i64, i64* %277, i64 %278
  %280 = load i64, i64* %279, align 8
  %281 = call i8* @nla_get_u8(i64 %280)
  %282 = getelementptr inbounds %struct.l2tp_session_cfg, %struct.l2tp_session_cfg* %11, i32 0, i32 7
  store i8* %281, i8** %282, align 8
  br label %283

283:                                              ; preds = %274, %266
  %284 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %285 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %284, i32 0, i32 0
  %286 = load i64*, i64** %285, align 8
  %287 = load i64, i64* @L2TP_ATTR_SEND_SEQ, align 8
  %288 = getelementptr inbounds i64, i64* %286, i64 %287
  %289 = load i64, i64* %288, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %300

291:                                              ; preds = %283
  %292 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %293 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %292, i32 0, i32 0
  %294 = load i64*, i64** %293, align 8
  %295 = load i64, i64* @L2TP_ATTR_SEND_SEQ, align 8
  %296 = getelementptr inbounds i64, i64* %294, i64 %295
  %297 = load i64, i64* %296, align 8
  %298 = call i8* @nla_get_u8(i64 %297)
  %299 = getelementptr inbounds %struct.l2tp_session_cfg, %struct.l2tp_session_cfg* %11, i32 0, i32 6
  store i8* %298, i8** %299, align 8
  br label %300

300:                                              ; preds = %291, %283
  %301 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %302 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %301, i32 0, i32 0
  %303 = load i64*, i64** %302, align 8
  %304 = load i64, i64* @L2TP_ATTR_LNS_MODE, align 8
  %305 = getelementptr inbounds i64, i64* %303, i64 %304
  %306 = load i64, i64* %305, align 8
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %317

308:                                              ; preds = %300
  %309 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %310 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %309, i32 0, i32 0
  %311 = load i64*, i64** %310, align 8
  %312 = load i64, i64* @L2TP_ATTR_LNS_MODE, align 8
  %313 = getelementptr inbounds i64, i64* %311, i64 %312
  %314 = load i64, i64* %313, align 8
  %315 = call i8* @nla_get_u8(i64 %314)
  %316 = getelementptr inbounds %struct.l2tp_session_cfg, %struct.l2tp_session_cfg* %11, i32 0, i32 5
  store i8* %315, i8** %316, align 8
  br label %317

317:                                              ; preds = %308, %300
  %318 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %319 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %318, i32 0, i32 0
  %320 = load i64*, i64** %319, align 8
  %321 = load i64, i64* @L2TP_ATTR_RECV_TIMEOUT, align 8
  %322 = getelementptr inbounds i64, i64* %320, i64 %321
  %323 = load i64, i64* %322, align 8
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %334

325:                                              ; preds = %317
  %326 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %327 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %326, i32 0, i32 0
  %328 = load i64*, i64** %327, align 8
  %329 = load i64, i64* @L2TP_ATTR_RECV_TIMEOUT, align 8
  %330 = getelementptr inbounds i64, i64* %328, i64 %329
  %331 = load i64, i64* %330, align 8
  %332 = call i32 @nla_get_msecs(i64 %331)
  %333 = getelementptr inbounds %struct.l2tp_session_cfg, %struct.l2tp_session_cfg* %11, i32 0, i32 4
  store i32 %332, i32* %333, align 8
  br label %334

334:                                              ; preds = %325, %317
  %335 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @l2tp_nl_cmd_ops, align 8
  %336 = getelementptr inbounds %struct.l2tp_session_cfg, %struct.l2tp_session_cfg* %11, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %335, i64 %337
  %339 = load %struct.TYPE_2__*, %struct.TYPE_2__** %338, align 8
  %340 = icmp eq %struct.TYPE_2__* %339, null
  br i1 %340, label %350, label %341

341:                                              ; preds = %334
  %342 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @l2tp_nl_cmd_ops, align 8
  %343 = getelementptr inbounds %struct.l2tp_session_cfg, %struct.l2tp_session_cfg* %11, i32 0, i32 0
  %344 = load i64, i64* %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %342, i64 %344
  %346 = load %struct.TYPE_2__*, %struct.TYPE_2__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %346, i32 0, i32 0
  %348 = load i32 (%struct.net*, %struct.l2tp_tunnel*, i8*, i8*, %struct.l2tp_session_cfg*)*, i32 (%struct.net*, %struct.l2tp_tunnel*, i8*, i8*, %struct.l2tp_session_cfg*)** %347, align 8
  %349 = icmp eq i32 (%struct.net*, %struct.l2tp_tunnel*, i8*, i8*, %struct.l2tp_session_cfg*)* %348, null
  br i1 %349, label %350, label %353

350:                                              ; preds = %341, %334
  %351 = load i32, i32* @EPROTONOSUPPORT, align 4
  %352 = sub nsw i32 0, %351
  store i32 %352, i32* %8, align 4
  br label %383

353:                                              ; preds = %341
  %354 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @l2tp_nl_cmd_ops, align 8
  %355 = getelementptr inbounds %struct.l2tp_session_cfg, %struct.l2tp_session_cfg* %11, i32 0, i32 0
  %356 = load i64, i64* %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %354, i64 %356
  %358 = load %struct.TYPE_2__*, %struct.TYPE_2__** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %358, i32 0, i32 0
  %360 = load i32 (%struct.net*, %struct.l2tp_tunnel*, i8*, i8*, %struct.l2tp_session_cfg*)*, i32 (%struct.net*, %struct.l2tp_tunnel*, i8*, i8*, %struct.l2tp_session_cfg*)** %359, align 8
  %361 = load %struct.net*, %struct.net** %12, align 8
  %362 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %9, align 8
  %363 = load i8*, i8** %6, align 8
  %364 = load i8*, i8** %7, align 8
  %365 = call i32 %360(%struct.net* %361, %struct.l2tp_tunnel* %362, i8* %363, i8* %364, %struct.l2tp_session_cfg* %11)
  store i32 %365, i32* %8, align 4
  %366 = load i32, i32* %8, align 4
  %367 = icmp sge i32 %366, 0
  br i1 %367, label %368, label %382

368:                                              ; preds = %353
  %369 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %9, align 8
  %370 = load i8*, i8** %6, align 8
  %371 = call %struct.l2tp_session* @l2tp_tunnel_get_session(%struct.l2tp_tunnel* %369, i8* %370)
  store %struct.l2tp_session* %371, %struct.l2tp_session** %10, align 8
  %372 = load %struct.l2tp_session*, %struct.l2tp_session** %10, align 8
  %373 = icmp ne %struct.l2tp_session* %372, null
  br i1 %373, label %374, label %381

374:                                              ; preds = %368
  %375 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %376 = load %struct.l2tp_session*, %struct.l2tp_session** %10, align 8
  %377 = load i32, i32* @L2TP_CMD_SESSION_CREATE, align 4
  %378 = call i32 @l2tp_session_notify(i32* @l2tp_nl_family, %struct.genl_info* %375, %struct.l2tp_session* %376, i32 %377)
  store i32 %378, i32* %8, align 4
  %379 = load %struct.l2tp_session*, %struct.l2tp_session** %10, align 8
  %380 = call i32 @l2tp_session_dec_refcount(%struct.l2tp_session* %379)
  br label %381

381:                                              ; preds = %374, %368
  br label %382

382:                                              ; preds = %381, %353
  br label %383

383:                                              ; preds = %382, %350, %213, %177, %152, %117, %104, %88, %70, %52
  %384 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %9, align 8
  %385 = call i32 @l2tp_tunnel_dec_refcount(%struct.l2tp_tunnel* %384)
  br label %386

386:                                              ; preds = %383, %41, %25
  %387 = load i32, i32* %8, align 4
  ret i32 %387
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.net* @genl_info_net(%struct.genl_info*) #2

declare dso_local i8* @nla_get_u32(i64) #2

declare dso_local %struct.l2tp_tunnel* @l2tp_tunnel_get(%struct.net*, i8*) #2

declare dso_local i64 @nla_get_u16(i64) #2

declare dso_local i8* @nla_get_u8(i64) #2

declare dso_local i32 @nla_len(i64) #2

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local i32 @nla_data(i64) #2

declare dso_local i32 @nla_get_msecs(i64) #2

declare dso_local %struct.l2tp_session* @l2tp_tunnel_get_session(%struct.l2tp_tunnel*, i8*) #2

declare dso_local i32 @l2tp_session_notify(i32*, %struct.genl_info*, %struct.l2tp_session*, i32) #2

declare dso_local i32 @l2tp_session_dec_refcount(%struct.l2tp_session*) #2

declare dso_local i32 @l2tp_tunnel_dec_refcount(%struct.l2tp_tunnel*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
