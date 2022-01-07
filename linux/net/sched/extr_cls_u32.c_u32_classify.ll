; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_u32.c_u32_classify.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_u32.c_u32_classify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.tcf_proto = type { i32 }
%struct.tcf_result = type { i32 }
%struct.tc_u_hnode = type { i32, i32* }
%struct.tc_u_knode = type { i32, i32, i32, %struct.TYPE_4__, i32, i32, i32, i32, %struct.TYPE_3__*, i32, %struct.tcf_result, i32*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.tc_u32_key* }
%struct.tc_u32_key = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32*, i32 }
%struct.anon = type { %struct.tc_u_knode*, i32 }

@TC_U32_MAXDEPTH = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@TC_U32_TERMINAL = common dso_local global i32 0, align 4
@TC_U32_VAROFFSET = common dso_local global i32 0, align 4
@TC_U32_OFFSET = common dso_local global i32 0, align 4
@TC_U32_EAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"cls_u32: dead loop\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tcf_proto*, %struct.tcf_result*)* @u32_classify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u32_classify(%struct.sk_buff* %0, %struct.tcf_proto* %1, %struct.tcf_result* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tcf_proto*, align 8
  %7 = alloca %struct.tcf_result*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.tc_u_hnode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.tc_u_knode*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.tc_u32_key*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.tcf_proto* %1, %struct.tcf_proto** %6, align 8
  store %struct.tcf_result* %2, %struct.tcf_result** %7, align 8
  %27 = load i32, i32* @TC_U32_MAXDEPTH, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %8, align 8
  %30 = alloca %struct.anon, i64 %28, align 16
  store i64 %28, i64* %9, align 8
  %31 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %32 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @rcu_dereference_bh(i32 %33)
  %35 = bitcast i8* %34 to %struct.tc_u_hnode*
  store %struct.tc_u_hnode* %35, %struct.tc_u_hnode** %10, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = call i32 @skb_network_offset(%struct.sk_buff* %36)
  store i32 %37, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %38

38:                                               ; preds = %320, %247, %3
  %39 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %10, align 8
  %40 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %15, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @rcu_dereference_bh(i32 %45)
  %47 = bitcast i8* %46 to %struct.tc_u_knode*
  store %struct.tc_u_knode* %47, %struct.tc_u_knode** %12, align 8
  br label %48

48:                                               ; preds = %177, %169, %155, %114, %61, %38
  %49 = load %struct.tc_u_knode*, %struct.tc_u_knode** %12, align 8
  %50 = icmp ne %struct.tc_u_knode* %49, null
  br i1 %50, label %51, label %322

