; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_hfsc.c_hfsc_change_class.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_hfsc.c_hfsc_change_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.Qdisc = type { i64, i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.hfsc_sched = type { i32, %struct.hfsc_class }
%struct.hfsc_class = type { i32, i64, %struct.TYPE_9__*, i32, i32, %struct.TYPE_10__, i8*, i8*, %struct.hfsc_class*, %struct.hfsc_sched*, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.tc_service_curve = type { i64, i64 }

@TCA_OPTIONS = common dso_local global i64 0, align 8
@TCA_HFSC_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@hfsc_policy = common dso_local global i32 0, align 4
@TCA_HFSC_RSC = common dso_local global i64 0, align 8
@TCA_HFSC_FSC = common dso_local global i64 0, align 8
@TCA_HFSC_USC = common dso_local global i64 0, align 8
@TC_H_ROOT = common dso_local global i64 0, align 8
@TCA_RATE = common dso_local global i64 0, align 8
@HFSC_RSC = common dso_local global i32 0, align 4
@HFSC_FSC = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@pfifo_qdisc_ops = common dso_local global i32 0, align 4
@noop_qdisc = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@RB_ROOT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64, i64, %struct.nlattr**, i64*, %struct.netlink_ext_ack*)* @hfsc_change_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfsc_change_class(%struct.Qdisc* %0, i64 %1, i64 %2, %struct.nlattr** %3, i64* %4, %struct.netlink_ext_ack* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.Qdisc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.nlattr**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.netlink_ext_ack*, align 8
  %14 = alloca %struct.hfsc_sched*, align 8
  %15 = alloca %struct.hfsc_class*, align 8
  %16 = alloca %struct.hfsc_class*, align 8
  %17 = alloca %struct.nlattr*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.tc_service_curve*, align 8
  %21 = alloca %struct.tc_service_curve*, align 8
  %22 = alloca %struct.tc_service_curve*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %11, align 8
  store i64* %4, i64** %12, align 8
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %13, align 8
  %28 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %29 = call %struct.hfsc_sched* @qdisc_priv(%struct.Qdisc* %28)
  store %struct.hfsc_sched* %29, %struct.hfsc_sched** %14, align 8
  %30 = load i64*, i64** %12, align 8
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.hfsc_class*
  store %struct.hfsc_class* %32, %struct.hfsc_class** %15, align 8
  store %struct.hfsc_class* null, %struct.hfsc_class** %16, align 8
  %33 = load %struct.nlattr**, %struct.nlattr*** %11, align 8
  %34 = load i64, i64* @TCA_OPTIONS, align 8
  %35 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %33, i64 %34
  %36 = load %struct.nlattr*, %struct.nlattr** %35, align 8
  store %struct.nlattr* %36, %struct.nlattr** %17, align 8
  %37 = load i32, i32* @TCA_HFSC_MAX, align 4
  %38 = add nsw i32 %37, 1
  %39 = zext i32 %38 to i64
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %18, align 8
  %41 = alloca %struct.nlattr*, i64 %39, align 16
  store i64 %39, i64* %19, align 8
  store %struct.tc_service_curve* null, %struct.tc_service_curve** %20, align 8
  store %struct.tc_service_curve* null, %struct.tc_service_curve** %21, align 8
  store %struct.tc_service_curve* null, %struct.tc_service_curve** %22, align 8
  %42 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %43 = icmp eq %struct.nlattr* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %6
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %7, align 4
  store i32 1, i32* %25, align 4
  br label %463

47:                                               ; preds = %6
  %48 = load i32, i32* @TCA_HFSC_MAX, align 4
  %49 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %50 = load i32, i32* @hfsc_policy, align 4
  %51 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %41, i32 %48, %struct.nlattr* %49, i32 %50, i32* null)
  store i32 %51, i32* %24, align 4
  %52 = load i32, i32* %24, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* %24, align 4
  store i32 %55, i32* %7, align 4
  store i32 1, i32* %25, align 4
  br label %463

56:                                               ; preds = %47
  %57 = load i64, i64* @TCA_HFSC_RSC, align 8
  %58 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %41, i64 %57
  %59 = load %struct.nlattr*, %struct.nlattr** %58, align 8
  %60 = icmp ne %struct.nlattr* %59, null
  br i1 %60, label %61, label %77

61:                                               ; preds = %56
  %62 = load i64, i64* @TCA_HFSC_RSC, align 8
  %63 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %41, i64 %62
  %64 = load %struct.nlattr*, %struct.nlattr** %63, align 8
  %65 = call %struct.tc_service_curve* @nla_data(%struct.nlattr* %64)
  store %struct.tc_service_curve* %65, %struct.tc_service_curve** %20, align 8
  %66 = load %struct.tc_service_curve*, %struct.tc_service_curve** %20, align 8
  %67 = getelementptr inbounds %struct.tc_service_curve, %struct.tc_service_curve* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %61
  %71 = load %struct.tc_service_curve*, %struct.tc_service_curve** %20, align 8
  %72 = getelementptr inbounds %struct.tc_service_curve, %struct.tc_service_curve* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  store %struct.tc_service_curve* null, %struct.tc_service_curve** %20, align 8
  br label %76

76:                                               ; preds = %75, %70, %61
  br label %77

77:                                               ; preds = %76, %56
  %78 = load i64, i64* @TCA_HFSC_FSC, align 8
  %79 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %41, i64 %78
  %80 = load %struct.nlattr*, %struct.nlattr** %79, align 8
  %81 = icmp ne %struct.nlattr* %80, null
  br i1 %81, label %82, label %98

82:                                               ; preds = %77
  %83 = load i64, i64* @TCA_HFSC_FSC, align 8
  %84 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %41, i64 %83
  %85 = load %struct.nlattr*, %struct.nlattr** %84, align 8
  %86 = call %struct.tc_service_curve* @nla_data(%struct.nlattr* %85)
  store %struct.tc_service_curve* %86, %struct.tc_service_curve** %21, align 8
  %87 = load %struct.tc_service_curve*, %struct.tc_service_curve** %21, align 8
  %88 = getelementptr inbounds %struct.tc_service_curve, %struct.tc_service_curve* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %82
  %92 = load %struct.tc_service_curve*, %struct.tc_service_curve** %21, align 8
  %93 = getelementptr inbounds %struct.tc_service_curve, %struct.tc_service_curve* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  store %struct.tc_service_curve* null, %struct.tc_service_curve** %21, align 8
  br label %97

97:                                               ; preds = %96, %91, %82
  br label %98

98:                                               ; preds = %97, %77
  %99 = load i64, i64* @TCA_HFSC_USC, align 8
  %100 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %41, i64 %99
  %101 = load %struct.nlattr*, %struct.nlattr** %100, align 8
  %102 = icmp ne %struct.nlattr* %101, null
  br i1 %102, label %103, label %119

103:                                              ; preds = %98
  %104 = load i64, i64* @TCA_HFSC_USC, align 8
  %105 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %41, i64 %104
  %106 = load %struct.nlattr*, %struct.nlattr** %105, align 8
  %107 = call %struct.tc_service_curve* @nla_data(%struct.nlattr* %106)
  store %struct.tc_service_curve* %107, %struct.tc_service_curve** %22, align 8
  %108 = load %struct.tc_service_curve*, %struct.tc_service_curve** %22, align 8
  %109 = getelementptr inbounds %struct.tc_service_curve, %struct.tc_service_curve* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %103
  %113 = load %struct.tc_service_curve*, %struct.tc_service_curve** %22, align 8
  %114 = getelementptr inbounds %struct.tc_service_curve, %struct.tc_service_curve* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  store %struct.tc_service_curve* null, %struct.tc_service_curve** %22, align 8
  br label %118

118:                                              ; preds = %117, %112, %103
  br label %119

119:                                              ; preds = %118, %98
  %120 = load %struct.hfsc_class*, %struct.hfsc_class** %15, align 8
  %121 = icmp ne %struct.hfsc_class* %120, null
  br i1 %121, label %122, label %265

122:                                              ; preds = %119
  %123 = load i64, i64* %10, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %155

125:                                              ; preds = %122
  %126 = load %struct.hfsc_class*, %struct.hfsc_class** %15, align 8
  %127 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %126, i32 0, i32 8
  %128 = load %struct.hfsc_class*, %struct.hfsc_class** %127, align 8
  %129 = icmp ne %struct.hfsc_class* %128, null
  br i1 %129, label %130, label %142

130:                                              ; preds = %125
  %131 = load %struct.hfsc_class*, %struct.hfsc_class** %15, align 8
  %132 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %131, i32 0, i32 8
  %133 = load %struct.hfsc_class*, %struct.hfsc_class** %132, align 8
  %134 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %133, i32 0, i32 5
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* %10, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %130
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %7, align 4
  store i32 1, i32* %25, align 4
  br label %463

142:                                              ; preds = %130, %125
  %143 = load %struct.hfsc_class*, %struct.hfsc_class** %15, align 8
  %144 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %143, i32 0, i32 8
  %145 = load %struct.hfsc_class*, %struct.hfsc_class** %144, align 8
  %146 = icmp eq %struct.hfsc_class* %145, null
  br i1 %146, label %147, label %154

147:                                              ; preds = %142
  %148 = load i64, i64* %10, align 8
  %149 = load i64, i64* @TC_H_ROOT, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load i32, i32* @EINVAL, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %7, align 4
  store i32 1, i32* %25, align 4
  br label %463

154:                                              ; preds = %147, %142
  br label %155

155:                                              ; preds = %154, %122
  %156 = call i32 (...) @psched_get_time()
  store i32 %156, i32* %23, align 4
  %157 = load %struct.nlattr**, %struct.nlattr*** %11, align 8
  %158 = load i64, i64* @TCA_RATE, align 8
  %159 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %157, i64 %158
  %160 = load %struct.nlattr*, %struct.nlattr** %159, align 8
  %161 = icmp ne %struct.nlattr* %160, null
  br i1 %161, label %162, label %179

162:                                              ; preds = %155
  %163 = load %struct.hfsc_class*, %struct.hfsc_class** %15, align 8
  %164 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %163, i32 0, i32 12
  %165 = load %struct.hfsc_class*, %struct.hfsc_class** %15, align 8
  %166 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %165, i32 0, i32 11
  %167 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %168 = call i32 @qdisc_root_sleeping_running(%struct.Qdisc* %167)
  %169 = load %struct.nlattr**, %struct.nlattr*** %11, align 8
  %170 = load i64, i64* @TCA_RATE, align 8
  %171 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %169, i64 %170
  %172 = load %struct.nlattr*, %struct.nlattr** %171, align 8
  %173 = call i32 @gen_replace_estimator(i32* %164, i32* null, i32* %166, i32* null, i32 %168, %struct.nlattr* %172)
  store i32 %173, i32* %24, align 4
  %174 = load i32, i32* %24, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %162
  %177 = load i32, i32* %24, align 4
  store i32 %177, i32* %7, align 4
  store i32 1, i32* %25, align 4
  br label %463

178:                                              ; preds = %162
  br label %179

179:                                              ; preds = %178, %155
  %180 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %181 = call i32 @sch_tree_lock(%struct.Qdisc* %180)
  %182 = load %struct.hfsc_class*, %struct.hfsc_class** %15, align 8
  %183 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  store i32 %184, i32* %26, align 4
  %185 = load %struct.tc_service_curve*, %struct.tc_service_curve** %20, align 8
  %186 = icmp ne %struct.tc_service_curve* %185, null
  br i1 %186, label %187, label %192

187:                                              ; preds = %179
  %188 = load %struct.hfsc_class*, %struct.hfsc_class** %15, align 8
  %189 = load %struct.tc_service_curve*, %struct.tc_service_curve** %20, align 8
  %190 = load i32, i32* %23, align 4
  %191 = call i32 @hfsc_change_rsc(%struct.hfsc_class* %188, %struct.tc_service_curve* %189, i32 %190)
  br label %192

192:                                              ; preds = %187, %179
  %193 = load %struct.tc_service_curve*, %struct.tc_service_curve** %21, align 8
  %194 = icmp ne %struct.tc_service_curve* %193, null
  br i1 %194, label %195, label %199

195:                                              ; preds = %192
  %196 = load %struct.hfsc_class*, %struct.hfsc_class** %15, align 8
  %197 = load %struct.tc_service_curve*, %struct.tc_service_curve** %21, align 8
  %198 = call i32 @hfsc_change_fsc(%struct.hfsc_class* %196, %struct.tc_service_curve* %197)
  br label %199

199:                                              ; preds = %195, %192
  %200 = load %struct.tc_service_curve*, %struct.tc_service_curve** %22, align 8
  %201 = icmp ne %struct.tc_service_curve* %200, null
  br i1 %201, label %202, label %207

202:                                              ; preds = %199
  %203 = load %struct.hfsc_class*, %struct.hfsc_class** %15, align 8
  %204 = load %struct.tc_service_curve*, %struct.tc_service_curve** %22, align 8
  %205 = load i32, i32* %23, align 4
  %206 = call i32 @hfsc_change_usc(%struct.hfsc_class* %203, %struct.tc_service_curve* %204, i32 %205)
  br label %207

207:                                              ; preds = %202, %199
  %208 = load %struct.hfsc_class*, %struct.hfsc_class** %15, align 8
  %209 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %208, i32 0, i32 2
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %262

215:                                              ; preds = %207
  %216 = load %struct.hfsc_class*, %struct.hfsc_class** %15, align 8
  %217 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %216, i32 0, i32 2
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %217, align 8
  %219 = call i32 @qdisc_peek_len(%struct.TYPE_9__* %218)
  store i32 %219, i32* %27, align 4
  %220 = load %struct.hfsc_class*, %struct.hfsc_class** %15, align 8
  %221 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @HFSC_RSC, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %240

226:                                              ; preds = %215
  %227 = load i32, i32* %26, align 4
  %228 = load i32, i32* @HFSC_RSC, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %226
  %232 = load %struct.hfsc_class*, %struct.hfsc_class** %15, align 8
  %233 = load i32, i32* %27, align 4
  %234 = call i32 @update_ed(%struct.hfsc_class* %232, i32 %233)
  br label %239

235:                                              ; preds = %226
  %236 = load %struct.hfsc_class*, %struct.hfsc_class** %15, align 8
  %237 = load i32, i32* %27, align 4
  %238 = call i32 @init_ed(%struct.hfsc_class* %236, i32 %237)
  br label %239

239:                                              ; preds = %235, %231
  br label %240

240:                                              ; preds = %239, %215
  %241 = load %struct.hfsc_class*, %struct.hfsc_class** %15, align 8
  %242 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @HFSC_FSC, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %261

247:                                              ; preds = %240
  %248 = load i32, i32* %26, align 4
  %249 = load i32, i32* @HFSC_FSC, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %256

252:                                              ; preds = %247
  %253 = load %struct.hfsc_class*, %struct.hfsc_class** %15, align 8
  %254 = load i32, i32* %23, align 4
  %255 = call i32 @update_vf(%struct.hfsc_class* %253, i32 0, i32 %254)
  br label %260

256:                                              ; preds = %247
  %257 = load %struct.hfsc_class*, %struct.hfsc_class** %15, align 8
  %258 = load i32, i32* %27, align 4
  %259 = call i32 @init_vf(%struct.hfsc_class* %257, i32 %258)
  br label %260

260:                                              ; preds = %256, %252
  br label %261

261:                                              ; preds = %260, %240
  br label %262

262:                                              ; preds = %261, %207
  %263 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %264 = call i32 @sch_tree_unlock(%struct.Qdisc* %263)
  store i32 0, i32* %7, align 4
  store i32 1, i32* %25, align 4
  br label %463

265:                                              ; preds = %119
  %266 = load i64, i64* %10, align 8
  %267 = load i64, i64* @TC_H_ROOT, align 8
  %268 = icmp eq i64 %266, %267
  br i1 %268, label %269, label %272

269:                                              ; preds = %265
  %270 = load i32, i32* @EEXIST, align 4
  %271 = sub nsw i32 0, %270
  store i32 %271, i32* %7, align 4
  store i32 1, i32* %25, align 4
  br label %463

272:                                              ; preds = %265
  %273 = load %struct.hfsc_sched*, %struct.hfsc_sched** %14, align 8
  %274 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %273, i32 0, i32 1
  store %struct.hfsc_class* %274, %struct.hfsc_class** %16, align 8
  %275 = load i64, i64* %10, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %287

277:                                              ; preds = %272
  %278 = load i64, i64* %10, align 8
  %279 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %280 = call %struct.hfsc_class* @hfsc_find_class(i64 %278, %struct.Qdisc* %279)
  store %struct.hfsc_class* %280, %struct.hfsc_class** %16, align 8
  %281 = load %struct.hfsc_class*, %struct.hfsc_class** %16, align 8
  %282 = icmp eq %struct.hfsc_class* %281, null
  br i1 %282, label %283, label %286

283:                                              ; preds = %277
  %284 = load i32, i32* @ENOENT, align 4
  %285 = sub nsw i32 0, %284
  store i32 %285, i32* %7, align 4
  store i32 1, i32* %25, align 4
  br label %463

286:                                              ; preds = %277
  br label %287

287:                                              ; preds = %286, %272
  %288 = load i64, i64* %9, align 8
  %289 = icmp eq i64 %288, 0
  br i1 %289, label %298, label %290

290:                                              ; preds = %287
  %291 = load i64, i64* %9, align 8
  %292 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %293 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = xor i64 %291, %294
  %296 = call i64 @TC_H_MAJ(i64 %295)
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %301

298:                                              ; preds = %290, %287
  %299 = load i32, i32* @EINVAL, align 4
  %300 = sub nsw i32 0, %299
  store i32 %300, i32* %7, align 4
  store i32 1, i32* %25, align 4
  br label %463

301:                                              ; preds = %290
  %302 = load i64, i64* %9, align 8
  %303 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %304 = call %struct.hfsc_class* @hfsc_find_class(i64 %302, %struct.Qdisc* %303)
  %305 = icmp ne %struct.hfsc_class* %304, null
  br i1 %305, label %306, label %309

306:                                              ; preds = %301
  %307 = load i32, i32* @EEXIST, align 4
  %308 = sub nsw i32 0, %307
  store i32 %308, i32* %7, align 4
  store i32 1, i32* %25, align 4
  br label %463

309:                                              ; preds = %301
  %310 = load %struct.tc_service_curve*, %struct.tc_service_curve** %20, align 8
  %311 = icmp eq %struct.tc_service_curve* %310, null
  br i1 %311, label %312, label %318

312:                                              ; preds = %309
  %313 = load %struct.tc_service_curve*, %struct.tc_service_curve** %21, align 8
  %314 = icmp eq %struct.tc_service_curve* %313, null
  br i1 %314, label %315, label %318

315:                                              ; preds = %312
  %316 = load i32, i32* @EINVAL, align 4
  %317 = sub nsw i32 0, %316
  store i32 %317, i32* %7, align 4
  store i32 1, i32* %25, align 4
  br label %463

318:                                              ; preds = %312, %309
  %319 = load i32, i32* @GFP_KERNEL, align 4
  %320 = call %struct.hfsc_class* @kzalloc(i32 88, i32 %319)
  store %struct.hfsc_class* %320, %struct.hfsc_class** %15, align 8
  %321 = load %struct.hfsc_class*, %struct.hfsc_class** %15, align 8
  %322 = icmp eq %struct.hfsc_class* %321, null
  br i1 %322, label %323, label %326

323:                                              ; preds = %318
  %324 = load i32, i32* @ENOBUFS, align 4
  %325 = sub nsw i32 0, %324
  store i32 %325, i32* %7, align 4
  store i32 1, i32* %25, align 4
  br label %463

326:                                              ; preds = %318
  %327 = load %struct.hfsc_class*, %struct.hfsc_class** %15, align 8
  %328 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %327, i32 0, i32 10
  %329 = load %struct.hfsc_class*, %struct.hfsc_class** %15, align 8
  %330 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %329, i32 0, i32 13
  %331 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %332 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %333 = call i32 @tcf_block_get(i32* %328, i32* %330, %struct.Qdisc* %331, %struct.netlink_ext_ack* %332)
  store i32 %333, i32* %24, align 4
  %334 = load i32, i32* %24, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %340

336:                                              ; preds = %326
  %337 = load %struct.hfsc_class*, %struct.hfsc_class** %15, align 8
  %338 = call i32 @kfree(%struct.hfsc_class* %337)
  %339 = load i32, i32* %24, align 4
  store i32 %339, i32* %7, align 4
  store i32 1, i32* %25, align 4
  br label %463

340:                                              ; preds = %326
  %341 = load %struct.nlattr**, %struct.nlattr*** %11, align 8
  %342 = load i64, i64* @TCA_RATE, align 8
  %343 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %341, i64 %342
  %344 = load %struct.nlattr*, %struct.nlattr** %343, align 8
  %345 = icmp ne %struct.nlattr* %344, null
  br i1 %345, label %346, label %369

346:                                              ; preds = %340
  %347 = load %struct.hfsc_class*, %struct.hfsc_class** %15, align 8
  %348 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %347, i32 0, i32 12
  %349 = load %struct.hfsc_class*, %struct.hfsc_class** %15, align 8
  %350 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %349, i32 0, i32 11
  %351 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %352 = call i32 @qdisc_root_sleeping_running(%struct.Qdisc* %351)
  %353 = load %struct.nlattr**, %struct.nlattr*** %11, align 8
  %354 = load i64, i64* @TCA_RATE, align 8
  %355 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %353, i64 %354
  %356 = load %struct.nlattr*, %struct.nlattr** %355, align 8
  %357 = call i32 @gen_new_estimator(i32* %348, i32* null, i32* %350, i32* null, i32 %352, %struct.nlattr* %356)
  store i32 %357, i32* %24, align 4
  %358 = load i32, i32* %24, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %368

360:                                              ; preds = %346
  %361 = load %struct.hfsc_class*, %struct.hfsc_class** %15, align 8
  %362 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %361, i32 0, i32 10
  %363 = load i32, i32* %362, align 8
  %364 = call i32 @tcf_block_put(i32 %363)
  %365 = load %struct.hfsc_class*, %struct.hfsc_class** %15, align 8
  %366 = call i32 @kfree(%struct.hfsc_class* %365)
  %367 = load i32, i32* %24, align 4
  store i32 %367, i32* %7, align 4
  store i32 1, i32* %25, align 4
  br label %463

368:                                              ; preds = %346
  br label %369

369:                                              ; preds = %368, %340
  %370 = load %struct.tc_service_curve*, %struct.tc_service_curve** %20, align 8
  %371 = icmp ne %struct.tc_service_curve* %370, null
  br i1 %371, label %372, label %376

372:                                              ; preds = %369
  %373 = load %struct.hfsc_class*, %struct.hfsc_class** %15, align 8
  %374 = load %struct.tc_service_curve*, %struct.tc_service_curve** %20, align 8
  %375 = call i32 @hfsc_change_rsc(%struct.hfsc_class* %373, %struct.tc_service_curve* %374, i32 0)
  br label %376

376:                                              ; preds = %372, %369
  %377 = load %struct.tc_service_curve*, %struct.tc_service_curve** %21, align 8
  %378 = icmp ne %struct.tc_service_curve* %377, null
  br i1 %378, label %379, label %383

379:                                              ; preds = %376
  %380 = load %struct.hfsc_class*, %struct.hfsc_class** %15, align 8
  %381 = load %struct.tc_service_curve*, %struct.tc_service_curve** %21, align 8
  %382 = call i32 @hfsc_change_fsc(%struct.hfsc_class* %380, %struct.tc_service_curve* %381)
  br label %383

383:                                              ; preds = %379, %376
  %384 = load %struct.tc_service_curve*, %struct.tc_service_curve** %22, align 8
  %385 = icmp ne %struct.tc_service_curve* %384, null
  br i1 %385, label %386, label %390

386:                                              ; preds = %383
  %387 = load %struct.hfsc_class*, %struct.hfsc_class** %15, align 8
  %388 = load %struct.tc_service_curve*, %struct.tc_service_curve** %22, align 8
  %389 = call i32 @hfsc_change_usc(%struct.hfsc_class* %387, %struct.tc_service_curve* %388, i32 0)
  br label %390

390:                                              ; preds = %386, %383
  %391 = load i64, i64* %9, align 8
  %392 = load %struct.hfsc_class*, %struct.hfsc_class** %15, align 8
  %393 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %392, i32 0, i32 5
  %394 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %393, i32 0, i32 0
  store i64 %391, i64* %394, align 8
  %395 = load %struct.hfsc_sched*, %struct.hfsc_sched** %14, align 8
  %396 = load %struct.hfsc_class*, %struct.hfsc_class** %15, align 8
  %397 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %396, i32 0, i32 9
  store %struct.hfsc_sched* %395, %struct.hfsc_sched** %397, align 8
  %398 = load %struct.hfsc_class*, %struct.hfsc_class** %16, align 8
  %399 = load %struct.hfsc_class*, %struct.hfsc_class** %15, align 8
  %400 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %399, i32 0, i32 8
  store %struct.hfsc_class* %398, %struct.hfsc_class** %400, align 8
  %401 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %402 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %401, i32 0, i32 1
  %403 = load i32, i32* %402, align 8
  %404 = load i64, i64* %9, align 8
  %405 = call %struct.TYPE_9__* @qdisc_create_dflt(i32 %403, i32* @pfifo_qdisc_ops, i64 %404, i32* null)
  %406 = load %struct.hfsc_class*, %struct.hfsc_class** %15, align 8
  %407 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %406, i32 0, i32 2
  store %struct.TYPE_9__* %405, %struct.TYPE_9__** %407, align 8
  %408 = load %struct.hfsc_class*, %struct.hfsc_class** %15, align 8
  %409 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %408, i32 0, i32 2
  %410 = load %struct.TYPE_9__*, %struct.TYPE_9__** %409, align 8
  %411 = icmp eq %struct.TYPE_9__* %410, null
  br i1 %411, label %412, label %415

412:                                              ; preds = %390
  %413 = load %struct.hfsc_class*, %struct.hfsc_class** %15, align 8
  %414 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %413, i32 0, i32 2
  store %struct.TYPE_9__* @noop_qdisc, %struct.TYPE_9__** %414, align 8
  br label %420

415:                                              ; preds = %390
  %416 = load %struct.hfsc_class*, %struct.hfsc_class** %15, align 8
  %417 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %416, i32 0, i32 2
  %418 = load %struct.TYPE_9__*, %struct.TYPE_9__** %417, align 8
  %419 = call i32 @qdisc_hash_add(%struct.TYPE_9__* %418, i32 1)
  br label %420

420:                                              ; preds = %415, %412
  %421 = load %struct.hfsc_class*, %struct.hfsc_class** %15, align 8
  %422 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %421, i32 0, i32 3
  %423 = call i32 @INIT_LIST_HEAD(i32* %422)
  %424 = load i8*, i8** @RB_ROOT, align 8
  %425 = load %struct.hfsc_class*, %struct.hfsc_class** %15, align 8
  %426 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %425, i32 0, i32 7
  store i8* %424, i8** %426, align 8
  %427 = load i8*, i8** @RB_ROOT, align 8
  %428 = load %struct.hfsc_class*, %struct.hfsc_class** %15, align 8
  %429 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %428, i32 0, i32 6
  store i8* %427, i8** %429, align 8
  %430 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %431 = call i32 @sch_tree_lock(%struct.Qdisc* %430)
  %432 = load %struct.hfsc_sched*, %struct.hfsc_sched** %14, align 8
  %433 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %432, i32 0, i32 0
  %434 = load %struct.hfsc_class*, %struct.hfsc_class** %15, align 8
  %435 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %434, i32 0, i32 5
  %436 = call i32 @qdisc_class_hash_insert(i32* %433, %struct.TYPE_10__* %435)
  %437 = load %struct.hfsc_class*, %struct.hfsc_class** %15, align 8
  %438 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %437, i32 0, i32 4
  %439 = load %struct.hfsc_class*, %struct.hfsc_class** %16, align 8
  %440 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %439, i32 0, i32 3
  %441 = call i32 @list_add_tail(i32* %438, i32* %440)
  %442 = load %struct.hfsc_class*, %struct.hfsc_class** %16, align 8
  %443 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %442, i32 0, i32 1
  %444 = load i64, i64* %443, align 8
  %445 = icmp eq i64 %444, 0
  br i1 %445, label %446, label %451

446:                                              ; preds = %420
  %447 = load %struct.hfsc_class*, %struct.hfsc_class** %16, align 8
  %448 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %447, i32 0, i32 2
  %449 = load %struct.TYPE_9__*, %struct.TYPE_9__** %448, align 8
  %450 = call i32 @qdisc_purge_queue(%struct.TYPE_9__* %449)
  br label %451

451:                                              ; preds = %446, %420
  %452 = load %struct.hfsc_class*, %struct.hfsc_class** %16, align 8
  %453 = call i32 @hfsc_adjust_levels(%struct.hfsc_class* %452)
  %454 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %455 = call i32 @sch_tree_unlock(%struct.Qdisc* %454)
  %456 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %457 = load %struct.hfsc_sched*, %struct.hfsc_sched** %14, align 8
  %458 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %457, i32 0, i32 0
  %459 = call i32 @qdisc_class_hash_grow(%struct.Qdisc* %456, i32* %458)
  %460 = load %struct.hfsc_class*, %struct.hfsc_class** %15, align 8
  %461 = ptrtoint %struct.hfsc_class* %460 to i64
  %462 = load i64*, i64** %12, align 8
  store i64 %461, i64* %462, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %25, align 4
  br label %463

463:                                              ; preds = %451, %360, %336, %323, %315, %306, %298, %283, %269, %262, %176, %151, %139, %54, %44
  %464 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %464)
  %465 = load i32, i32* %7, align 4
  ret i32 %465
}

