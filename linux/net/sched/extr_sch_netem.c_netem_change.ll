; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_netem.c_netem_change.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_netem.c_netem_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.netem_sched_data = type { i32, %struct.clgstate, i32, i8*, i8*, i32, i32, i64, i32, i32, i64, i32, i32, i32 }
%struct.clgstate = type { i32 }
%struct.tc_netem_qopt = type { i32, i32, i64, i32, i32, i32 }

@TCA_NETEM_MAX = common dso_local global i32 0, align 4
@CLG_RANDOM = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@netem_policy = common dso_local global i32 0, align 4
@TCA_NETEM_LOSS = common dso_local global i64 0, align 8
@TCA_NETEM_DELAY_DIST = common dso_local global i64 0, align 8
@TCA_NETEM_SLOT_DIST = common dso_local global i64 0, align 8
@TCA_NETEM_CORR = common dso_local global i64 0, align 8
@TCA_NETEM_REORDER = common dso_local global i64 0, align 8
@TCA_NETEM_CORRUPT = common dso_local global i64 0, align 8
@TCA_NETEM_RATE = common dso_local global i64 0, align 8
@TCA_NETEM_RATE64 = common dso_local global i64 0, align 8
@u64 = common dso_local global i32 0, align 4
@TCA_NETEM_LATENCY64 = common dso_local global i64 0, align 8
@TCA_NETEM_JITTER64 = common dso_local global i64 0, align 8
@TCA_NETEM_ECN = common dso_local global i64 0, align 8
@TCA_NETEM_SLOT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)* @netem_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netem_change(%struct.Qdisc* %0, %struct.nlattr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.netem_sched_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.tc_netem_qopt*, align 8
  %12 = alloca %struct.clgstate, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store %struct.nlattr* %1, %struct.nlattr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %16 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %17 = call %struct.netem_sched_data* @qdisc_priv(%struct.Qdisc* %16)
  store %struct.netem_sched_data* %17, %struct.netem_sched_data** %8, align 8
  %18 = load i32, i32* @TCA_NETEM_MAX, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %9, align 8
  %22 = alloca %struct.nlattr*, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  %23 = load i8*, i8** @CLG_RANDOM, align 8
  %24 = ptrtoint i8* %23 to i32
  store i32 %24, i32* %13, align 4
  %25 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %26 = icmp eq %struct.nlattr* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %272

30:                                               ; preds = %3
  %31 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %32 = call %struct.tc_netem_qopt* @nla_data(%struct.nlattr* %31)
  store %struct.tc_netem_qopt* %32, %struct.tc_netem_qopt** %11, align 8
  %33 = load i32, i32* @TCA_NETEM_MAX, align 4
  %34 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %35 = load i32, i32* @netem_policy, align 4
  %36 = call i32 @parse_attr(%struct.nlattr** %22, i32 %33, %struct.nlattr* %34, i32 %35, i32 32)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* %14, align 4
  store i32 %40, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %272

41:                                               ; preds = %30
  %42 = load %struct.netem_sched_data*, %struct.netem_sched_data** %8, align 8
  %43 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %42, i32 0, i32 1
  %44 = bitcast %struct.clgstate* %12 to i8*
  %45 = bitcast %struct.clgstate* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 4 %45, i64 4, i1 false)
  %46 = load %struct.netem_sched_data*, %struct.netem_sched_data** %8, align 8
  %47 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %13, align 4
  %49 = load i64, i64* @TCA_NETEM_LOSS, align 8
  %50 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %49
  %51 = load %struct.nlattr*, %struct.nlattr** %50, align 8
  %52 = icmp ne %struct.nlattr* %51, null
  br i1 %52, label %53, label %67

53:                                               ; preds = %41
  %54 = load %struct.netem_sched_data*, %struct.netem_sched_data** %8, align 8
  %55 = load i64, i64* @TCA_NETEM_LOSS, align 8
  %56 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %55
  %57 = load %struct.nlattr*, %struct.nlattr** %56, align 8
  %58 = call i32 @get_loss_clg(%struct.netem_sched_data* %54, %struct.nlattr* %57)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %53
  %62 = load i32, i32* %13, align 4
  %63 = load %struct.netem_sched_data*, %struct.netem_sched_data** %8, align 8
  %64 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* %14, align 4
  store i32 %65, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %272

66:                                               ; preds = %53
  br label %72

67:                                               ; preds = %41
  %68 = load i8*, i8** @CLG_RANDOM, align 8
  %69 = ptrtoint i8* %68 to i32
  %70 = load %struct.netem_sched_data*, %struct.netem_sched_data** %8, align 8
  %71 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %67, %66
  %73 = load i64, i64* @TCA_NETEM_DELAY_DIST, align 8
  %74 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %73
  %75 = load %struct.nlattr*, %struct.nlattr** %74, align 8
  %76 = icmp ne %struct.nlattr* %75, null
  br i1 %76, label %77, label %89

