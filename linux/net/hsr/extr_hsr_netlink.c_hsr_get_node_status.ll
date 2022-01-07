; ModuleID = '/home/carl/AnghaBench/linux/net/hsr/extr_hsr_netlink.c_hsr_get_node_status.c'
source_filename = "/home/carl/AnghaBench/linux/net/hsr/extr_hsr_netlink.c_hsr_get_node_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, %struct.nlattr**, i32 }
%struct.nlattr = type { i32 }
%struct.net_device = type { i32 }
%struct.hsr_priv = type { i32 }
%struct.hsr_port = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@HSR_A_IFINDEX = common dso_local global i64 0, align 8
@HSR_A_NODE_ADDR = common dso_local global i64 0, align 8
@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hsr_genl_family = common dso_local global i32 0, align 4
@HSR_C_SET_NODE_STATUS = common dso_local global i32 0, align 4
@HSR_A_NODE_ADDR_B = common dso_local global i64 0, align 8
@HSR_A_ADDR_B_IFINDEX = common dso_local global i64 0, align 8
@HSR_A_IF1_AGE = common dso_local global i64 0, align 8
@HSR_A_IF1_SEQ = common dso_local global i32 0, align 4
@HSR_PT_SLAVE_A = common dso_local global i32 0, align 4
@HSR_A_IF1_IFINDEX = common dso_local global i64 0, align 8
@HSR_A_IF2_AGE = common dso_local global i64 0, align 8
@HSR_A_IF2_SEQ = common dso_local global i32 0, align 4
@HSR_PT_SLAVE_B = common dso_local global i32 0, align 4
@HSR_A_IF2_IFINDEX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @hsr_get_node_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsr_get_node_status(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.hsr_priv*, align 8
  %11 = alloca %struct.hsr_port*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_4__, align 4
  %21 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %22 = load i32, i32* @ETH_ALEN, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %12, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %13, align 8
  %26 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %27 = icmp ne %struct.genl_info* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %2
  br label %239

29:                                               ; preds = %2
  %30 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %31 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %30, i32 0, i32 1
  %32 = load %struct.nlattr**, %struct.nlattr*** %31, align 8
  %33 = load i64, i64* @HSR_A_IFINDEX, align 8
  %34 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %32, i64 %33
  %35 = load %struct.nlattr*, %struct.nlattr** %34, align 8
  store %struct.nlattr* %35, %struct.nlattr** %6, align 8
  %36 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %37 = icmp ne %struct.nlattr* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %29
  br label %239

39:                                               ; preds = %29
  %40 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %41 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %40, i32 0, i32 1
  %42 = load %struct.nlattr**, %struct.nlattr*** %41, align 8
  %43 = load i64, i64* @HSR_A_NODE_ADDR, align 8
  %44 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %42, i64 %43
  %45 = load %struct.nlattr*, %struct.nlattr** %44, align 8
  store %struct.nlattr* %45, %struct.nlattr** %6, align 8
  %46 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %47 = icmp ne %struct.nlattr* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %39
  br label %239

49:                                               ; preds = %39
  %50 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %51 = call i32 @genl_info_net(%struct.genl_info* %50)
  %52 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %53 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %52, i32 0, i32 1
  %54 = load %struct.nlattr**, %struct.nlattr*** %53, align 8
  %55 = load i64, i64* @HSR_A_IFINDEX, align 8
  %56 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %54, i64 %55
  %57 = load %struct.nlattr*, %struct.nlattr** %56, align 8
  %58 = call i32 @nla_get_u32(%struct.nlattr* %57)
  %59 = call %struct.net_device* @__dev_get_by_index(i32 %51, i32 %58)
  store %struct.net_device* %59, %struct.net_device** %7, align 8
  %60 = load %struct.net_device*, %struct.net_device** %7, align 8
  %61 = icmp ne %struct.net_device* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %49
  br label %239

63:                                               ; preds = %49
  %64 = load %struct.net_device*, %struct.net_device** %7, align 8
  %65 = call i32 @is_hsr_master(%struct.net_device* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  br label %239

68:                                               ; preds = %63
  %69 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call %struct.sk_buff* @genlmsg_new(i32 %69, i32 %70)
  store %struct.sk_buff* %71, %struct.sk_buff** %8, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %73 = icmp ne %struct.sk_buff* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %68
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %19, align 4
  br label %249

77:                                               ; preds = %68
  %78 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %80 = call i32 @NETLINK_CB(%struct.sk_buff* %79)
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 %80, i32* %81, align 4
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %85 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @HSR_C_SET_NODE_STATUS, align 4
  %88 = call i8* @genlmsg_put(%struct.sk_buff* %78, i32 %83, i32 %86, i32* @hsr_genl_family, i32 0, i32 %87)
  store i8* %88, i8** %9, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %77
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %19, align 4
  br label %246

94:                                               ; preds = %77
  %95 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %96 = load i64, i64* @HSR_A_IFINDEX, align 8
  %97 = load %struct.net_device*, %struct.net_device** %7, align 8
  %98 = getelementptr inbounds %struct.net_device, %struct.net_device* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @nla_put_u32(%struct.sk_buff* %95, i64 %96, i32 %99)
  store i32 %100, i32* %19, align 4
  %101 = load i32, i32* %19, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %94
  br label %246

104:                                              ; preds = %94
  %105 = load %struct.net_device*, %struct.net_device** %7, align 8
  %106 = call %struct.hsr_priv* @netdev_priv(%struct.net_device* %105)
  store %struct.hsr_priv* %106, %struct.hsr_priv** %10, align 8
  %107 = load %struct.hsr_priv*, %struct.hsr_priv** %10, align 8
  %108 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %109 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %108, i32 0, i32 1
  %110 = load %struct.nlattr**, %struct.nlattr*** %109, align 8
  %111 = load i64, i64* @HSR_A_NODE_ADDR, align 8
  %112 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %110, i64 %111
  %113 = load %struct.nlattr*, %struct.nlattr** %112, align 8
  %114 = call i8* @nla_data(%struct.nlattr* %113)
  %115 = call i32 @hsr_get_node_data(%struct.hsr_priv* %107, i8* %114, i8* %25, i32* %18, i32* %14, i32* %15, i32* %16, i32* %17)
  store i32 %115, i32* %19, align 4
  %116 = load i32, i32* %19, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %104
  br label %246

119:                                              ; preds = %104
  %120 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %121 = load i64, i64* @HSR_A_NODE_ADDR, align 8
  %122 = load i32, i32* @ETH_ALEN, align 4
  %123 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %124 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %123, i32 0, i32 1
  %125 = load %struct.nlattr**, %struct.nlattr*** %124, align 8
  %126 = load i64, i64* @HSR_A_NODE_ADDR, align 8
  %127 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %125, i64 %126
  %128 = load %struct.nlattr*, %struct.nlattr** %127, align 8
  %129 = call i8* @nla_data(%struct.nlattr* %128)
  %130 = call i32 @nla_put(%struct.sk_buff* %120, i64 %121, i32 %122, i8* %129)
  store i32 %130, i32* %19, align 4
  %131 = load i32, i32* %19, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %119
  br label %246

134:                                              ; preds = %119
  %135 = load i32, i32* %18, align 4
  %136 = icmp sgt i32 %135, -1
  br i1 %136, label %137, label %154

137:                                              ; preds = %134
  %138 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %139 = load i64, i64* @HSR_A_NODE_ADDR_B, align 8
  %140 = load i32, i32* @ETH_ALEN, align 4
  %141 = call i32 @nla_put(%struct.sk_buff* %138, i64 %139, i32 %140, i8* %25)
  store i32 %141, i32* %19, align 4
  %142 = load i32, i32* %19, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %137
  br label %246

145:                                              ; preds = %137
  %146 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %147 = load i64, i64* @HSR_A_ADDR_B_IFINDEX, align 8
  %148 = load i32, i32* %18, align 4
  %149 = call i32 @nla_put_u32(%struct.sk_buff* %146, i64 %147, i32 %148)
  store i32 %149, i32* %19, align 4
  %150 = load i32, i32* %19, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %145
  br label %246

153:                                              ; preds = %145
  br label %154

154:                                              ; preds = %153, %134
  %155 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %156 = load i64, i64* @HSR_A_IF1_AGE, align 8
  %157 = load i32, i32* %14, align 4
  %158 = call i32 @nla_put_u32(%struct.sk_buff* %155, i64 %156, i32 %157)
  store i32 %158, i32* %19, align 4
  %159 = load i32, i32* %19, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %154
  br label %246

162:                                              ; preds = %154
  %163 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %164 = load i32, i32* @HSR_A_IF1_SEQ, align 4
  %165 = load i32, i32* %15, align 4
  %166 = call i32 @nla_put_u16(%struct.sk_buff* %163, i32 %164, i32 %165)
  store i32 %166, i32* %19, align 4
  %167 = load i32, i32* %19, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %162
  br label %246

170:                                              ; preds = %162
  %171 = call i32 (...) @rcu_read_lock()
  %172 = load %struct.hsr_priv*, %struct.hsr_priv** %10, align 8
  %173 = load i32, i32* @HSR_PT_SLAVE_A, align 4
  %174 = call %struct.hsr_port* @hsr_port_get_hsr(%struct.hsr_priv* %172, i32 %173)
  store %struct.hsr_port* %174, %struct.hsr_port** %11, align 8
  %175 = load %struct.hsr_port*, %struct.hsr_port** %11, align 8
  %176 = icmp ne %struct.hsr_port* %175, null
  br i1 %176, label %177, label %186

177:                                              ; preds = %170
  %178 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %179 = load i64, i64* @HSR_A_IF1_IFINDEX, align 8
  %180 = load %struct.hsr_port*, %struct.hsr_port** %11, align 8
  %181 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %180, i32 0, i32 0
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @nla_put_u32(%struct.sk_buff* %178, i64 %179, i32 %184)
  store i32 %185, i32* %19, align 4
  br label %186

186:                                              ; preds = %177, %170
  %187 = call i32 (...) @rcu_read_unlock()
  %188 = load i32, i32* %19, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %186
  br label %246

191:                                              ; preds = %186
  %192 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %193 = load i64, i64* @HSR_A_IF2_AGE, align 8
  %194 = load i32, i32* %16, align 4
  %195 = call i32 @nla_put_u32(%struct.sk_buff* %192, i64 %193, i32 %194)
  store i32 %195, i32* %19, align 4
  %196 = load i32, i32* %19, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %191
  br label %246

199:                                              ; preds = %191
  %200 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %201 = load i32, i32* @HSR_A_IF2_SEQ, align 4
  %202 = load i32, i32* %17, align 4
  %203 = call i32 @nla_put_u16(%struct.sk_buff* %200, i32 %201, i32 %202)
  store i32 %203, i32* %19, align 4
  %204 = load i32, i32* %19, align 4
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %199
  br label %246

207:                                              ; preds = %199
  %208 = call i32 (...) @rcu_read_lock()
  %209 = load %struct.hsr_priv*, %struct.hsr_priv** %10, align 8
  %210 = load i32, i32* @HSR_PT_SLAVE_B, align 4
  %211 = call %struct.hsr_port* @hsr_port_get_hsr(%struct.hsr_priv* %209, i32 %210)
  store %struct.hsr_port* %211, %struct.hsr_port** %11, align 8
  %212 = load %struct.hsr_port*, %struct.hsr_port** %11, align 8
  %213 = icmp ne %struct.hsr_port* %212, null
  br i1 %213, label %214, label %223

214:                                              ; preds = %207
  %215 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %216 = load i64, i64* @HSR_A_IF2_IFINDEX, align 8
  %217 = load %struct.hsr_port*, %struct.hsr_port** %11, align 8
  %218 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %217, i32 0, i32 0
  %219 = load %struct.TYPE_3__*, %struct.TYPE_3__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @nla_put_u32(%struct.sk_buff* %215, i64 %216, i32 %221)
  store i32 %222, i32* %19, align 4
  br label %223

223:                                              ; preds = %214, %207
  %224 = call i32 (...) @rcu_read_unlock()
  %225 = load i32, i32* %19, align 4
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %223
  br label %246

228:                                              ; preds = %223
  %229 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %230 = load i8*, i8** %9, align 8
  %231 = call i32 @genlmsg_end(%struct.sk_buff* %229, i8* %230)
  %232 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %233 = call i32 @genl_info_net(%struct.genl_info* %232)
  %234 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %235 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %236 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @genlmsg_unicast(i32 %233, %struct.sk_buff* %234, i32 %237)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %251

239:                                              ; preds = %67, %62, %48, %38, %28
  %240 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %241 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %242 = call i32 @nlmsg_hdr(%struct.sk_buff* %241)
  %243 = load i32, i32* @EINVAL, align 4
  %244 = sub nsw i32 0, %243
  %245 = call i32 @netlink_ack(%struct.sk_buff* %240, i32 %242, i32 %244, i32* null)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %251

246:                                              ; preds = %227, %206, %198, %190, %169, %161, %152, %144, %133, %118, %103, %91
  %247 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %248 = call i32 @kfree_skb(%struct.sk_buff* %247)
  br label %249

249:                                              ; preds = %246, %74
  %250 = load i32, i32* %19, align 4
  store i32 %250, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %251

251:                                              ; preds = %249, %239, %228
  %252 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %252)
  %253 = load i32, i32* %3, align 4
  ret i32 %253
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.net_device* @__dev_get_by_index(i32, i32) #2

declare dso_local i32 @genl_info_net(%struct.genl_info*) #2

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #2

declare dso_local i32 @is_hsr_master(%struct.net_device*) #2

declare dso_local %struct.sk_buff* @genlmsg_new(i32, i32) #2

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #2

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #2

declare dso_local i32 @nla_put_u32(%struct.sk_buff*, i64, i32) #2

declare dso_local %struct.hsr_priv* @netdev_priv(%struct.net_device*) #2

declare dso_local i32 @hsr_get_node_data(%struct.hsr_priv*, i8*, i8*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i8* @nla_data(%struct.nlattr*) #2

declare dso_local i32 @nla_put(%struct.sk_buff*, i64, i32, i8*) #2

declare dso_local i32 @nla_put_u16(%struct.sk_buff*, i32, i32) #2

declare dso_local i32 @rcu_read_lock(...) #2

declare dso_local %struct.hsr_port* @hsr_port_get_hsr(%struct.hsr_priv*, i32) #2

declare dso_local i32 @rcu_read_unlock(...) #2

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #2

declare dso_local i32 @genlmsg_unicast(i32, %struct.sk_buff*, i32) #2

declare dso_local i32 @netlink_ack(%struct.sk_buff*, i32, i32, i32*) #2

declare dso_local i32 @nlmsg_hdr(%struct.sk_buff*) #2

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
