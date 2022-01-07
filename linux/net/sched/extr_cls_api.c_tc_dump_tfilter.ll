; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tc_dump_tfilter.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tc_dump_tfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.netlink_callback = type { i64*, i32, i32 }
%struct.tcf_chain = type { i64 }
%struct.net = type { i32 }
%struct.Qdisc = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { %struct.Qdisc_class_ops* }
%struct.Qdisc_class_ops = type { i64 (%struct.Qdisc*, i64)*, %struct.tcf_block* (%struct.Qdisc*, i64, i32*)* }
%struct.tcf_block = type { i32 }
%struct.tcmsg = type { i64, i64, i32 }
%struct.net_device = type { %struct.Qdisc* }
%struct.nlattr = type { i32 }

@TCA_MAX = common dso_local global i32 0, align 4
@TCM_IFINDEX_MAGIC_BLOCK = common dso_local global i64 0, align 8
@TCA_CHAIN = common dso_local global i64 0, align 8
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*)* @tc_dump_tfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_dump_tfilter(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.netlink_callback*, align 8
  %6 = alloca %struct.tcf_chain*, align 8
  %7 = alloca %struct.tcf_chain*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.Qdisc*, align 8
  %12 = alloca %struct.tcf_block*, align 8
  %13 = alloca %struct.tcmsg*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.Qdisc_class_ops*, align 8
  %20 = alloca %struct.net_device*, align 8
  %21 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %5, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.net* @sock_net(i32 %24)
  store %struct.net* %25, %struct.net** %8, align 8
  %26 = load i32, i32* @TCA_MAX, align 4
  %27 = add nsw i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %9, align 8
  %30 = alloca %struct.nlattr*, i64 %28, align 16
  store i64 %28, i64* %10, align 8
  store %struct.Qdisc* null, %struct.Qdisc** %11, align 8
  %31 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %32 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.tcmsg* @nlmsg_data(i32 %33)
  store %struct.tcmsg* %34, %struct.tcmsg** %13, align 8
  %35 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %36 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @nlmsg_len(i32 %37)
  %39 = sext i32 %38 to i64
  %40 = icmp ult i64 %39, 24
  br i1 %40, label %41, label %45

41:                                               ; preds = %2
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %237

45:                                               ; preds = %2
  %46 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %47 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @TCA_MAX, align 4
  %50 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %51 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @nlmsg_parse_deprecated(i32 %48, i32 24, %struct.nlattr** %30, i32 %49, i32* null, i32 %52)
  store i32 %53, i32* %17, align 4
  %54 = load i32, i32* %17, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %45
  %57 = load i32, i32* %17, align 4
  store i32 %57, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %237

58:                                               ; preds = %45
  %59 = load %struct.tcmsg*, %struct.tcmsg** %13, align 8
  %60 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @TCM_IFINDEX_MAGIC_BLOCK, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %58
  %65 = load %struct.net*, %struct.net** %8, align 8
  %66 = load %struct.tcmsg*, %struct.tcmsg** %13, align 8
  %67 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call %struct.tcf_block* @tcf_block_refcnt_get(%struct.net* %65, i32 %68)
  store %struct.tcf_block* %69, %struct.tcf_block** %12, align 8
  %70 = load %struct.tcf_block*, %struct.tcf_block** %12, align 8
  %71 = icmp ne %struct.tcf_block* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %64
  br label %223

73:                                               ; preds = %64
  store i64 0, i64* %16, align 8
  br label %160

74:                                               ; preds = %58
  store i64 0, i64* %21, align 8
  %75 = load %struct.net*, %struct.net** %8, align 8
  %76 = load %struct.tcmsg*, %struct.tcmsg** %13, align 8
  %77 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call %struct.net_device* @__dev_get_by_index(%struct.net* %75, i64 %78)
  store %struct.net_device* %79, %struct.net_device** %20, align 8
  %80 = load %struct.net_device*, %struct.net_device** %20, align 8
  %81 = icmp ne %struct.net_device* %80, null
  br i1 %81, label %86, label %82

82:                                               ; preds = %74
  %83 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %237

86:                                               ; preds = %74
  %87 = load %struct.tcmsg*, %struct.tcmsg** %13, align 8
  %88 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %16, align 8
  %90 = load i64, i64* %16, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %86
  %93 = load %struct.net_device*, %struct.net_device** %20, align 8
  %94 = getelementptr inbounds %struct.net_device, %struct.net_device* %93, i32 0, i32 0
  %95 = load %struct.Qdisc*, %struct.Qdisc** %94, align 8
  store %struct.Qdisc* %95, %struct.Qdisc** %11, align 8
  %96 = load %struct.Qdisc*, %struct.Qdisc** %11, align 8
  %97 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %16, align 8
  br label %106

99:                                               ; preds = %86
  %100 = load %struct.net_device*, %struct.net_device** %20, align 8
  %101 = load %struct.tcmsg*, %struct.tcmsg** %13, align 8
  %102 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @TC_H_MAJ(i64 %103)
  %105 = call %struct.Qdisc* @qdisc_lookup(%struct.net_device* %100, i32 %104)
  store %struct.Qdisc* %105, %struct.Qdisc** %11, align 8
  br label %106

106:                                              ; preds = %99, %92
  %107 = load %struct.Qdisc*, %struct.Qdisc** %11, align 8
  %108 = icmp ne %struct.Qdisc* %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %106
  br label %223

110:                                              ; preds = %106
  %111 = load %struct.Qdisc*, %struct.Qdisc** %11, align 8
  %112 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %111, i32 0, i32 0
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %114, align 8
  store %struct.Qdisc_class_ops* %115, %struct.Qdisc_class_ops** %19, align 8
  %116 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %19, align 8
  %117 = icmp ne %struct.Qdisc_class_ops* %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %110
  br label %223

119:                                              ; preds = %110
  %120 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %19, align 8
  %121 = getelementptr inbounds %struct.Qdisc_class_ops, %struct.Qdisc_class_ops* %120, i32 0, i32 1
  %122 = load %struct.tcf_block* (%struct.Qdisc*, i64, i32*)*, %struct.tcf_block* (%struct.Qdisc*, i64, i32*)** %121, align 8
  %123 = icmp ne %struct.tcf_block* (%struct.Qdisc*, i64, i32*)* %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %119
  br label %223

125:                                              ; preds = %119
  %126 = load %struct.tcmsg*, %struct.tcmsg** %13, align 8
  %127 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = call i64 @TC_H_MIN(i64 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %144

131:                                              ; preds = %125
  %132 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %19, align 8
  %133 = getelementptr inbounds %struct.Qdisc_class_ops, %struct.Qdisc_class_ops* %132, i32 0, i32 0
  %134 = load i64 (%struct.Qdisc*, i64)*, i64 (%struct.Qdisc*, i64)** %133, align 8
  %135 = load %struct.Qdisc*, %struct.Qdisc** %11, align 8
  %136 = load %struct.tcmsg*, %struct.tcmsg** %13, align 8
  %137 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = call i64 %134(%struct.Qdisc* %135, i64 %138)
  store i64 %139, i64* %21, align 8
  %140 = load i64, i64* %21, align 8
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %131
  br label %223

143:                                              ; preds = %131
  br label %144

144:                                              ; preds = %143, %125
  %145 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %19, align 8
  %146 = getelementptr inbounds %struct.Qdisc_class_ops, %struct.Qdisc_class_ops* %145, i32 0, i32 1
  %147 = load %struct.tcf_block* (%struct.Qdisc*, i64, i32*)*, %struct.tcf_block* (%struct.Qdisc*, i64, i32*)** %146, align 8
  %148 = load %struct.Qdisc*, %struct.Qdisc** %11, align 8
  %149 = load i64, i64* %21, align 8
  %150 = call %struct.tcf_block* %147(%struct.Qdisc* %148, i64 %149, i32* null)
  store %struct.tcf_block* %150, %struct.tcf_block** %12, align 8
  %151 = load %struct.tcf_block*, %struct.tcf_block** %12, align 8
  %152 = icmp ne %struct.tcf_block* %151, null
  br i1 %152, label %154, label %153

153:                                              ; preds = %144
  br label %223

154:                                              ; preds = %144
  %155 = load %struct.tcf_block*, %struct.tcf_block** %12, align 8
  %156 = call i64 @tcf_block_shared(%struct.tcf_block* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %154
  store %struct.Qdisc* null, %struct.Qdisc** %11, align 8
  br label %159

159:                                              ; preds = %158, %154
  br label %160

160:                                              ; preds = %159, %73
  %161 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %162 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %161, i32 0, i32 0
  %163 = load i64*, i64** %162, align 8
  %164 = getelementptr inbounds i64, i64* %163, i64 0
  %165 = load i64, i64* %164, align 8
  store i64 %165, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %166 = load %struct.tcf_block*, %struct.tcf_block** %12, align 8
  %167 = call %struct.tcf_chain* @__tcf_get_next_chain(%struct.tcf_block* %166, %struct.tcf_chain* null)
  store %struct.tcf_chain* %167, %struct.tcf_chain** %6, align 8
  br label %168

168:                                              ; preds = %201, %160
  %169 = load %struct.tcf_chain*, %struct.tcf_chain** %6, align 8
  %170 = icmp ne %struct.tcf_chain* %169, null
  br i1 %170, label %171, label %208

171:                                              ; preds = %168
  %172 = load i64, i64* @TCA_CHAIN, align 8
  %173 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %172
  %174 = load %struct.nlattr*, %struct.nlattr** %173, align 8
  %175 = icmp ne %struct.nlattr* %174, null
  br i1 %175, label %176, label %186

176:                                              ; preds = %171
  %177 = load i64, i64* @TCA_CHAIN, align 8
  %178 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %177
  %179 = load %struct.nlattr*, %struct.nlattr** %178, align 8
  %180 = call i64 @nla_get_u32(%struct.nlattr* %179)
  %181 = load %struct.tcf_chain*, %struct.tcf_chain** %6, align 8
  %182 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %180, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %176
  br label %201

186:                                              ; preds = %176, %171
  %187 = load %struct.tcf_chain*, %struct.tcf_chain** %6, align 8
  %188 = load %struct.Qdisc*, %struct.Qdisc** %11, align 8
  %189 = load i64, i64* %16, align 8
  %190 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %191 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %192 = load i64, i64* %14, align 8
  %193 = call i32 @tcf_chain_dump(%struct.tcf_chain* %187, %struct.Qdisc* %188, i64 %189, %struct.sk_buff* %190, %struct.netlink_callback* %191, i64 %192, i64* %15)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %200, label %195

195:                                              ; preds = %186
  %196 = load %struct.tcf_chain*, %struct.tcf_chain** %6, align 8
  %197 = call i32 @tcf_chain_put(%struct.tcf_chain* %196)
  %198 = load i32, i32* @EMSGSIZE, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %17, align 4
  br label %208

200:                                              ; preds = %186
  br label %201

201:                                              ; preds = %200, %185
  %202 = load %struct.tcf_chain*, %struct.tcf_chain** %6, align 8
  store %struct.tcf_chain* %202, %struct.tcf_chain** %7, align 8
  %203 = load %struct.tcf_block*, %struct.tcf_block** %12, align 8
  %204 = load %struct.tcf_chain*, %struct.tcf_chain** %6, align 8
  %205 = call %struct.tcf_chain* @__tcf_get_next_chain(%struct.tcf_block* %203, %struct.tcf_chain* %204)
  store %struct.tcf_chain* %205, %struct.tcf_chain** %6, align 8
  %206 = load %struct.tcf_chain*, %struct.tcf_chain** %7, align 8
  %207 = call i32 @tcf_chain_put(%struct.tcf_chain* %206)
  br label %168

208:                                              ; preds = %195, %168
  %209 = load %struct.tcmsg*, %struct.tcmsg** %13, align 8
  %210 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @TCM_IFINDEX_MAGIC_BLOCK, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %217

214:                                              ; preds = %208
  %215 = load %struct.tcf_block*, %struct.tcf_block** %12, align 8
  %216 = call i32 @tcf_block_refcnt_put(%struct.tcf_block* %215, i32 1)
  br label %217

217:                                              ; preds = %214, %208
  %218 = load i64, i64* %15, align 8
  %219 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %220 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %219, i32 0, i32 0
  %221 = load i64*, i64** %220, align 8
  %222 = getelementptr inbounds i64, i64* %221, i64 0
  store i64 %218, i64* %222, align 8
  br label %223

223:                                              ; preds = %217, %153, %142, %124, %118, %109, %72
  %224 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %225 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %223
  %229 = load i32, i32* %17, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %228
  %232 = load i32, i32* %17, align 4
  store i32 %232, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %237

233:                                              ; preds = %228, %223
  %234 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %235 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  store i32 %236, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %237

237:                                              ; preds = %233, %231, %82, %56, %41
  %238 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %238)
  %239 = load i32, i32* %3, align 4
  ret i32 %239
}

declare dso_local %struct.net* @sock_net(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.tcmsg* @nlmsg_data(i32) #1

declare dso_local i32 @nlmsg_len(i32) #1

declare dso_local i32 @nlmsg_parse_deprecated(i32, i32, %struct.nlattr**, i32, i32*, i32) #1

declare dso_local %struct.tcf_block* @tcf_block_refcnt_get(%struct.net*, i32) #1

declare dso_local %struct.net_device* @__dev_get_by_index(%struct.net*, i64) #1

declare dso_local %struct.Qdisc* @qdisc_lookup(%struct.net_device*, i32) #1

declare dso_local i32 @TC_H_MAJ(i64) #1

declare dso_local i64 @TC_H_MIN(i64) #1

declare dso_local i64 @tcf_block_shared(%struct.tcf_block*) #1

declare dso_local %struct.tcf_chain* @__tcf_get_next_chain(%struct.tcf_block*, %struct.tcf_chain*) #1

declare dso_local i64 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @tcf_chain_dump(%struct.tcf_chain*, %struct.Qdisc*, i64, %struct.sk_buff*, %struct.netlink_callback*, i64, i64*) #1

declare dso_local i32 @tcf_chain_put(%struct.tcf_chain*) #1

declare dso_local i32 @tcf_block_refcnt_put(%struct.tcf_block*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
