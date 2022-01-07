; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_log.c_nfulnl_recv_config.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_log.c_nfulnl_recv_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.nfgenmsg = type { i32, i32 }
%struct.nfulnl_instance = type { i64 }
%struct.nfulnl_msg_config_cmd = type { i32 }
%struct.nfnl_log_net = type { i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.nfulnl_msg_config_mode = type { i32, i32 }

@NFULA_CFG_CMD = common dso_local global i64 0, align 8
@nfulnl_logger = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@NFULA_CFG_FLAGS = common dso_local global i64 0, align 8
@NFULNL_CFG_F_CONNTRACK = common dso_local global i32 0, align 4
@nfnl_ct_hook = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@NFULA_CFG_MODE = common dso_local global i64 0, align 8
@NFULA_CFG_TIMEOUT = common dso_local global i64 0, align 8
@NFULA_CFG_NLBUFSIZ = common dso_local global i64 0, align 8
@NFULA_CFG_QTHRESH = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@NFNL_SUBSYS_ULOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*)* @nfulnl_recv_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfulnl_recv_config(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2, %struct.nlmsghdr* %3, %struct.nlattr** %4, %struct.netlink_ext_ack* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.nlmsghdr*, align 8
  %12 = alloca %struct.nlattr**, align 8
  %13 = alloca %struct.netlink_ext_ack*, align 8
  %14 = alloca %struct.nfgenmsg*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.nfulnl_instance*, align 8
  %17 = alloca %struct.nfulnl_msg_config_cmd*, align 8
  %18 = alloca %struct.nfnl_log_net*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_2__, align 8
  %23 = alloca %struct.TYPE_2__, align 8
  %24 = alloca %struct.TYPE_2__, align 8
  %25 = alloca %struct.nfulnl_msg_config_mode*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.sock* %1, %struct.sock** %9, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %10, align 8
  store %struct.nlmsghdr* %3, %struct.nlmsghdr** %11, align 8
  store %struct.nlattr** %4, %struct.nlattr*** %12, align 8
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %13, align 8
  %29 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %30 = call %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr* %29)
  store %struct.nfgenmsg* %30, %struct.nfgenmsg** %14, align 8
  %31 = load %struct.nfgenmsg*, %struct.nfgenmsg** %14, align 8
  %32 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @ntohs(i32 %33)
  store i8* %34, i8** %15, align 8
  store %struct.nfulnl_msg_config_cmd* null, %struct.nfulnl_msg_config_cmd** %17, align 8
  %35 = load %struct.net*, %struct.net** %8, align 8
  %36 = call %struct.nfnl_log_net* @nfnl_log_pernet(%struct.net* %35)
  store %struct.nfnl_log_net* %36, %struct.nfnl_log_net** %18, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %37 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %38 = load i64, i64* @NFULA_CFG_CMD, align 8
  %39 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %38
  %40 = load %struct.nlattr*, %struct.nlattr** %39, align 8
  %41 = icmp ne %struct.nlattr* %40, null
  br i1 %41, label %42, label %64

42:                                               ; preds = %6
  %43 = load %struct.nfgenmsg*, %struct.nfgenmsg** %14, align 8
  %44 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %21, align 4
  %46 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %47 = load i64, i64* @NFULA_CFG_CMD, align 8
  %48 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %46, i64 %47
  %49 = load %struct.nlattr*, %struct.nlattr** %48, align 8
  %50 = call i8* @nla_data(%struct.nlattr* %49)
  %51 = bitcast i8* %50 to %struct.nfulnl_msg_config_cmd*
  store %struct.nfulnl_msg_config_cmd* %51, %struct.nfulnl_msg_config_cmd** %17, align 8
  %52 = load %struct.nfulnl_msg_config_cmd*, %struct.nfulnl_msg_config_cmd** %17, align 8
  %53 = getelementptr inbounds %struct.nfulnl_msg_config_cmd, %struct.nfulnl_msg_config_cmd* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %63 [
    i32 130, label %55
    i32 129, label %59
  ]

55:                                               ; preds = %42
  %56 = load %struct.net*, %struct.net** %8, align 8
  %57 = load i32, i32* %21, align 4
  %58 = call i32 @nf_log_bind_pf(%struct.net* %56, i32 %57, i32* @nfulnl_logger)
  store i32 %58, i32* %7, align 4
  br label %263

59:                                               ; preds = %42
  %60 = load %struct.net*, %struct.net** %8, align 8
  %61 = load i32, i32* %21, align 4
  %62 = call i32 @nf_log_unbind_pf(%struct.net* %60, i32 %61)
  store i32 0, i32* %7, align 4
  br label %263