51:                                               ; preds = %48
  %52 = load %struct.tc_u_knode*, %struct.tc_u_knode** %12, align 8
  %53 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 7
  %55 = load %struct.tc_u32_key*, %struct.tc_u32_key** %54, align 8
  store %struct.tc_u32_key* %55, %struct.tc_u32_key** %18, align 8
  %56 = load %struct.tc_u_knode*, %struct.tc_u_knode** %12, align 8
  %57 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %56, i32 0, i32 12
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @tc_skip_sw(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %51
  %62 = load %struct.tc_u_knode*, %struct.tc_u_knode** %12, align 8
  %63 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 8
  %65 = call i8* @rcu_dereference_bh(i32 %64)
  %66 = bitcast i8* %65 to %struct.tc_u_knode*
  store %struct.tc_u_knode* %66, %struct.tc_u_knode** %12, align 8
  br label %48

67:                                               ; preds = %51
  %68 = load %struct.tc_u_knode*, %struct.tc_u_knode** %12, align 8
  %69 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %16, align 4
  br label %72

72:                                               ; preds = %121, %67
  %73 = load i32, i32* %16, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %126

75:                                               ; preds = %72
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.tc_u32_key*, %struct.tc_u32_key** %18, align 8
  %78 = getelementptr inbounds %struct.tc_u32_key, %struct.tc_u32_key* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = add i32 %76, %79
  %81 = load i32, i32* %14, align 4
  %82 = load %struct.tc_u32_key*, %struct.tc_u32_key** %18, align 8
  %83 = getelementptr inbounds %struct.tc_u32_key, %struct.tc_u32_key* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %81, %84
  %86 = add i32 %80, %85
  store i32 %86, i32* %19, align 4
  %87 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %88 = call i64 @skb_headroom(%struct.sk_buff* %87)
  %89 = load i32, i32* %19, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %88, %90
  %92 = load i64, i64* @INT_MAX, align 8
  %93 = icmp sgt i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %75
  br label %343

95:                                               ; preds = %75
  %96 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %97 = load i32, i32* %19, align 4
  %98 = call i32* @skb_header_pointer(%struct.sk_buff* %96, i32 %97, i32 4, i32* %21)
  store i32* %98, i32** %20, align 8
  %99 = load i32*, i32** %20, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %95
  br label %343

102:                                              ; preds = %95
  %103 = load i32*, i32** %20, align 8
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.tc_u32_key*, %struct.tc_u32_key** %18, align 8
  %106 = getelementptr inbounds %struct.tc_u32_key, %struct.tc_u32_key* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = xor i32 %104, %107
  %109 = load %struct.tc_u32_key*, %struct.tc_u32_key** %18, align 8
  %110 = getelementptr inbounds %struct.tc_u32_key, %struct.tc_u32_key* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %108, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %102
  %115 = load %struct.tc_u_knode*, %struct.tc_u_knode** %12, align 8
  %116 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 8
  %118 = call i8* @rcu_dereference_bh(i32 %117)
  %119 = bitcast i8* %118 to %struct.tc_u_knode*
  store %struct.tc_u_knode* %119, %struct.tc_u_knode** %12, align 8
  br label %48

120:                                              ; preds = %102
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %16, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %16, align 4
  %124 = load %struct.tc_u32_key*, %struct.tc_u32_key** %18, align 8
  %125 = getelementptr inbounds %struct.tc_u32_key, %struct.tc_u32_key* %124, i32 1
  store %struct.tc_u32_key* %125, %struct.tc_u32_key** %18, align 8
  br label %72

126:                                              ; preds = %72
  %127 = load %struct.tc_u_knode*, %struct.tc_u_knode** %12, align 8
  %128 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 4
  %130 = call i8* @rcu_dereference_bh(i32 %129)
  %131 = bitcast i8* %130 to %struct.tc_u_hnode*
  store %struct.tc_u_hnode* %131, %struct.tc_u_hnode** %10, align 8
  %132 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %10, align 8
  %133 = icmp ne %struct.tc_u_hnode* %132, null
  br i1 %133, label %183, label %134

134:                                              ; preds = %126
  br label %135

135:                                              ; preds = %326, %134
  %136 = load %struct.tc_u_knode*, %struct.tc_u_knode** %12, align 8
  %137 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @TC_U32_TERMINAL, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %177

143:                                              ; preds = %135
  %144 = load %struct.tcf_result*, %struct.tcf_result** %7, align 8
  %145 = load %struct.tc_u_knode*, %struct.tc_u_knode** %12, align 8
  %146 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %145, i32 0, i32 10
  %147 = bitcast %struct.tcf_result* %144 to i8*
  %148 = bitcast %struct.tcf_result* %146 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %147, i8* align 4 %148, i64 4, i1 false)
  %149 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %150 = load %struct.tc_u_knode*, %struct.tc_u_knode** %12, align 8
  %151 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %150, i32 0, i32 9
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @tcf_match_indev(%struct.sk_buff* %149, i32 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %161, label %155

155:                                              ; preds = %143
  %156 = load %struct.tc_u_knode*, %struct.tc_u_knode** %12, align 8
  %157 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %156, i32 0, i32 6
  %158 = load i32, i32* %157, align 8
  %159 = call i8* @rcu_dereference_bh(i32 %158)
  %160 = bitcast i8* %159 to %struct.tc_u_knode*
  store %struct.tc_u_knode* %160, %struct.tc_u_knode** %12, align 8
  br label %48

161:                                              ; preds = %143
  %162 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %163 = load %struct.tc_u_knode*, %struct.tc_u_knode** %12, align 8
  %164 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %163, i32 0, i32 7
  %165 = load %struct.tcf_result*, %struct.tcf_result** %7, align 8
  %166 = call i32 @tcf_exts_exec(%struct.sk_buff* %162, i32* %164, %struct.tcf_result* %165)
  store i32 %166, i32* %17, align 4
  %167 = load i32, i32* %17, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %161
  %170 = load %struct.tc_u_knode*, %struct.tc_u_knode** %12, align 8
  %171 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %170, i32 0, i32 6
  %172 = load i32, i32* %171, align 8
  %173 = call i8* @rcu_dereference_bh(i32 %172)
  %174 = bitcast i8* %173 to %struct.tc_u_knode*
  store %struct.tc_u_knode* %174, %struct.tc_u_knode** %12, align 8
  br label %48

175:                                              ; preds = %161
  %176 = load i32, i32* %17, align 4
  store i32 %176, i32* %4, align 4
  store i32 1, i32* %22, align 4
  br label %346

177:                                              ; preds = %135
  %178 = load %struct.tc_u_knode*, %struct.tc_u_knode** %12, align 8
  %179 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %178, i32 0, i32 6
  %180 = load i32, i32* %179, align 8
  %181 = call i8* @rcu_dereference_bh(i32 %180)
  %182 = bitcast i8* %181 to %struct.tc_u_knode*
  store %struct.tc_u_knode* %182, %struct.tc_u_knode** %12, align 8
  br label %48

183:                                              ; preds = %126
  %184 = load i32, i32* %13, align 4
  %185 = load i32, i32* @TC_U32_MAXDEPTH, align 4
  %186 = icmp sge i32 %184, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %183
  br label %344

188:                                              ; preds = %183
  %189 = load %struct.tc_u_knode*, %struct.tc_u_knode** %12, align 8
  %190 = load i32, i32* %13, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.anon, %struct.anon* %30, i64 %191
  %193 = getelementptr inbounds %struct.anon, %struct.anon* %192, i32 0, i32 0
  store %struct.tc_u_knode* %189, %struct.tc_u_knode** %193, align 16
  %194 = load i32, i32* %11, align 4
  %195 = load i32, i32* %13, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.anon, %struct.anon* %30, i64 %196
  %198 = getelementptr inbounds %struct.anon, %struct.anon* %197, i32 0, i32 1
  store i32 %194, i32* %198, align 8
  %199 = load i32, i32* %13, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %13, align 4
  %201 = load %struct.tc_u_knode*, %struct.tc_u_knode** %12, align 8
  %202 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %201, i32 0, i32 5
  %203 = load i32, i32* %202, align 4
  %204 = call i8* @rcu_dereference_bh(i32 %203)
  %205 = bitcast i8* %204 to %struct.tc_u_hnode*
  store %struct.tc_u_hnode* %205, %struct.tc_u_hnode** %10, align 8
  store i32 0, i32* %15, align 4
  %206 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %10, align 8
  %207 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %235

210:                                              ; preds = %188
  %211 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %212 = load i32, i32* %11, align 4
  %213 = load %struct.tc_u_knode*, %struct.tc_u_knode** %12, align 8
  %214 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %213, i32 0, i32 3
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = add i32 %212, %216
  %218 = call i32* @skb_header_pointer(%struct.sk_buff* %211, i32 %217, i32 4, i32* %24)
  store i32* %218, i32** %23, align 8
  %219 = load i32*, i32** %23, align 8
  %220 = icmp ne i32* %219, null
  br i1 %220, label %222, label %221

221:                                              ; preds = %210
  br label %343

222:                                              ; preds = %210
  %223 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %10, align 8
  %224 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load i32*, i32** %23, align 8
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.tc_u_knode*, %struct.tc_u_knode** %12, align 8
  %229 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %228, i32 0, i32 3
  %230 = load %struct.tc_u_knode*, %struct.tc_u_knode** %12, align 8
  %231 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @u32_hash_fold(i32 %227, %struct.TYPE_4__* %229, i32 %232)
  %234 = and i32 %225, %233
  store i32 %234, i32* %15, align 4
  br label %235

235:                                              ; preds = %222, %188
  %236 = load %struct.tc_u_knode*, %struct.tc_u_knode** %12, align 8
  %237 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %236, i32 0, i32 3
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @TC_U32_VAROFFSET, align 4
  %241 = load i32, i32* @TC_U32_OFFSET, align 4
  %242 = or i32 %240, %241
  %243 = load i32, i32* @TC_U32_EAT, align 4
  %244 = or i32 %242, %243
  %245 = and i32 %239, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %248, label %247

247:                                              ; preds = %235
  br label %38

248:                                              ; preds = %235
  %249 = load %struct.tc_u_knode*, %struct.tc_u_knode** %12, align 8
  %250 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %249, i32 0, i32 3
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* @TC_U32_OFFSET, align 4
  %254 = load i32, i32* @TC_U32_VAROFFSET, align 4
  %255 = or i32 %253, %254
  %256 = and i32 %252, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %302

258:                                              ; preds = %248
  %259 = load %struct.tc_u_knode*, %struct.tc_u_knode** %12, align 8
  %260 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %259, i32 0, i32 3
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 4
  %263 = add nsw i32 %262, 3
  store i32 %263, i32* %14, align 4
  %264 = load %struct.tc_u_knode*, %struct.tc_u_knode** %12, align 8
  %265 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %264, i32 0, i32 3
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* @TC_U32_VAROFFSET, align 4
  %269 = and i32 %267, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %299

271:                                              ; preds = %258
  %272 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %273 = load i32, i32* %11, align 4
  %274 = load %struct.tc_u_knode*, %struct.tc_u_knode** %12, align 8
  %275 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %274, i32 0, i32 3
  %276 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %275, i32 0, i32 4
  %277 = load i32, i32* %276, align 8
  %278 = add i32 %273, %277
  %279 = call i32* @skb_header_pointer(%struct.sk_buff* %272, i32 %278, i32 2, i32* %26)
  store i32* %279, i32** %25, align 8
  %280 = load i32*, i32** %25, align 8
  %281 = icmp ne i32* %280, null
  br i1 %281, label %283, label %282

282:                                              ; preds = %271
  br label %343

283:                                              ; preds = %271
  %284 = load %struct.tc_u_knode*, %struct.tc_u_knode** %12, align 8
  %285 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %284, i32 0, i32 3
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i32 0, i32 5
  %287 = load i32, i32* %286, align 4
  %288 = load i32*, i32** %25, align 8
  %289 = load i32, i32* %288, align 4
  %290 = and i32 %287, %289
  %291 = call i32 @ntohs(i32 %290)
  %292 = load %struct.tc_u_knode*, %struct.tc_u_knode** %12, align 8
  %293 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %292, i32 0, i32 3
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %293, i32 0, i32 6
  %295 = load i32, i32* %294, align 8
  %296 = ashr i32 %291, %295
  %297 = load i32, i32* %14, align 4
  %298 = add nsw i32 %297, %296
  store i32 %298, i32* %14, align 4
  br label %299

299:                                              ; preds = %283, %258
  %300 = load i32, i32* %14, align 4
  %301 = and i32 %300, -4
  store i32 %301, i32* %14, align 4
  br label %302

302:                                              ; preds = %299, %248
  %303 = load %struct.tc_u_knode*, %struct.tc_u_knode** %12, align 8
  %304 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %303, i32 0, i32 3
  %305 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* @TC_U32_EAT, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %314

310:                                              ; preds = %302
  %311 = load i32, i32* %14, align 4
  %312 = load i32, i32* %11, align 4
  %313 = add i32 %312, %311
  store i32 %313, i32* %11, align 4
  store i32 0, i32* %14, align 4
  br label %314

314:                                              ; preds = %310, %302
  %315 = load i32, i32* %11, align 4
  %316 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %317 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = icmp ult i32 %315, %318
  br i1 %319, label %320, label %321

320:                                              ; preds = %314
  br label %38

321:                                              ; preds = %314
  br label %322

322:                                              ; preds = %321, %48
  %323 = load i32, i32* %13, align 4
  %324 = add nsw i32 %323, -1
  store i32 %324, i32* %13, align 4
  %325 = icmp ne i32 %323, 0
  br i1 %325, label %326, label %342

326:                                              ; preds = %322
  %327 = load i32, i32* %13, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.anon, %struct.anon* %30, i64 %328
  %330 = getelementptr inbounds %struct.anon, %struct.anon* %329, i32 0, i32 0
  %331 = load %struct.tc_u_knode*, %struct.tc_u_knode** %330, align 16
  store %struct.tc_u_knode* %331, %struct.tc_u_knode** %12, align 8
  %332 = load %struct.tc_u_knode*, %struct.tc_u_knode** %12, align 8
  %333 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 8
  %335 = call i8* @rcu_dereference_bh(i32 %334)
  %336 = bitcast i8* %335 to %struct.tc_u_hnode*
  store %struct.tc_u_hnode* %336, %struct.tc_u_hnode** %10, align 8
  %337 = load i32, i32* %13, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.anon, %struct.anon* %30, i64 %338
  %340 = getelementptr inbounds %struct.anon, %struct.anon* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 8
  store i32 %341, i32* %11, align 4
  br label %135

342:                                              ; preds = %322
  br label %343

343:                                              ; preds = %342, %282, %221, %101, %94
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %22, align 4
  br label %346

344:                                              ; preds = %187
  %345 = call i32 @net_warn_ratelimited(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %22, align 4
  br label %346

346:                                              ; preds = %344, %343, %175
  %347 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %347)
  %348 = load i32, i32* %4, align 4
  ret i32 %348
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @rcu_dereference_bh(i32) #2

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #2

declare dso_local i64 @tc_skip_sw(i32) #2

declare dso_local i64 @skb_headroom(%struct.sk_buff*) #2

declare dso_local i32* @skb_header_pointer(%struct.sk_buff*, i32, i32, i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @tcf_match_indev(%struct.sk_buff*, i32) #2

declare dso_local i32 @tcf_exts_exec(%struct.sk_buff*, i32*, %struct.tcf_result*) #2

declare dso_local i32 @u32_hash_fold(i32, %struct.TYPE_4__*, i32) #2

declare dso_local i32 @ntohs(i32) #2

declare dso_local i32 @net_warn_ratelimited(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