77:                                               ; preds = %72
  %78 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %79 = load %struct.netem_sched_data*, %struct.netem_sched_data** %8, align 8
  %80 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %79, i32 0, i32 13
  %81 = load i64, i64* @TCA_NETEM_DELAY_DIST, align 8
  %82 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %81
  %83 = load %struct.nlattr*, %struct.nlattr** %82, align 8
  %84 = call i32 @get_dist_table(%struct.Qdisc* %78, i32* %80, %struct.nlattr* %83)
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  br label %263

88:                                               ; preds = %77
  br label %89

89:                                               ; preds = %88, %72
  %90 = load i64, i64* @TCA_NETEM_SLOT_DIST, align 8
  %91 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %90
  %92 = load %struct.nlattr*, %struct.nlattr** %91, align 8
  %93 = icmp ne %struct.nlattr* %92, null
  br i1 %93, label %94, label %106

94:                                               ; preds = %89
  %95 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %96 = load %struct.netem_sched_data*, %struct.netem_sched_data** %8, align 8
  %97 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %96, i32 0, i32 12
  %98 = load i64, i64* @TCA_NETEM_SLOT_DIST, align 8
  %99 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %98
  %100 = load %struct.nlattr*, %struct.nlattr** %99, align 8
  %101 = call i32 @get_dist_table(%struct.Qdisc* %95, i32* %97, %struct.nlattr* %100)
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %94
  br label %263

105:                                              ; preds = %94
  br label %106

106:                                              ; preds = %105, %89
  %107 = load %struct.tc_netem_qopt*, %struct.tc_netem_qopt** %11, align 8
  %108 = getelementptr inbounds %struct.tc_netem_qopt, %struct.tc_netem_qopt* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %111 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 4
  %112 = load %struct.tc_netem_qopt*, %struct.tc_netem_qopt** %11, align 8
  %113 = getelementptr inbounds %struct.tc_netem_qopt, %struct.tc_netem_qopt* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 8
  %115 = call i8* @PSCHED_TICKS2NS(i32 %114)
  %116 = load %struct.netem_sched_data*, %struct.netem_sched_data** %8, align 8
  %117 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %116, i32 0, i32 4
  store i8* %115, i8** %117, align 8
  %118 = load %struct.tc_netem_qopt*, %struct.tc_netem_qopt** %11, align 8
  %119 = getelementptr inbounds %struct.tc_netem_qopt, %struct.tc_netem_qopt* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = call i8* @PSCHED_TICKS2NS(i32 %120)
  %122 = load %struct.netem_sched_data*, %struct.netem_sched_data** %8, align 8
  %123 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %122, i32 0, i32 3
  store i8* %121, i8** %123, align 8
  %124 = load %struct.tc_netem_qopt*, %struct.tc_netem_qopt** %11, align 8
  %125 = getelementptr inbounds %struct.tc_netem_qopt, %struct.tc_netem_qopt* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.netem_sched_data*, %struct.netem_sched_data** %8, align 8
  %128 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %127, i32 0, i32 11
  store i32 %126, i32* %128, align 8
  %129 = load %struct.tc_netem_qopt*, %struct.tc_netem_qopt** %11, align 8
  %130 = getelementptr inbounds %struct.tc_netem_qopt, %struct.tc_netem_qopt* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.netem_sched_data*, %struct.netem_sched_data** %8, align 8
  %133 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %132, i32 0, i32 7
  store i64 %131, i64* %133, align 8
  %134 = load %struct.netem_sched_data*, %struct.netem_sched_data** %8, align 8
  %135 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %134, i32 0, i32 10
  store i64 0, i64* %135, align 8
  %136 = load %struct.tc_netem_qopt*, %struct.tc_netem_qopt** %11, align 8
  %137 = getelementptr inbounds %struct.tc_netem_qopt, %struct.tc_netem_qopt* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.netem_sched_data*, %struct.netem_sched_data** %8, align 8
  %140 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %139, i32 0, i32 9
  store i32 %138, i32* %140, align 4
  %141 = load %struct.tc_netem_qopt*, %struct.tc_netem_qopt** %11, align 8
  %142 = getelementptr inbounds %struct.tc_netem_qopt, %struct.tc_netem_qopt* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.netem_sched_data*, %struct.netem_sched_data** %8, align 8
  %145 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %144, i32 0, i32 8
  store i32 %143, i32* %145, align 8
  %146 = load %struct.netem_sched_data*, %struct.netem_sched_data** %8, align 8
  %147 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %146, i32 0, i32 7
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %106
  %151 = load %struct.netem_sched_data*, %struct.netem_sched_data** %8, align 8
  %152 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %151, i32 0, i32 6
  store i32 -1, i32* %152, align 4
  br label %153