63:                                               ; preds = %42
  br label %64

64:                                               ; preds = %63, %6
  %65 = load %struct.nfnl_log_net*, %struct.nfnl_log_net** %18, align 8
  %66 = load i8*, i8** %15, align 8
  %67 = call %struct.nfulnl_instance* @instance_lookup_get(%struct.nfnl_log_net* %65, i8* %66)
  store %struct.nfulnl_instance* %67, %struct.nfulnl_instance** %16, align 8
  %68 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %16, align 8
  %69 = icmp ne %struct.nfulnl_instance* %68, null
  br i1 %69, label %70, label %87

70:                                               ; preds = %64
  %71 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %16, align 8
  %72 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %75 = call { i64, i32 } @NETLINK_CB(%struct.sk_buff* %74)
  %76 = bitcast %struct.TYPE_2__* %22 to { i64, i32 }*
  %77 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %76, i32 0, i32 0
  %78 = extractvalue { i64, i32 } %75, 0
  store i64 %78, i64* %77, align 8
  %79 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %76, i32 0, i32 1
  %80 = extractvalue { i64, i32 } %75, 1
  store i32 %80, i32* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %73, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %70
  %85 = load i32, i32* @EPERM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %19, align 4
  br label %258

87:                                               ; preds = %70, %64
  %88 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %89 = load i64, i64* @NFULA_CFG_FLAGS, align 8
  %90 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %88, i64 %89
  %91 = load %struct.nlattr*, %struct.nlattr** %90, align 8
  %92 = icmp ne %struct.nlattr* %91, null
  br i1 %92, label %93, label %113

