; ModuleID = '/home/carl/AnghaBench/linux/net/netlink/extr_af_netlink.c_netlink_ack.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlink/extr_af_netlink.c_netlink_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i32* }
%struct.nlmsghdr = type { i32, i32 }
%struct.netlink_ext_ack = type { i32, i32, i64, i64 }
%struct.nlmsgerr = type { i32, i32 }
%struct.netlink_sock = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*)*, i32 }

@NETLINK_F_EXT_ACK = common dso_local global i32 0, align 4
@NETLINK_F_CAP_ACK = common dso_local global i32 0, align 4
@NLM_F_CAPPED = common dso_local global i32 0, align 4
@NLM_F_ACK_TLVS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@NLMSG_ERROR = common dso_local global i32 0, align 4
@NLMSGERR_ATTR_MSG = common dso_local global i32 0, align 4
@NLMSGERR_ATTR_OFFS = common dso_local global i32 0, align 4
@NLMSGERR_ATTR_COOKIE = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netlink_ack(%struct.sk_buff* %0, %struct.nlmsghdr* %1, i32 %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.netlink_ext_ack*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.nlmsghdr*, align 8
  %11 = alloca %struct.nlmsgerr*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.netlink_sock*, align 8
  %15 = alloca %struct.TYPE_5__, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_5__, align 8
  %19 = alloca %struct.TYPE_5__, align 8
  %20 = alloca %struct.TYPE_5__, align 8
  %21 = alloca %struct.TYPE_5__, align 8
  %22 = alloca %struct.TYPE_5__, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %8, align 8
  store i64 8, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = call { i32, %struct.TYPE_4__* } @NETLINK_CB(%struct.sk_buff* %23)
  %25 = bitcast %struct.TYPE_5__* %15 to { i32, %struct.TYPE_4__* }*
  %26 = getelementptr inbounds { i32, %struct.TYPE_4__* }, { i32, %struct.TYPE_4__* }* %25, i32 0, i32 0
  %27 = extractvalue { i32, %struct.TYPE_4__* } %24, 0
  store i32 %27, i32* %26, align 8
  %28 = getelementptr inbounds { i32, %struct.TYPE_4__* }, { i32, %struct.TYPE_4__* }* %25, i32 0, i32 1
  %29 = extractvalue { i32, %struct.TYPE_4__* } %24, 1
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = call %struct.netlink_sock* @nlk_sk(%struct.TYPE_4__* %31)
  store %struct.netlink_sock* %32, %struct.netlink_sock** %14, align 8
  store i32 0, i32* %16, align 4
  %33 = load %struct.netlink_sock*, %struct.netlink_sock** %14, align 8
  %34 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @NETLINK_F_EXT_ACK, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %17, align 4
  %38 = load i32, i32* %17, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %4
  %41 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %42 = icmp ne %struct.netlink_ext_ack* %41, null
  br i1 %42, label %43, label %57

43:                                               ; preds = %40
  %44 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %45 = getelementptr inbounds %struct.netlink_ext_ack, %struct.netlink_ext_ack* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %50 = getelementptr inbounds %struct.netlink_ext_ack, %struct.netlink_ext_ack* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @strlen(i64 %51)
  %53 = add nsw i32 %52, 1
  %54 = call i64 @nla_total_size(i32 %53)
  %55 = load i64, i64* %13, align 8
  %56 = add i64 %55, %54
  store i64 %56, i64* %13, align 8
  br label %57

57:                                               ; preds = %48, %43, %40, %4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %92

60:                                               ; preds = %57
  %61 = load %struct.netlink_sock*, %struct.netlink_sock** %14, align 8
  %62 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @NETLINK_F_CAP_ACK, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %60
  %68 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %69 = call i64 @nlmsg_len(%struct.nlmsghdr* %68)
  %70 = load i64, i64* %12, align 8
  %71 = add i64 %70, %69
  store i64 %71, i64* %12, align 8
  br label %76

72:                                               ; preds = %60
  %73 = load i32, i32* @NLM_F_CAPPED, align 4
  %74 = load i32, i32* %16, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %16, align 4
  br label %76

76:                                               ; preds = %72, %67
  %77 = load i32, i32* %17, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %76
  %80 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %81 = icmp ne %struct.netlink_ext_ack* %80, null
  br i1 %81, label %82, label %91

82:                                               ; preds = %79
  %83 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %84 = getelementptr inbounds %struct.netlink_ext_ack, %struct.netlink_ext_ack* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = call i64 @nla_total_size(i32 4)
  %89 = load i64, i64* %13, align 8
  %90 = add i64 %89, %88
  store i64 %90, i64* %13, align 8
  br label %91

91:                                               ; preds = %87, %82, %79, %76
  br label %114

92:                                               ; preds = %57
  %93 = load i32, i32* @NLM_F_CAPPED, align 4
  %94 = load i32, i32* %16, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %16, align 4
  %96 = load i32, i32* %17, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %113

98:                                               ; preds = %92
  %99 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %100 = icmp ne %struct.netlink_ext_ack* %99, null
  br i1 %100, label %101, label %113

101:                                              ; preds = %98
  %102 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %103 = getelementptr inbounds %struct.netlink_ext_ack, %struct.netlink_ext_ack* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %101
  %107 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %108 = getelementptr inbounds %struct.netlink_ext_ack, %struct.netlink_ext_ack* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @nla_total_size(i32 %109)
  %111 = load i64, i64* %13, align 8
  %112 = add i64 %111, %110
  store i64 %112, i64* %13, align 8
  br label %113

113:                                              ; preds = %106, %101, %98, %92
  br label %114

114:                                              ; preds = %113, %91
  %115 = load i64, i64* %13, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load i32, i32* @NLM_F_ACK_TLVS, align 4
  %119 = load i32, i32* %16, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %16, align 4
  br label %121

121:                                              ; preds = %117, %114
  %122 = load i64, i64* %12, align 8
  %123 = load i64, i64* %13, align 8
  %124 = add i64 %122, %123
  %125 = load i32, i32* @GFP_KERNEL, align 4
  %126 = call %struct.sk_buff* @nlmsg_new(i64 %124, i32 %125)
  store %struct.sk_buff* %126, %struct.sk_buff** %9, align 8
  %127 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %128 = icmp ne %struct.sk_buff* %127, null
  br i1 %128, label %162, label %129

129:                                              ; preds = %121
  %130 = load i32, i32* @ENOBUFS, align 4
  %131 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %132 = call { i32, %struct.TYPE_4__* } @NETLINK_CB(%struct.sk_buff* %131)
  %133 = bitcast %struct.TYPE_5__* %18 to { i32, %struct.TYPE_4__* }*
  %134 = getelementptr inbounds { i32, %struct.TYPE_4__* }, { i32, %struct.TYPE_4__* }* %133, i32 0, i32 0
  %135 = extractvalue { i32, %struct.TYPE_4__* } %132, 0
  store i32 %135, i32* %134, align 8
  %136 = getelementptr inbounds { i32, %struct.TYPE_4__* }, { i32, %struct.TYPE_4__* }* %133, i32 0, i32 1
  %137 = extractvalue { i32, %struct.TYPE_4__* } %132, 1
  store %struct.TYPE_4__* %137, %struct.TYPE_4__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  store i32 %130, i32* %140, align 8
  %141 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %142 = call { i32, %struct.TYPE_4__* } @NETLINK_CB(%struct.sk_buff* %141)
  %143 = bitcast %struct.TYPE_5__* %19 to { i32, %struct.TYPE_4__* }*
  %144 = getelementptr inbounds { i32, %struct.TYPE_4__* }, { i32, %struct.TYPE_4__* }* %143, i32 0, i32 0
  %145 = extractvalue { i32, %struct.TYPE_4__* } %142, 0
  store i32 %145, i32* %144, align 8
  %146 = getelementptr inbounds { i32, %struct.TYPE_4__* }, { i32, %struct.TYPE_4__* }* %143, i32 0, i32 1
  %147 = extractvalue { i32, %struct.TYPE_4__* } %142, 1
  store %struct.TYPE_4__* %147, %struct.TYPE_4__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %150, align 8
  %152 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %153 = call { i32, %struct.TYPE_4__* } @NETLINK_CB(%struct.sk_buff* %152)
  %154 = bitcast %struct.TYPE_5__* %20 to { i32, %struct.TYPE_4__* }*
  %155 = getelementptr inbounds { i32, %struct.TYPE_4__* }, { i32, %struct.TYPE_4__* }* %154, i32 0, i32 0
  %156 = extractvalue { i32, %struct.TYPE_4__* } %153, 0
  store i32 %156, i32* %155, align 8
  %157 = getelementptr inbounds { i32, %struct.TYPE_4__* }, { i32, %struct.TYPE_4__* }* %154, i32 0, i32 1
  %158 = extractvalue { i32, %struct.TYPE_4__* } %153, 1
  store %struct.TYPE_4__* %158, %struct.TYPE_4__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = call i32 %151(%struct.TYPE_4__* %160)
  br label %309

162:                                              ; preds = %121
  %163 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %164 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %165 = call { i32, %struct.TYPE_4__* } @NETLINK_CB(%struct.sk_buff* %164)
  %166 = bitcast %struct.TYPE_5__* %21 to { i32, %struct.TYPE_4__* }*
  %167 = getelementptr inbounds { i32, %struct.TYPE_4__* }, { i32, %struct.TYPE_4__* }* %166, i32 0, i32 0
  %168 = extractvalue { i32, %struct.TYPE_4__* } %165, 0
  store i32 %168, i32* %167, align 8
  %169 = getelementptr inbounds { i32, %struct.TYPE_4__* }, { i32, %struct.TYPE_4__* }* %166, i32 0, i32 1
  %170 = extractvalue { i32, %struct.TYPE_4__* } %165, 1
  store %struct.TYPE_4__* %170, %struct.TYPE_4__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %174 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @NLMSG_ERROR, align 4
  %177 = load i64, i64* %12, align 8
  %178 = load i32, i32* %16, align 4
  %179 = call %struct.nlmsghdr* @__nlmsg_put(%struct.sk_buff* %163, i32 %172, i32 %175, i32 %176, i64 %177, i32 %178)
  store %struct.nlmsghdr* %179, %struct.nlmsghdr** %10, align 8
  %180 = load %struct.nlmsghdr*, %struct.nlmsghdr** %10, align 8
  %181 = call %struct.nlmsgerr* @nlmsg_data(%struct.nlmsghdr* %180)
  store %struct.nlmsgerr* %181, %struct.nlmsgerr** %11, align 8
  %182 = load i32, i32* %7, align 4
  %183 = load %struct.nlmsgerr*, %struct.nlmsgerr** %11, align 8
  %184 = getelementptr inbounds %struct.nlmsgerr, %struct.nlmsgerr* %183, i32 0, i32 0
  store i32 %182, i32* %184, align 4
  %185 = load %struct.nlmsgerr*, %struct.nlmsgerr** %11, align 8
  %186 = getelementptr inbounds %struct.nlmsgerr, %struct.nlmsgerr* %185, i32 0, i32 1
  %187 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %188 = load i64, i64* %12, align 8
  %189 = icmp ugt i64 %188, 8
  br i1 %189, label %190, label %195

190:                                              ; preds = %162
  %191 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %192 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = sext i32 %193 to i64
  br label %196

195:                                              ; preds = %162
  br label %196

196:                                              ; preds = %195, %190
  %197 = phi i64 [ %194, %190 ], [ 8, %195 ]
  %198 = trunc i64 %197 to i32
  %199 = call i32 @memcpy(i32* %186, %struct.nlmsghdr* %187, i32 %198)
  %200 = load i32, i32* %17, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %290

202:                                              ; preds = %196
  %203 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %204 = icmp ne %struct.netlink_ext_ack* %203, null
  br i1 %204, label %205, label %290

205:                                              ; preds = %202
  %206 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %207 = getelementptr inbounds %struct.netlink_ext_ack, %struct.netlink_ext_ack* %206, i32 0, i32 3
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %218

210:                                              ; preds = %205
  %211 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %212 = load i32, i32* @NLMSGERR_ATTR_MSG, align 4
  %213 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %214 = getelementptr inbounds %struct.netlink_ext_ack, %struct.netlink_ext_ack* %213, i32 0, i32 3
  %215 = load i64, i64* %214, align 8
  %216 = call i32 @nla_put_string(%struct.sk_buff* %211, i32 %212, i64 %215)
  %217 = call i32 @WARN_ON(i32 %216)
  br label %218

218:                                              ; preds = %210, %205
  %219 = load i32, i32* %7, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %272

221:                                              ; preds = %218
  %222 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %223 = getelementptr inbounds %struct.netlink_ext_ack, %struct.netlink_ext_ack* %222, i32 0, i32 2
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %271

226:                                              ; preds = %221
  %227 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %228 = getelementptr inbounds %struct.netlink_ext_ack, %struct.netlink_ext_ack* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = inttoptr i64 %229 to i32*
  %231 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %232 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %231, i32 0, i32 2
  %233 = load i32*, i32** %232, align 8
  %234 = icmp ult i32* %230, %233
  br i1 %234, label %249, label %235

235:                                              ; preds = %226
  %236 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %237 = getelementptr inbounds %struct.netlink_ext_ack, %struct.netlink_ext_ack* %236, i32 0, i32 2
  %238 = load i64, i64* %237, align 8
  %239 = inttoptr i64 %238 to i32*
  %240 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %241 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %240, i32 0, i32 2
  %242 = load i32*, i32** %241, align 8
  %243 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %244 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %242, i64 %246
  %248 = icmp uge i32* %239, %247
  br label %249

249:                                              ; preds = %235, %226
  %250 = phi i1 [ true, %226 ], [ %248, %235 ]
  %251 = zext i1 %250 to i32
  %252 = call i32 @WARN_ON(i32 %251)
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %271, label %254

254:                                              ; preds = %249
  %255 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %256 = load i32, i32* @NLMSGERR_ATTR_OFFS, align 4
  %257 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %258 = getelementptr inbounds %struct.netlink_ext_ack, %struct.netlink_ext_ack* %257, i32 0, i32 2
  %259 = load i64, i64* %258, align 8
  %260 = inttoptr i64 %259 to i32*
  %261 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %262 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %261, i32 0, i32 2
  %263 = load i32*, i32** %262, align 8
  %264 = ptrtoint i32* %260 to i64
  %265 = ptrtoint i32* %263 to i64
  %266 = sub i64 %264, %265
  %267 = sdiv exact i64 %266, 4
  %268 = trunc i64 %267 to i32
  %269 = call i32 @nla_put_u32(%struct.sk_buff* %255, i32 %256, i32 %268)
  %270 = call i32 @WARN_ON(i32 %269)
  br label %271

271:                                              ; preds = %254, %249, %221
  br label %289

272:                                              ; preds = %218
  %273 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %274 = getelementptr inbounds %struct.netlink_ext_ack, %struct.netlink_ext_ack* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %288

277:                                              ; preds = %272
  %278 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %279 = load i32, i32* @NLMSGERR_ATTR_COOKIE, align 4
  %280 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %281 = getelementptr inbounds %struct.netlink_ext_ack, %struct.netlink_ext_ack* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %284 = getelementptr inbounds %struct.netlink_ext_ack, %struct.netlink_ext_ack* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @nla_put(%struct.sk_buff* %278, i32 %279, i32 %282, i32 %285)
  %287 = call i32 @WARN_ON(i32 %286)
  br label %288

288:                                              ; preds = %277, %272
  br label %289

289:                                              ; preds = %288, %271
  br label %290

290:                                              ; preds = %289, %202, %196
  %291 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %292 = load %struct.nlmsghdr*, %struct.nlmsghdr** %10, align 8
  %293 = call i32 @nlmsg_end(%struct.sk_buff* %291, %struct.nlmsghdr* %292)
  %294 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %295 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %298 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %299 = call { i32, %struct.TYPE_4__* } @NETLINK_CB(%struct.sk_buff* %298)
  %300 = bitcast %struct.TYPE_5__* %22 to { i32, %struct.TYPE_4__* }*
  %301 = getelementptr inbounds { i32, %struct.TYPE_4__* }, { i32, %struct.TYPE_4__* }* %300, i32 0, i32 0
  %302 = extractvalue { i32, %struct.TYPE_4__* } %299, 0
  store i32 %302, i32* %301, align 8
  %303 = getelementptr inbounds { i32, %struct.TYPE_4__* }, { i32, %struct.TYPE_4__* }* %300, i32 0, i32 1
  %304 = extractvalue { i32, %struct.TYPE_4__* } %299, 1
  store %struct.TYPE_4__* %304, %struct.TYPE_4__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = load i32, i32* @MSG_DONTWAIT, align 4
  %308 = call i32 @netlink_unicast(i32 %296, %struct.sk_buff* %297, i32 %306, i32 %307)
  br label %309

309:                                              ; preds = %290, %129
  ret void
}

declare dso_local %struct.netlink_sock* @nlk_sk(%struct.TYPE_4__*) #1

declare dso_local { i32, %struct.TYPE_4__* } @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i64 @nla_total_size(i32) #1

declare dso_local i32 @strlen(i64) #1

declare dso_local i64 @nlmsg_len(%struct.nlmsghdr*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i64, i32) #1

declare dso_local %struct.nlmsghdr* @__nlmsg_put(%struct.sk_buff*, i32, i32, i32, i64, i32) #1

declare dso_local %struct.nlmsgerr* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @memcpy(i32*, %struct.nlmsghdr*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @nla_put_string(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_put(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @netlink_unicast(i32, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