153:                                              ; preds = %150, %106
  %154 = load i64, i64* @TCA_NETEM_CORR, align 8
  %155 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %154
  %156 = load %struct.nlattr*, %struct.nlattr** %155, align 8
  %157 = icmp ne %struct.nlattr* %156, null
  br i1 %157, label %158, label %164

158:                                              ; preds = %153
  %159 = load %struct.netem_sched_data*, %struct.netem_sched_data** %8, align 8
  %160 = load i64, i64* @TCA_NETEM_CORR, align 8
  %161 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %160
  %162 = load %struct.nlattr*, %struct.nlattr** %161, align 8
  %163 = call i32 @get_correlation(%struct.netem_sched_data* %159, %struct.nlattr* %162)
  br label %164

164:                                              ; preds = %158, %153
  %165 = load i64, i64* @TCA_NETEM_REORDER, align 8
  %166 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %165
  %167 = load %struct.nlattr*, %struct.nlattr** %166, align 8
  %168 = icmp ne %struct.nlattr* %167, null
  br i1 %168, label %169, label %175

169:                                              ; preds = %164
  %170 = load %struct.netem_sched_data*, %struct.netem_sched_data** %8, align 8
  %171 = load i64, i64* @TCA_NETEM_REORDER, align 8
  %172 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %171
  %173 = load %struct.nlattr*, %struct.nlattr** %172, align 8
  %174 = call i32 @get_reorder(%struct.netem_sched_data* %170, %struct.nlattr* %173)
  br label %175

175:                                              ; preds = %169, %164
  %176 = load i64, i64* @TCA_NETEM_CORRUPT, align 8
  %177 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %176
  %178 = load %struct.nlattr*, %struct.nlattr** %177, align 8
  %179 = icmp ne %struct.nlattr* %178, null
  br i1 %179, label %180, label %186

180:                                              ; preds = %175
  %181 = load %struct.netem_sched_data*, %struct.netem_sched_data** %8, align 8
  %182 = load i64, i64* @TCA_NETEM_CORRUPT, align 8
  %183 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %182
  %184 = load %struct.nlattr*, %struct.nlattr** %183, align 8
  %185 = call i32 @get_corrupt(%struct.netem_sched_data* %181, %struct.nlattr* %184)
  br label %186

186:                                              ; preds = %180, %175
  %187 = load i64, i64* @TCA_NETEM_RATE, align 8
  %188 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %187
  %189 = load %struct.nlattr*, %struct.nlattr** %188, align 8
  %190 = icmp ne %struct.nlattr* %189, null
  br i1 %190, label %191, label %197

191:                                              ; preds = %186
  %192 = load %struct.netem_sched_data*, %struct.netem_sched_data** %8, align 8
  %193 = load i64, i64* @TCA_NETEM_RATE, align 8
  %194 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %193
  %195 = load %struct.nlattr*, %struct.nlattr** %194, align 8
  %196 = call i32 @get_rate(%struct.netem_sched_data* %192, %struct.nlattr* %195)
  br label %197

197:                                              ; preds = %191, %186
  %198 = load i64, i64* @TCA_NETEM_RATE64, align 8
  %199 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %198
  %200 = load %struct.nlattr*, %struct.nlattr** %199, align 8
  %201 = icmp ne %struct.nlattr* %200, null
  br i1 %201, label %202, label %214

202:                                              ; preds = %197
  %203 = load i32, i32* @u64, align 4
  %204 = load %struct.netem_sched_data*, %struct.netem_sched_data** %8, align 8
  %205 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %204, i32 0, i32 5
  %206 = load i32, i32* %205, align 8
  %207 = load i64, i64* @TCA_NETEM_RATE64, align 8
  %208 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %207
  %209 = load %struct.nlattr*, %struct.nlattr** %208, align 8
  %210 = call i32 @nla_get_u64(%struct.nlattr* %209)
  %211 = call i32 @max_t(i32 %203, i32 %206, i32 %210)
  %212 = load %struct.netem_sched_data*, %struct.netem_sched_data** %8, align 8
  %213 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %212, i32 0, i32 5
  store i32 %211, i32* %213, align 8
  br label %214

214:                                              ; preds = %202, %197
  %215 = load i64, i64* @TCA_NETEM_LATENCY64, align 8
  %216 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %215
  %217 = load %struct.nlattr*, %struct.nlattr** %216, align 8
  %218 = icmp ne %struct.nlattr* %217, null
  br i1 %218, label %219, label %226