93:                                               ; preds = %87
  %94 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %95 = load i64, i64* @NFULA_CFG_FLAGS, align 8
  %96 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %94, i64 %95
  %97 = load %struct.nlattr*, %struct.nlattr** %96, align 8
  %98 = call i32 @nla_get_be16(%struct.nlattr* %97)
  %99 = call i8* @ntohs(i32 %98)
  %100 = ptrtoint i8* %99 to i32
  store i32 %100, i32* %20, align 4
  %101 = load i32, i32* %20, align 4
  %102 = load i32, i32* @NFULNL_CFG_F_CONNTRACK, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %93
  %106 = load i32, i32* @nfnl_ct_hook, align 4
  %107 = call i64 @rcu_access_pointer(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %105
  %110 = load i32, i32* @EOPNOTSUPP, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %19, align 4
  br label %258

112:                                              ; preds = %105, %93
  br label %113

113:                                              ; preds = %112, %87
  %114 = load %struct.nfulnl_msg_config_cmd*, %struct.nfulnl_msg_config_cmd** %17, align 8
  %115 = icmp ne %struct.nfulnl_msg_config_cmd* %114, null
  br i1 %115, label %116, label %170

116:                                              ; preds = %113
  %117 = load %struct.nfulnl_msg_config_cmd*, %struct.nfulnl_msg_config_cmd** %17, align 8
  %118 = getelementptr inbounds %struct.nfulnl_msg_config_cmd, %struct.nfulnl_msg_config_cmd* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  switch i32 %119, label %166 [
    i32 131, label %120
    i32 128, label %156
  ]

120:                                              ; preds = %116
  %121 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %16, align 8
  %122 = icmp ne %struct.nfulnl_instance* %121, null
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i32, i32* @EBUSY, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %19, align 4
  br label %258

126:                                              ; preds = %120
  %127 = load %struct.net*, %struct.net** %8, align 8
  %128 = load i8*, i8** %15, align 8
  %129 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %130 = call { i64, i32 } @NETLINK_CB(%struct.sk_buff* %129)
  %131 = bitcast %struct.TYPE_2__* %23 to { i64, i32 }*
  %132 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %131, i32 0, i32 0
  %133 = extractvalue { i64, i32 } %130, 0
  store i64 %133, i64* %132, align 8
  %134 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %131, i32 0, i32 1
  %135 = extractvalue { i64, i32 } %130, 1
  store i32 %135, i32* %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %139 = call { i64, i32 } @NETLINK_CB(%struct.sk_buff* %138)
  %140 = bitcast %struct.TYPE_2__* %24 to { i64, i32 }*
  %141 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %140, i32 0, i32 0
  %142 = extractvalue { i64, i32 } %139, 0
  store i64 %142, i64* %141, align 8
  %143 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %140, i32 0, i32 1
  %144 = extractvalue { i64, i32 } %139, 1
  store i32 %144, i32* %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @sk_user_ns(i32 %146)
  %148 = call %struct.nfulnl_instance* @instance_create(%struct.net* %127, i8* %128, i64 %137, i32 %147)
  store %struct.nfulnl_instance* %148, %struct.nfulnl_instance** %16, align 8
  %149 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %16, align 8
  %150 = call i32 @IS_ERR(%struct.nfulnl_instance* %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %126
  %153 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %16, align 8
  %154 = call i32 @PTR_ERR(%struct.nfulnl_instance* %153)
  store i32 %154, i32* %19, align 4
  br label %261

155:                                              ; preds = %126
  br label %169

156:                                              ; preds = %116
  %157 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %16, align 8
  %158 = icmp ne %struct.nfulnl_instance* %157, null
  br i1 %158, label %162, label %159

159:                                              ; preds = %156
  %160 = load i32, i32* @ENODEV, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %19, align 4
  br label %261

162:                                              ; preds = %156
  %163 = load %struct.nfnl_log_net*, %struct.nfnl_log_net** %18, align 8
  %164 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %16, align 8
  %165 = call i32 @instance_destroy(%struct.nfnl_log_net* %163, %struct.nfulnl_instance* %164)
  br label %258

166:                                              ; preds = %116
  %167 = load i32, i32* @ENOTSUPP, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %19, align 4
  br label %258

169:                                              ; preds = %155
  br label %177

170:                                              ; preds = %113
  %171 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %16, align 8
  %172 = icmp ne %struct.nfulnl_instance* %171, null
  br i1 %172, label %176, label %173

173:                                              ; preds = %170
  %174 = load i32, i32* @ENODEV, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %19, align 4
  br label %261

176:                                              ; preds = %170
  br label %177

177:                                              ; preds = %176, %169
  %178 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %179 = load i64, i64* @NFULA_CFG_MODE, align 8
  %180 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %178, i64 %179
  %181 = load %struct.nlattr*, %struct.nlattr** %180, align 8
  %182 = icmp ne %struct.nlattr* %181, null
  br i1 %182, label %183, label %199

183:                                              ; preds = %177
  %184 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %185 = load i64, i64* @NFULA_CFG_MODE, align 8
  %186 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %184, i64 %185
  %187 = load %struct.nlattr*, %struct.nlattr** %186, align 8
  %188 = call i8* @nla_data(%struct.nlattr* %187)
  %189 = bitcast i8* %188 to %struct.nfulnl_msg_config_mode*
  store %struct.nfulnl_msg_config_mode* %189, %struct.nfulnl_msg_config_mode** %25, align 8
  %190 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %16, align 8
  %191 = load %struct.nfulnl_msg_config_mode*, %struct.nfulnl_msg_config_mode** %25, align 8
  %192 = getelementptr inbounds %struct.nfulnl_msg_config_mode, %struct.nfulnl_msg_config_mode* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.nfulnl_msg_config_mode*, %struct.nfulnl_msg_config_mode** %25, align 8
  %195 = getelementptr inbounds %struct.nfulnl_msg_config_mode, %struct.nfulnl_msg_config_mode* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @ntohl(i32 %196)
  %198 = call i32 @nfulnl_set_mode(%struct.nfulnl_instance* %190, i32 %193, i32 %197)
  br label %199

199:                                              ; preds = %183, %177
  %200 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %201 = load i64, i64* @NFULA_CFG_TIMEOUT, align 8
  %202 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %200, i64 %201
  %203 = load %struct.nlattr*, %struct.nlattr** %202, align 8
  %204 = icmp ne %struct.nlattr* %203, null
  br i1 %204, label %205, label %215

205:                                              ; preds = %199
  %206 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %207 = load i64, i64* @NFULA_CFG_TIMEOUT, align 8
  %208 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %206, i64 %207
  %209 = load %struct.nlattr*, %struct.nlattr** %208, align 8
  %210 = call i32 @nla_get_be32(%struct.nlattr* %209)
  store i32 %210, i32* %26, align 4
  %211 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %16, align 8
  %212 = load i32, i32* %26, align 4
  %213 = call i32 @ntohl(i32 %212)
  %214 = call i32 @nfulnl_set_timeout(%struct.nfulnl_instance* %211, i32 %213)
  br label %215

215:                                              ; preds = %205, %199
  %216 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %217 = load i64, i64* @NFULA_CFG_NLBUFSIZ, align 8
  %218 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %216, i64 %217
  %219 = load %struct.nlattr*, %struct.nlattr** %218, align 8
  %220 = icmp ne %struct.nlattr* %219, null
  br i1 %220, label %221, label %231

221:                                              ; preds = %215
  %222 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %223 = load i64, i64* @NFULA_CFG_NLBUFSIZ, align 8
  %224 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %222, i64 %223
  %225 = load %struct.nlattr*, %struct.nlattr** %224, align 8
  %226 = call i32 @nla_get_be32(%struct.nlattr* %225)
  store i32 %226, i32* %27, align 4
  %227 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %16, align 8
  %228 = load i32, i32* %27, align 4
  %229 = call i32 @ntohl(i32 %228)
  %230 = call i32 @nfulnl_set_nlbufsiz(%struct.nfulnl_instance* %227, i32 %229)
  br label %231

231:                                              ; preds = %221, %215
  %232 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %233 = load i64, i64* @NFULA_CFG_QTHRESH, align 8
  %234 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %232, i64 %233
  %235 = load %struct.nlattr*, %struct.nlattr** %234, align 8
  %236 = icmp ne %struct.nlattr* %235, null
  br i1 %236, label %237, label %247

237:                                              ; preds = %231
  %238 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %239 = load i64, i64* @NFULA_CFG_QTHRESH, align 8
  %240 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %238, i64 %239
  %241 = load %struct.nlattr*, %struct.nlattr** %240, align 8
  %242 = call i32 @nla_get_be32(%struct.nlattr* %241)
  store i32 %242, i32* %28, align 4
  %243 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %16, align 8
  %244 = load i32, i32* %28, align 4
  %245 = call i32 @ntohl(i32 %244)
  %246 = call i32 @nfulnl_set_qthresh(%struct.nfulnl_instance* %243, i32 %245)
  br label %247

247:                                              ; preds = %237, %231
  %248 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %249 = load i64, i64* @NFULA_CFG_FLAGS, align 8
  %250 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %248, i64 %249
  %251 = load %struct.nlattr*, %struct.nlattr** %250, align 8
  %252 = icmp ne %struct.nlattr* %251, null
  br i1 %252, label %253, label %257

253:                                              ; preds = %247
  %254 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %16, align 8
  %255 = load i32, i32* %20, align 4
  %256 = call i32 @nfulnl_set_flags(%struct.nfulnl_instance* %254, i32 %255)
  br label %257

257:                                              ; preds = %253, %247
  br label %258

258:                                              ; preds = %257, %166, %162, %123, %109, %84
  %259 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %16, align 8
  %260 = call i32 @instance_put(%struct.nfulnl_instance* %259)
  br label %261

261:                                              ; preds = %258, %173, %159, %152
  %262 = load i32, i32* %19, align 4
  store i32 %262, i32* %7, align 4
  br label %263

263:                                              ; preds = %261, %59, %55
  %264 = load i32, i32* %7, align 4
  ret i32 %264
}

declare dso_local %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i8* @ntohs(i32) #1

declare dso_local %struct.nfnl_log_net* @nfnl_log_pernet(%struct.net*) #1

declare dso_local i8* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @nf_log_bind_pf(%struct.net*, i32, i32*) #1

declare dso_local i32 @nf_log_unbind_pf(%struct.net*, i32) #1

declare dso_local %struct.nfulnl_instance* @instance_lookup_get(%struct.nfnl_log_net*, i8*) #1

declare dso_local { i64, i32 } @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @nla_get_be16(%struct.nlattr*) #1

declare dso_local i64 @rcu_access_pointer(i32) #1

declare dso_local %struct.nfulnl_instance* @instance_create(%struct.net*, i8*, i64, i32) #1

declare dso_local i32 @sk_user_ns(i32) #1

declare dso_local i32 @IS_ERR(%struct.nfulnl_instance*) #1

declare dso_local i32 @PTR_ERR(%struct.nfulnl_instance*) #1

declare dso_local i32 @instance_destroy(%struct.nfnl_log_net*, %struct.nfulnl_instance*) #1

declare dso_local i32 @nfulnl_set_mode(%struct.nfulnl_instance*, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

declare dso_local i32 @nfulnl_set_timeout(%struct.nfulnl_instance*, i32) #1

declare dso_local i32 @nfulnl_set_nlbufsiz(%struct.nfulnl_instance*, i32) #1

declare dso_local i32 @nfulnl_set_qthresh(%struct.nfulnl_instance*, i32) #1

declare dso_local i32 @nfulnl_set_flags(%struct.nfulnl_instance*, i32) #1

declare dso_local i32 @instance_put(%struct.nfulnl_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
