; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cbq.c_cbq_change_class.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cbq.c_cbq_change_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.Qdisc = type { i32, i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.cbq_sched_data = type { i32, i32, %struct.cbq_class }
%struct.cbq_class = type { i32, i64, i64, i64, %struct.cbq_class*, %struct.cbq_class*, %struct.cbq_class*, %struct.qdisc_rate_table*, i32, i32, i32, %struct.Qdisc*, %struct.TYPE_8__, %struct.TYPE_10__*, i32, i32, i32, i32, i32* }
%struct.qdisc_rate_table = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@TCA_OPTIONS = common dso_local global i64 0, align 8
@TCA_CBQ_MAX = common dso_local global i32 0, align 4
@TCA_CBQ_OVL_STRATEGY = common dso_local global i64 0, align 8
@TCA_CBQ_POLICE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [89 x i8] c"Neither overlimit strategy nor policing attributes can be used for changing class params\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Invalid parent id\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TC_H_ROOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Parent must be root\00", align 1
@TCA_CBQ_RATE = common dso_local global i64 0, align 8
@TCA_CBQ_RTAB = common dso_local global i64 0, align 8
@TCA_RATE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"Failed to replace specified rate estimator\00", align 1
@TCA_CBQ_LSSOPT = common dso_local global i64 0, align 8
@TCA_CBQ_WRROPT = common dso_local global i64 0, align 8
@TCA_CBQ_FOPT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [77 x i8] c"One of the following attributes MUST be specified: WRR, rate or link sharing\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Specified class not found\00", align 1
@ENOSR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"Unable to generate classid\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Failed to find parentid\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"Couldn't create new estimator\00", align 1
@pfifo_qdisc_ops = common dso_local global i32 0, align 4
@noop_qdisc = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i32, i32, %struct.nlattr**, i64*, %struct.netlink_ext_ack*)* @cbq_change_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbq_change_class(%struct.Qdisc* %0, i32 %1, i32 %2, %struct.nlattr** %3, i64* %4, %struct.netlink_ext_ack* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.Qdisc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nlattr**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.netlink_ext_ack*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.cbq_sched_data*, align 8
  %16 = alloca %struct.cbq_class*, align 8
  %17 = alloca %struct.nlattr*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.cbq_class*, align 8
  %21 = alloca %struct.qdisc_rate_table*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.nlattr** %3, %struct.nlattr*** %11, align 8
  store i64* %4, i64** %12, align 8
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %13, align 8
  %24 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %25 = call %struct.cbq_sched_data* @qdisc_priv(%struct.Qdisc* %24)
  store %struct.cbq_sched_data* %25, %struct.cbq_sched_data** %15, align 8
  %26 = load i64*, i64** %12, align 8
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.cbq_class*
  store %struct.cbq_class* %28, %struct.cbq_class** %16, align 8
  %29 = load %struct.nlattr**, %struct.nlattr*** %11, align 8
  %30 = load i64, i64* @TCA_OPTIONS, align 8
  %31 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %29, i64 %30
  %32 = load %struct.nlattr*, %struct.nlattr** %31, align 8
  store %struct.nlattr* %32, %struct.nlattr** %17, align 8
  %33 = load i32, i32* @TCA_CBQ_MAX, align 4
  %34 = add nsw i32 %33, 1
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %18, align 8
  %37 = alloca %struct.nlattr*, i64 %35, align 16
  store i64 %35, i64* %19, align 8
  store %struct.qdisc_rate_table* null, %struct.qdisc_rate_table** %21, align 8
  %38 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %39 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %40 = call i32 @cbq_opt_parse(%struct.nlattr** %37, %struct.nlattr* %38, %struct.netlink_ext_ack* %39)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %6
  %44 = load i32, i32* %14, align 4
  store i32 %44, i32* %7, align 4
  store i32 1, i32* %22, align 4
  br label %551

45:                                               ; preds = %6
  %46 = load i64, i64* @TCA_CBQ_OVL_STRATEGY, align 8
  %47 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %46
  %48 = load %struct.nlattr*, %struct.nlattr** %47, align 8
  %49 = icmp ne %struct.nlattr* %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = load i64, i64* @TCA_CBQ_POLICE, align 8
  %52 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %51
  %53 = load %struct.nlattr*, %struct.nlattr** %52, align 8
  %54 = icmp ne %struct.nlattr* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %50, %45
  %56 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %57 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %56, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* @EOPNOTSUPP, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %7, align 4
  store i32 1, i32* %22, align 4
  br label %551

60:                                               ; preds = %50
  %61 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %62 = icmp ne %struct.cbq_class* %61, null
  br i1 %62, label %63, label %222

63:                                               ; preds = %60
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %100

66:                                               ; preds = %63
  %67 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %68 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %67, i32 0, i32 4
  %69 = load %struct.cbq_class*, %struct.cbq_class** %68, align 8
  %70 = icmp ne %struct.cbq_class* %69, null
  br i1 %70, label %71, label %85

71:                                               ; preds = %66
  %72 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %73 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %72, i32 0, i32 4
  %74 = load %struct.cbq_class*, %struct.cbq_class** %73, align 8
  %75 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %74, i32 0, i32 12
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %71
  %81 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %82 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %81, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %7, align 4
  store i32 1, i32* %22, align 4
  br label %551

85:                                               ; preds = %71, %66
  %86 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %87 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %86, i32 0, i32 4
  %88 = load %struct.cbq_class*, %struct.cbq_class** %87, align 8
  %89 = icmp ne %struct.cbq_class* %88, null
  br i1 %89, label %99, label %90

90:                                               ; preds = %85
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @TC_H_ROOT, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %96 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %95, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %7, align 4
  store i32 1, i32* %22, align 4
  br label %551

99:                                               ; preds = %90, %85
  br label %100

100:                                              ; preds = %99, %63
  %101 = load i64, i64* @TCA_CBQ_RATE, align 8
  %102 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %101
  %103 = load %struct.nlattr*, %struct.nlattr** %102, align 8
  %104 = icmp ne %struct.nlattr* %103, null
  br i1 %104, label %105, label %121

105:                                              ; preds = %100
  %106 = load i64, i64* @TCA_CBQ_RATE, align 8
  %107 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %106
  %108 = load %struct.nlattr*, %struct.nlattr** %107, align 8
  %109 = call i32 @nla_data(%struct.nlattr* %108)
  %110 = load i64, i64* @TCA_CBQ_RTAB, align 8
  %111 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %110
  %112 = load %struct.nlattr*, %struct.nlattr** %111, align 8
  %113 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %114 = call %struct.qdisc_rate_table* @qdisc_get_rtab(i32 %109, %struct.nlattr* %112, %struct.netlink_ext_ack* %113)
  store %struct.qdisc_rate_table* %114, %struct.qdisc_rate_table** %21, align 8
  %115 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %21, align 8
  %116 = icmp eq %struct.qdisc_rate_table* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %105
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %7, align 4
  store i32 1, i32* %22, align 4
  br label %551

120:                                              ; preds = %105
  br label %121

121:                                              ; preds = %120, %100
  %122 = load %struct.nlattr**, %struct.nlattr*** %11, align 8
  %123 = load i64, i64* @TCA_RATE, align 8
  %124 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %122, i64 %123
  %125 = load %struct.nlattr*, %struct.nlattr** %124, align 8
  %126 = icmp ne %struct.nlattr* %125, null
  br i1 %126, label %127, label %148

127:                                              ; preds = %121
  %128 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %129 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %128, i32 0, i32 16
  %130 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %131 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %130, i32 0, i32 15
  %132 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %133 = call i32 @qdisc_root_sleeping_running(%struct.Qdisc* %132)
  %134 = load %struct.nlattr**, %struct.nlattr*** %11, align 8
  %135 = load i64, i64* @TCA_RATE, align 8
  %136 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %134, i64 %135
  %137 = load %struct.nlattr*, %struct.nlattr** %136, align 8
  %138 = call i32 @gen_replace_estimator(i32* %129, i32* null, i32* %131, i32* null, i32 %133, %struct.nlattr* %137)
  store i32 %138, i32* %14, align 4
  %139 = load i32, i32* %14, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %127
  %142 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %143 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %142, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %144 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %21, align 8
  %145 = call i32 @qdisc_put_rtab(%struct.qdisc_rate_table* %144)
  %146 = load i32, i32* %14, align 4
  store i32 %146, i32* %7, align 4
  store i32 1, i32* %22, align 4
  br label %551

147:                                              ; preds = %127
  br label %148

148:                                              ; preds = %147, %121
  %149 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %150 = call i32 @sch_tree_lock(%struct.Qdisc* %149)
  %151 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %152 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %151, i32 0, i32 18
  %153 = load i32*, i32** %152, align 8
  %154 = icmp ne i32* %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %148
  %156 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %157 = call i32 @cbq_deactivate_class(%struct.cbq_class* %156)
  br label %158

158:                                              ; preds = %155, %148
  %159 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %21, align 8
  %160 = icmp ne %struct.qdisc_rate_table* %159, null
  br i1 %160, label %161, label %169

161:                                              ; preds = %158
  %162 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %163 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %162, i32 0, i32 7
  %164 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %163, align 8
  %165 = call i32 @qdisc_put_rtab(%struct.qdisc_rate_table* %164)
  %166 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %21, align 8
  %167 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %168 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %167, i32 0, i32 7
  store %struct.qdisc_rate_table* %166, %struct.qdisc_rate_table** %168, align 8
  br label %169

169:                                              ; preds = %161, %158
  %170 = load i64, i64* @TCA_CBQ_LSSOPT, align 8
  %171 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %170
  %172 = load %struct.nlattr*, %struct.nlattr** %171, align 8
  %173 = icmp ne %struct.nlattr* %172, null
  br i1 %173, label %174, label %181

174:                                              ; preds = %169
  %175 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %176 = load i64, i64* @TCA_CBQ_LSSOPT, align 8
  %177 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %176
  %178 = load %struct.nlattr*, %struct.nlattr** %177, align 8
  %179 = call i32 @nla_data(%struct.nlattr* %178)
  %180 = call i32 @cbq_set_lss(%struct.cbq_class* %175, i32 %179)
  br label %181

181:                                              ; preds = %174, %169
  %182 = load i64, i64* @TCA_CBQ_WRROPT, align 8
  %183 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %182
  %184 = load %struct.nlattr*, %struct.nlattr** %183, align 8
  %185 = icmp ne %struct.nlattr* %184, null
  br i1 %185, label %186, label %196

186:                                              ; preds = %181
  %187 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %15, align 8
  %188 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %189 = call i32 @cbq_rmprio(%struct.cbq_sched_data* %187, %struct.cbq_class* %188)
  %190 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %191 = load i64, i64* @TCA_CBQ_WRROPT, align 8
  %192 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %191
  %193 = load %struct.nlattr*, %struct.nlattr** %192, align 8
  %194 = call i32 @nla_data(%struct.nlattr* %193)
  %195 = call i32 @cbq_set_wrr(%struct.cbq_class* %190, i32 %194)
  br label %196

196:                                              ; preds = %186, %181
  %197 = load i64, i64* @TCA_CBQ_FOPT, align 8
  %198 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %197
  %199 = load %struct.nlattr*, %struct.nlattr** %198, align 8
  %200 = icmp ne %struct.nlattr* %199, null
  br i1 %200, label %201, label %208

201:                                              ; preds = %196
  %202 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %203 = load i64, i64* @TCA_CBQ_FOPT, align 8
  %204 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %203
  %205 = load %struct.nlattr*, %struct.nlattr** %204, align 8
  %206 = call i32 @nla_data(%struct.nlattr* %205)
  %207 = call i32 @cbq_set_fopt(%struct.cbq_class* %202, i32 %206)
  br label %208

208:                                              ; preds = %201, %196
  %209 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %210 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %209, i32 0, i32 13
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %208
  %217 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %218 = call i32 @cbq_activate_class(%struct.cbq_class* %217)
  br label %219

219:                                              ; preds = %216, %208
  %220 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %221 = call i32 @sch_tree_unlock(%struct.Qdisc* %220)
  store i32 0, i32* %7, align 4
  store i32 1, i32* %22, align 4
  br label %551

222:                                              ; preds = %60
  %223 = load i32, i32* %10, align 4
  %224 = load i32, i32* @TC_H_ROOT, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %229

226:                                              ; preds = %222
  %227 = load i32, i32* @EINVAL, align 4
  %228 = sub nsw i32 0, %227
  store i32 %228, i32* %7, align 4
  store i32 1, i32* %22, align 4
  br label %551

229:                                              ; preds = %222
  %230 = load i64, i64* @TCA_CBQ_WRROPT, align 8
  %231 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %230
  %232 = load %struct.nlattr*, %struct.nlattr** %231, align 8
  %233 = icmp ne %struct.nlattr* %232, null
  br i1 %233, label %234, label %244

234:                                              ; preds = %229
  %235 = load i64, i64* @TCA_CBQ_RATE, align 8
  %236 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %235
  %237 = load %struct.nlattr*, %struct.nlattr** %236, align 8
  %238 = icmp ne %struct.nlattr* %237, null
  br i1 %238, label %239, label %244

239:                                              ; preds = %234
  %240 = load i64, i64* @TCA_CBQ_LSSOPT, align 8
  %241 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %240
  %242 = load %struct.nlattr*, %struct.nlattr** %241, align 8
  %243 = icmp ne %struct.nlattr* %242, null
  br i1 %243, label %249, label %244

244:                                              ; preds = %239, %234, %229
  %245 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %246 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %245, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.4, i64 0, i64 0))
  %247 = load i32, i32* @EINVAL, align 4
  %248 = sub nsw i32 0, %247
  store i32 %248, i32* %7, align 4
  store i32 1, i32* %22, align 4
  br label %551