219:                                              ; preds = %214
  %220 = load i64, i64* @TCA_NETEM_LATENCY64, align 8
  %221 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %220
  %222 = load %struct.nlattr*, %struct.nlattr** %221, align 8
  %223 = call i8* @nla_get_s64(%struct.nlattr* %222)
  %224 = load %struct.netem_sched_data*, %struct.netem_sched_data** %8, align 8
  %225 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %224, i32 0, i32 4
  store i8* %223, i8** %225, align 8
  br label %226

226:                                              ; preds = %219, %214
  %227 = load i64, i64* @TCA_NETEM_JITTER64, align 8
  %228 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %227
  %229 = load %struct.nlattr*, %struct.nlattr** %228, align 8
  %230 = icmp ne %struct.nlattr* %229, null
  br i1 %230, label %231, label %238

231:                                              ; preds = %226
  %232 = load i64, i64* @TCA_NETEM_JITTER64, align 8
  %233 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %232
  %234 = load %struct.nlattr*, %struct.nlattr** %233, align 8
  %235 = call i8* @nla_get_s64(%struct.nlattr* %234)
  %236 = load %struct.netem_sched_data*, %struct.netem_sched_data** %8, align 8
  %237 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %236, i32 0, i32 3
  store i8* %235, i8** %237, align 8
  br label %238

238:                                              ; preds = %231, %226
  %239 = load i64, i64* @TCA_NETEM_ECN, align 8
  %240 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %239
  %241 = load %struct.nlattr*, %struct.nlattr** %240, align 8
  %242 = icmp ne %struct.nlattr* %241, null
  br i1 %242, label %243, label %250

243:                                              ; preds = %238
  %244 = load i64, i64* @TCA_NETEM_ECN, align 8
  %245 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %244
  %246 = load %struct.nlattr*, %struct.nlattr** %245, align 8
  %247 = call i32 @nla_get_u32(%struct.nlattr* %246)
  %248 = load %struct.netem_sched_data*, %struct.netem_sched_data** %8, align 8
  %249 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %248, i32 0, i32 2
  store i32 %247, i32* %249, align 8
  br label %250

250:                                              ; preds = %243, %238
  %251 = load i64, i64* @TCA_NETEM_SLOT, align 8
  %252 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %251
  %253 = load %struct.nlattr*, %struct.nlattr** %252, align 8
  %254 = icmp ne %struct.nlattr* %253, null
  br i1 %254, label %255, label %261

255:                                              ; preds = %250
  %256 = load %struct.netem_sched_data*, %struct.netem_sched_data** %8, align 8
  %257 = load i64, i64* @TCA_NETEM_SLOT, align 8
  %258 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %257
  %259 = load %struct.nlattr*, %struct.nlattr** %258, align 8
  %260 = call i32 @get_slot(%struct.netem_sched_data* %256, %struct.nlattr* %259)
  br label %261

261:                                              ; preds = %255, %250
  %262 = load i32, i32* %14, align 4
  store i32 %262, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %272

263:                                              ; preds = %104, %87
  %264 = load %struct.netem_sched_data*, %struct.netem_sched_data** %8, align 8
  %265 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %264, i32 0, i32 1
  %266 = bitcast %struct.clgstate* %265 to i8*
  %267 = bitcast %struct.clgstate* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %266, i8* align 4 %267, i64 4, i1 false)
  %268 = load i32, i32* %13, align 4
  %269 = load %struct.netem_sched_data*, %struct.netem_sched_data** %8, align 8
  %270 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %269, i32 0, i32 0
  store i32 %268, i32* %270, align 8
  %271 = load i32, i32* %14, align 4
  store i32 %271, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %272

272:                                              ; preds = %263, %261, %61, %39, %27
  %273 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %273)
  %274 = load i32, i32* %4, align 4
  ret i32 %274
}

declare dso_local %struct.netem_sched_data* @qdisc_priv(%struct.Qdisc*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.tc_netem_qopt* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @parse_attr(%struct.nlattr**, i32, %struct.nlattr*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @get_loss_clg(%struct.netem_sched_data*, %struct.nlattr*) #1

declare dso_local i32 @get_dist_table(%struct.Qdisc*, i32*, %struct.nlattr*) #1

declare dso_local i8* @PSCHED_TICKS2NS(i32) #1

declare dso_local i32 @get_correlation(%struct.netem_sched_data*, %struct.nlattr*) #1

declare dso_local i32 @get_reorder(%struct.netem_sched_data*, %struct.nlattr*) #1

declare dso_local i32 @get_corrupt(%struct.netem_sched_data*, %struct.nlattr*) #1

declare dso_local i32 @get_rate(%struct.netem_sched_data*, %struct.nlattr*) #1

declare dso_local i32 @max_t(i32, i32, i32) #1

declare dso_local i32 @nla_get_u64(%struct.nlattr*) #1

declare dso_local i8* @nla_get_s64(%struct.nlattr*) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @get_slot(%struct.netem_sched_data*, %struct.nlattr*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