declare dso_local %struct.hfsc_sched* @qdisc_priv(%struct.Qdisc*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #1

declare dso_local %struct.tc_service_curve* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @psched_get_time(...) #1

declare dso_local i32 @gen_replace_estimator(i32*, i32*, i32*, i32*, i32, %struct.nlattr*) #1

declare dso_local i32 @qdisc_root_sleeping_running(%struct.Qdisc*) #1

declare dso_local i32 @sch_tree_lock(%struct.Qdisc*) #1

declare dso_local i32 @hfsc_change_rsc(%struct.hfsc_class*, %struct.tc_service_curve*, i32) #1

declare dso_local i32 @hfsc_change_fsc(%struct.hfsc_class*, %struct.tc_service_curve*) #1

declare dso_local i32 @hfsc_change_usc(%struct.hfsc_class*, %struct.tc_service_curve*, i32) #1

declare dso_local i32 @qdisc_peek_len(%struct.TYPE_9__*) #1

declare dso_local i32 @update_ed(%struct.hfsc_class*, i32) #1

declare dso_local i32 @init_ed(%struct.hfsc_class*, i32) #1

declare dso_local i32 @update_vf(%struct.hfsc_class*, i32, i32) #1

declare dso_local i32 @init_vf(%struct.hfsc_class*, i32) #1

declare dso_local i32 @sch_tree_unlock(%struct.Qdisc*) #1

declare dso_local %struct.hfsc_class* @hfsc_find_class(i64, %struct.Qdisc*) #1

declare dso_local i64 @TC_H_MAJ(i64) #1

declare dso_local %struct.hfsc_class* @kzalloc(i32, i32) #1

declare dso_local i32 @tcf_block_get(i32*, i32*, %struct.Qdisc*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @kfree(%struct.hfsc_class*) #1

declare dso_local i32 @gen_new_estimator(i32*, i32*, i32*, i32*, i32, %struct.nlattr*) #1

declare dso_local i32 @tcf_block_put(i32) #1

declare dso_local %struct.TYPE_9__* @qdisc_create_dflt(i32, i32*, i64, i32*) #1

declare dso_local i32 @qdisc_hash_add(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @qdisc_class_hash_insert(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @qdisc_purge_queue(%struct.TYPE_9__*) #1

declare dso_local i32 @hfsc_adjust_levels(%struct.hfsc_class*) #1

declare dso_local i32 @qdisc_class_hash_grow(%struct.Qdisc*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