249:                                              ; preds = %239
  %250 = load i64, i64* @TCA_CBQ_RATE, align 8
  %251 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %250
  %252 = load %struct.nlattr*, %struct.nlattr** %251, align 8
  %253 = call i32 @nla_data(%struct.nlattr* %252)
  %254 = load i64, i64* @TCA_CBQ_RTAB, align 8
  %255 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %254
  %256 = load %struct.nlattr*, %struct.nlattr** %255, align 8
  %257 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %258 = call %struct.qdisc_rate_table* @qdisc_get_rtab(i32 %253, %struct.nlattr* %256, %struct.netlink_ext_ack* %257)
  store %struct.qdisc_rate_table* %258, %struct.qdisc_rate_table** %21, align 8
  %259 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %21, align 8
  %260 = icmp eq %struct.qdisc_rate_table* %259, null
  br i1 %260, label %261, label %264

261:                                              ; preds = %249
  %262 = load i32, i32* @EINVAL, align 4
  %263 = sub nsw i32 0, %262
  store i32 %263, i32* %7, align 4
  store i32 1, i32* %22, align 4
  br label %551

264:                                              ; preds = %249
  %265 = load i32, i32* %9, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %286

267:                                              ; preds = %264
  %268 = load i32, i32* @EINVAL, align 4
  %269 = sub nsw i32 0, %268
  store i32 %269, i32* %14, align 4
  %270 = load i32, i32* %9, align 4
  %271 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %272 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = xor i32 %270, %273
  %275 = call i64 @TC_H_MAJ(i32 %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %282, label %277

277:                                              ; preds = %267
  %278 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %15, align 8
  %279 = load i32, i32* %9, align 4
  %280 = call %struct.cbq_class* @cbq_class_lookup(%struct.cbq_sched_data* %278, i32 %279)
  %281 = icmp ne %struct.cbq_class* %280, null
  br i1 %281, label %282, label %285

282:                                              ; preds = %277, %267
  %283 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %284 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %283, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %547

285:                                              ; preds = %277
  br label %331

286:                                              ; preds = %264
  %287 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %288 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = call i32 @TC_H_MAKE(i32 %289, i32 32768)
  store i32 %290, i32* %9, align 4
  store i32 0, i32* %23, align 4
  br label %291

291:                                              ; preds = %314, %286
  %292 = load i32, i32* %23, align 4
  %293 = icmp slt i32 %292, 32768
  br i1 %293, label %294, label %317

294:                                              ; preds = %291
  %295 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %15, align 8
  %296 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %296, align 8
  %299 = icmp sge i32 %298, 32768
  br i1 %299, label %300, label %303

300:                                              ; preds = %294
  %301 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %15, align 8
  %302 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %301, i32 0, i32 0
  store i32 1, i32* %302, align 8
  br label %303

303:                                              ; preds = %300, %294
  %304 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %15, align 8
  %305 = load i32, i32* %9, align 4
  %306 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %15, align 8
  %307 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = or i32 %305, %308
  %310 = call %struct.cbq_class* @cbq_class_lookup(%struct.cbq_sched_data* %304, i32 %309)
  %311 = icmp eq %struct.cbq_class* %310, null
  br i1 %311, label %312, label %313

312:                                              ; preds = %303
  br label %317

313:                                              ; preds = %303
  br label %314

314:                                              ; preds = %313
  %315 = load i32, i32* %23, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %23, align 4
  br label %291

317:                                              ; preds = %312, %291
  %318 = load i32, i32* @ENOSR, align 4
  %319 = sub nsw i32 0, %318
  store i32 %319, i32* %14, align 4
  %320 = load i32, i32* %23, align 4
  %321 = icmp sge i32 %320, 32768
  br i1 %321, label %322, label %325

322:                                              ; preds = %317
  %323 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %324 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %323, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %547

325:                                              ; preds = %317
  %326 = load i32, i32* %9, align 4
  %327 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %15, align 8
  %328 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = or i32 %326, %329
  store i32 %330, i32* %9, align 4
  br label %331

331:                                              ; preds = %325, %285
  %332 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %15, align 8
  %333 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %332, i32 0, i32 2
  store %struct.cbq_class* %333, %struct.cbq_class** %20, align 8
  %334 = load i32, i32* %10, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %348

336:                                              ; preds = %331
  %337 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %15, align 8
  %338 = load i32, i32* %10, align 4
  %339 = call %struct.cbq_class* @cbq_class_lookup(%struct.cbq_sched_data* %337, i32 %338)
  store %struct.cbq_class* %339, %struct.cbq_class** %20, align 8
  %340 = load i32, i32* @EINVAL, align 4
  %341 = sub nsw i32 0, %340
  store i32 %341, i32* %14, align 4
  %342 = load %struct.cbq_class*, %struct.cbq_class** %20, align 8
  %343 = icmp ne %struct.cbq_class* %342, null
  br i1 %343, label %347, label %344

344:                                              ; preds = %336
  %345 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %346 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %345, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %547

347:                                              ; preds = %336
  br label %348

348:                                              ; preds = %347, %331
  %349 = load i32, i32* @ENOBUFS, align 4
  %350 = sub nsw i32 0, %349
  store i32 %350, i32* %14, align 4
  %351 = load i32, i32* @GFP_KERNEL, align 4
  %352 = call %struct.cbq_class* @kzalloc(i32 128, i32 %351)
  store %struct.cbq_class* %352, %struct.cbq_class** %16, align 8
  %353 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %354 = icmp eq %struct.cbq_class* %353, null
  br i1 %354, label %355, label %356

355:                                              ; preds = %348
  br label %547

356:                                              ; preds = %348
  %357 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %358 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %357, i32 0, i32 14
  %359 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %360 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %359, i32 0, i32 17
  %361 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %362 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %363 = call i32 @tcf_block_get(i32* %358, i32* %360, %struct.Qdisc* %361, %struct.netlink_ext_ack* %362)
  store i32 %363, i32* %14, align 4
  %364 = load i32, i32* %14, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %370

366:                                              ; preds = %356
  %367 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %368 = call i32 @kfree(%struct.cbq_class* %367)
  %369 = load i32, i32* %14, align 4
  store i32 %369, i32* %7, align 4
  store i32 1, i32* %22, align 4
  br label %551

370:                                              ; preds = %356
  %371 = load %struct.nlattr**, %struct.nlattr*** %11, align 8
  %372 = load i64, i64* @TCA_RATE, align 8
  %373 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %371, i64 %372
  %374 = load %struct.nlattr*, %struct.nlattr** %373, align 8
  %375 = icmp ne %struct.nlattr* %374, null
  br i1 %375, label %376, label %400

376:                                              ; preds = %370
  %377 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %378 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %377, i32 0, i32 16
  %379 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %380 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %379, i32 0, i32 15
  %381 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %382 = call i32 @qdisc_root_sleeping_running(%struct.Qdisc* %381)
  %383 = load %struct.nlattr**, %struct.nlattr*** %11, align 8
  %384 = load i64, i64* @TCA_RATE, align 8
  %385 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %383, i64 %384
  %386 = load %struct.nlattr*, %struct.nlattr** %385, align 8
  %387 = call i32 @gen_new_estimator(i32* %378, i32* null, i32* %380, i32* null, i32 %382, %struct.nlattr* %386)
  store i32 %387, i32* %14, align 4
  %388 = load i32, i32* %14, align 4
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %399

390:                                              ; preds = %376
  %391 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %392 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %391, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  %393 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %394 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %393, i32 0, i32 14
  %395 = load i32, i32* %394, align 8
  %396 = call i32 @tcf_block_put(i32 %395)
  %397 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %398 = call i32 @kfree(%struct.cbq_class* %397)
  br label %547

399:                                              ; preds = %376
  br label %400

400:                                              ; preds = %399, %370
  %401 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %21, align 8
  %402 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %403 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %402, i32 0, i32 7
  store %struct.qdisc_rate_table* %401, %struct.qdisc_rate_table** %403, align 8
  store %struct.qdisc_rate_table* null, %struct.qdisc_rate_table** %21, align 8
  %404 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %405 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %404, i32 0, i32 1
  %406 = load i32, i32* %405, align 4
  %407 = load i32, i32* %9, align 4
  %408 = call %struct.TYPE_10__* @qdisc_create_dflt(i32 %406, i32* @pfifo_qdisc_ops, i32 %407, i32* null)
  %409 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %410 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %409, i32 0, i32 13
  store %struct.TYPE_10__* %408, %struct.TYPE_10__** %410, align 8
  %411 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %412 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %411, i32 0, i32 13
  %413 = load %struct.TYPE_10__*, %struct.TYPE_10__** %412, align 8
  %414 = icmp ne %struct.TYPE_10__* %413, null
  br i1 %414, label %418, label %415

415:                                              ; preds = %400
  %416 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %417 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %416, i32 0, i32 13
  store %struct.TYPE_10__* @noop_qdisc, %struct.TYPE_10__** %417, align 8
  br label %423

418:                                              ; preds = %400
  %419 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %420 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %419, i32 0, i32 13
  %421 = load %struct.TYPE_10__*, %struct.TYPE_10__** %420, align 8
  %422 = call i32 @qdisc_hash_add(%struct.TYPE_10__* %421, i32 1)
  br label %423

423:                                              ; preds = %418, %415
  %424 = load i32, i32* %9, align 4
  %425 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %426 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %425, i32 0, i32 12
  %427 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %426, i32 0, i32 0
  store i32 %424, i32* %427, align 8
  %428 = load %struct.cbq_class*, %struct.cbq_class** %20, align 8
  %429 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %430 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %429, i32 0, i32 4
  store %struct.cbq_class* %428, %struct.cbq_class** %430, align 8
  %431 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %432 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %433 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %432, i32 0, i32 11
  store %struct.Qdisc* %431, %struct.Qdisc** %433, align 8
  %434 = load %struct.cbq_class*, %struct.cbq_class** %20, align 8
  %435 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %434, i32 0, i32 9
  %436 = load i32, i32* %435, align 4
  %437 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %438 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %437, i32 0, i32 9
  store i32 %436, i32* %438, align 4
  %439 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %440 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %439, i32 0, i32 9
  %441 = load i32, i32* %440, align 4
  %442 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %443 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %442, i32 0, i32 10
  store i32 %441, i32* %443, align 8
  %444 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %445 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %444, i32 0, i32 7
  %446 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %445, align 8
  %447 = getelementptr inbounds %struct.qdisc_rate_table, %struct.qdisc_rate_table* %446, i32 0, i32 0
  %448 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 4
  %450 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %451 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %450, i32 0, i32 8
  store i32 %449, i32* %451, align 8
  %452 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %453 = call i32 @sch_tree_lock(%struct.Qdisc* %452)
  %454 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %455 = call i32 @cbq_link_class(%struct.cbq_class* %454)
  %456 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %457 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %456, i32 0, i32 4
  %458 = load %struct.cbq_class*, %struct.cbq_class** %457, align 8
  %459 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %460 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %459, i32 0, i32 6
  store %struct.cbq_class* %458, %struct.cbq_class** %460, align 8
  %461 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %462 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %461, i32 0, i32 4
  %463 = load %struct.cbq_class*, %struct.cbq_class** %462, align 8
  %464 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %15, align 8
  %465 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %464, i32 0, i32 2
  %466 = icmp ne %struct.cbq_class* %463, %465
  br i1 %466, label %467, label %473

467:                                              ; preds = %423
  %468 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %469 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %468, i32 0, i32 4
  %470 = load %struct.cbq_class*, %struct.cbq_class** %469, align 8
  %471 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %472 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %471, i32 0, i32 5
  store %struct.cbq_class* %470, %struct.cbq_class** %472, align 8
  br label %473

473:                                              ; preds = %467, %423
  %474 = load %struct.cbq_class*, %struct.cbq_class** %20, align 8
  %475 = call i32 @cbq_adjust_levels(%struct.cbq_class* %474)
  %476 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %477 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %476, i32 0, i32 0
  store i32 -2147483647, i32* %477, align 8
  %478 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %479 = load i64, i64* @TCA_CBQ_LSSOPT, align 8
  %480 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %479
  %481 = load %struct.nlattr*, %struct.nlattr** %480, align 8
  %482 = call i32 @nla_data(%struct.nlattr* %481)
  %483 = call i32 @cbq_set_lss(%struct.cbq_class* %478, i32 %482)
  %484 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %485 = load i64, i64* @TCA_CBQ_WRROPT, align 8
  %486 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %485
  %487 = load %struct.nlattr*, %struct.nlattr** %486, align 8
  %488 = call i32 @nla_data(%struct.nlattr* %487)
  %489 = call i32 @cbq_set_wrr(%struct.cbq_class* %484, i32 %488)
  %490 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %491 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %490, i32 0, i32 1
  %492 = load i64, i64* %491, align 8
  %493 = icmp eq i64 %492, 0
  br i1 %493, label %494, label %501

494:                                              ; preds = %473
  %495 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %15, align 8
  %496 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %495, i32 0, i32 2
  %497 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %496, i32 0, i32 1
  %498 = load i64, i64* %497, align 8
  %499 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %500 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %499, i32 0, i32 1
  store i64 %498, i64* %500, align 8
  br label %501

501:                                              ; preds = %494, %473
  %502 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %503 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %502, i32 0, i32 2
  %504 = load i64, i64* %503, align 8
  %505 = icmp eq i64 %504, 0
  br i1 %505, label %506, label %513

506:                                              ; preds = %501
  %507 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %15, align 8
  %508 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %507, i32 0, i32 2
  %509 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %508, i32 0, i32 2
  %510 = load i64, i64* %509, align 8
  %511 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %512 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %511, i32 0, i32 2
  store i64 %510, i64* %512, align 8
  br label %513

513:                                              ; preds = %506, %501
  %514 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %515 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %514, i32 0, i32 3
  %516 = load i64, i64* %515, align 8
  %517 = icmp eq i64 %516, 0
  br i1 %517, label %518, label %525

518:                                              ; preds = %513
  %519 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %15, align 8
  %520 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %519, i32 0, i32 2
  %521 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %520, i32 0, i32 3
  %522 = load i64, i64* %521, align 8
  %523 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %524 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %523, i32 0, i32 3
  store i64 %522, i64* %524, align 8
  br label %525

525:                                              ; preds = %518, %513
  %526 = load i64, i64* @TCA_CBQ_FOPT, align 8
  %527 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %526
  %528 = load %struct.nlattr*, %struct.nlattr** %527, align 8
  %529 = icmp ne %struct.nlattr* %528, null
  br i1 %529, label %530, label %537

530:                                              ; preds = %525
  %531 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %532 = load i64, i64* @TCA_CBQ_FOPT, align 8
  %533 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %532
  %534 = load %struct.nlattr*, %struct.nlattr** %533, align 8
  %535 = call i32 @nla_data(%struct.nlattr* %534)
  %536 = call i32 @cbq_set_fopt(%struct.cbq_class* %531, i32 %535)
  br label %537

537:                                              ; preds = %530, %525
  %538 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %539 = call i32 @sch_tree_unlock(%struct.Qdisc* %538)
  %540 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %541 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %15, align 8
  %542 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %541, i32 0, i32 1
  %543 = call i32 @qdisc_class_hash_grow(%struct.Qdisc* %540, i32* %542)
  %544 = load %struct.cbq_class*, %struct.cbq_class** %16, align 8
  %545 = ptrtoint %struct.cbq_class* %544 to i64
  %546 = load i64*, i64** %12, align 8
  store i64 %545, i64* %546, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %22, align 4
  br label %551

547:                                              ; preds = %390, %355, %344, %322, %282
  %548 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %21, align 8
  %549 = call i32 @qdisc_put_rtab(%struct.qdisc_rate_table* %548)
  %550 = load i32, i32* %14, align 4
  store i32 %550, i32* %7, align 4
  store i32 1, i32* %22, align 4
  br label %551

551:                                              ; preds = %547, %537, %366, %261, %244, %226, %219, %141, %117, %94, %80, %55, %43
  %552 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %552)
  %553 = load i32, i32* %7, align 4
  ret i32 %553
}

declare dso_local %struct.cbq_sched_data* @qdisc_priv(%struct.Qdisc*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @cbq_opt_parse(%struct.nlattr**, %struct.nlattr*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local %struct.qdisc_rate_table* @qdisc_get_rtab(i32, %struct.nlattr*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local i32 @gen_replace_estimator(i32*, i32*, i32*, i32*, i32, %struct.nlattr*) #1

declare dso_local i32 @qdisc_root_sleeping_running(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_put_rtab(%struct.qdisc_rate_table*) #1

declare dso_local i32 @sch_tree_lock(%struct.Qdisc*) #1

declare dso_local i32 @cbq_deactivate_class(%struct.cbq_class*) #1

declare dso_local i32 @cbq_set_lss(%struct.cbq_class*, i32) #1

declare dso_local i32 @cbq_rmprio(%struct.cbq_sched_data*, %struct.cbq_class*) #1

declare dso_local i32 @cbq_set_wrr(%struct.cbq_class*, i32) #1

declare dso_local i32 @cbq_set_fopt(%struct.cbq_class*, i32) #1

declare dso_local i32 @cbq_activate_class(%struct.cbq_class*) #1

declare dso_local i32 @sch_tree_unlock(%struct.Qdisc*) #1

declare dso_local i64 @TC_H_MAJ(i32) #1

declare dso_local %struct.cbq_class* @cbq_class_lookup(%struct.cbq_sched_data*, i32) #1

declare dso_local i32 @TC_H_MAKE(i32, i32) #1

declare dso_local %struct.cbq_class* @kzalloc(i32, i32) #1

declare dso_local i32 @tcf_block_get(i32*, i32*, %struct.Qdisc*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @kfree(%struct.cbq_class*) #1

declare dso_local i32 @gen_new_estimator(i32*, i32*, i32*, i32*, i32, %struct.nlattr*) #1

declare dso_local i32 @tcf_block_put(i32) #1

declare dso_local %struct.TYPE_10__* @qdisc_create_dflt(i32, i32*, i32, i32*) #1

declare dso_local i32 @qdisc_hash_add(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @cbq_link_class(%struct.cbq_class*) #1

declare dso_local i32 @cbq_adjust_levels(%struct.cbq_class*) #1

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
