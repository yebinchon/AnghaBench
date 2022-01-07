; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_choke.c_choke_change.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_choke.c_choke_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.choke_sched_data = type { i32, i64, i64, i64, i32, i32, i32, %struct.sk_buff** }
%struct.sk_buff = type { i32 }
%struct.tc_red_qopt = type { i64, i32, i32, i32, i32, i32, i32 }

@TCA_CHOKE_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@choke_policy = common dso_local global i32 0, align 4
@TCA_CHOKE_PARMS = common dso_local global i64 0, align 8
@TCA_CHOKE_STAB = common dso_local global i64 0, align 8
@TCA_CHOKE_MAX_P = common dso_local global i64 0, align 8
@CHOKE_MAX_QUEUE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)* @choke_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @choke_change(%struct.Qdisc* %0, %struct.nlattr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.choke_sched_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.tc_red_qopt*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.sk_buff**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.sk_buff**, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.sk_buff*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store %struct.nlattr* %1, %struct.nlattr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %22 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %23 = call %struct.choke_sched_data* @qdisc_priv(%struct.Qdisc* %22)
  store %struct.choke_sched_data* %23, %struct.choke_sched_data** %8, align 8
  %24 = load i32, i32* @TCA_CHOKE_MAX, align 4
  %25 = add nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %9, align 8
  %28 = alloca %struct.nlattr*, i64 %26, align 16
  store i64 %26, i64* %10, align 8
  store %struct.sk_buff** null, %struct.sk_buff*** %13, align 8
  %29 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %30 = icmp eq %struct.nlattr* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %272

34:                                               ; preds = %3
  %35 = load i32, i32* @TCA_CHOKE_MAX, align 4
  %36 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %37 = load i32, i32* @choke_policy, align 4
  %38 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %28, i32 %35, %struct.nlattr* %36, i32 %37, i32* null)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %272

43:                                               ; preds = %34
  %44 = load i64, i64* @TCA_CHOKE_PARMS, align 8
  %45 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %44
  %46 = load %struct.nlattr*, %struct.nlattr** %45, align 8
  %47 = icmp eq %struct.nlattr* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load i64, i64* @TCA_CHOKE_STAB, align 8
  %50 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %49
  %51 = load %struct.nlattr*, %struct.nlattr** %50, align 8
  %52 = icmp eq %struct.nlattr* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %48, %43
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %272

56:                                               ; preds = %48
  %57 = load i64, i64* @TCA_CHOKE_MAX_P, align 8
  %58 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %57
  %59 = load %struct.nlattr*, %struct.nlattr** %58, align 8
  %60 = icmp ne %struct.nlattr* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load i64, i64* @TCA_CHOKE_MAX_P, align 8
  %63 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %62
  %64 = load %struct.nlattr*, %struct.nlattr** %63, align 8
  %65 = call i32 @nla_get_u32(%struct.nlattr* %64)
  br label %67

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %66, %61
  %68 = phi i32 [ %65, %61 ], [ 0, %66 ]
  store i32 %68, i32* %15, align 4
  %69 = load i64, i64* @TCA_CHOKE_PARMS, align 8
  %70 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %69
  %71 = load %struct.nlattr*, %struct.nlattr** %70, align 8
  %72 = call %struct.tc_red_qopt* @nla_data(%struct.nlattr* %71)
  store %struct.tc_red_qopt* %72, %struct.tc_red_qopt** %11, align 8
  %73 = load %struct.tc_red_qopt*, %struct.tc_red_qopt** %11, align 8
  %74 = getelementptr inbounds %struct.tc_red_qopt, %struct.tc_red_qopt* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.tc_red_qopt*, %struct.tc_red_qopt** %11, align 8
  %77 = getelementptr inbounds %struct.tc_red_qopt, %struct.tc_red_qopt* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.tc_red_qopt*, %struct.tc_red_qopt** %11, align 8
  %80 = getelementptr inbounds %struct.tc_red_qopt, %struct.tc_red_qopt* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @red_check_params(i32 %75, i32 %78, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %67
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %272

87:                                               ; preds = %67
  %88 = load %struct.tc_red_qopt*, %struct.tc_red_qopt** %11, align 8
  %89 = getelementptr inbounds %struct.tc_red_qopt, %struct.tc_red_qopt* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @CHOKE_MAX_QUEUE, align 8
  %92 = icmp sgt i64 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %272

96:                                               ; preds = %87
  %97 = load %struct.tc_red_qopt*, %struct.tc_red_qopt** %11, align 8
  %98 = getelementptr inbounds %struct.tc_red_qopt, %struct.tc_red_qopt* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, 1
  %101 = call i32 @roundup_pow_of_two(i64 %100)
  %102 = sub nsw i32 %101, 1
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %14, align 4
  %104 = load %struct.choke_sched_data*, %struct.choke_sched_data** %8, align 8
  %105 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %103, %106
  br i1 %107, label %108, label %216

108:                                              ; preds = %96
  %109 = load i32, i32* %14, align 4
  %110 = add i32 %109, 1
  %111 = load i32, i32* @GFP_KERNEL, align 4
  %112 = load i32, i32* @__GFP_ZERO, align 4
  %113 = or i32 %111, %112
  %114 = call %struct.sk_buff** @kvmalloc_array(i32 %110, i32 8, i32 %113)
  store %struct.sk_buff** %114, %struct.sk_buff*** %17, align 8
  %115 = load %struct.sk_buff**, %struct.sk_buff*** %17, align 8
  %116 = icmp ne %struct.sk_buff** %115, null
  br i1 %116, label %120, label %117

117:                                              ; preds = %108
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %272

120:                                              ; preds = %108
  %121 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %122 = call i32 @sch_tree_lock(%struct.Qdisc* %121)
  %123 = load %struct.choke_sched_data*, %struct.choke_sched_data** %8, align 8
  %124 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %123, i32 0, i32 7
  %125 = load %struct.sk_buff**, %struct.sk_buff*** %124, align 8
  store %struct.sk_buff** %125, %struct.sk_buff*** %13, align 8
  %126 = load %struct.sk_buff**, %struct.sk_buff*** %13, align 8
  %127 = icmp ne %struct.sk_buff** %126, null
  br i1 %127, label %128, label %209

128:                                              ; preds = %120
  %129 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %130 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %133

133:                                              ; preds = %175, %168, %163, %128
  %134 = load %struct.choke_sched_data*, %struct.choke_sched_data** %8, align 8
  %135 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.choke_sched_data*, %struct.choke_sched_data** %8, align 8
  %138 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %136, %139
  br i1 %140, label %141, label %193

141:                                              ; preds = %133
  %142 = load %struct.choke_sched_data*, %struct.choke_sched_data** %8, align 8
  %143 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %142, i32 0, i32 7
  %144 = load %struct.sk_buff**, %struct.sk_buff*** %143, align 8
  %145 = load %struct.choke_sched_data*, %struct.choke_sched_data** %8, align 8
  %146 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %144, i64 %147
  %149 = load %struct.sk_buff*, %struct.sk_buff** %148, align 8
  store %struct.sk_buff* %149, %struct.sk_buff** %21, align 8
  %150 = load %struct.choke_sched_data*, %struct.choke_sched_data** %8, align 8
  %151 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = add i64 %152, 1
  %154 = load %struct.choke_sched_data*, %struct.choke_sched_data** %8, align 8
  %155 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = zext i32 %156 to i64
  %158 = and i64 %153, %157
  %159 = load %struct.choke_sched_data*, %struct.choke_sched_data** %8, align 8
  %160 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %159, i32 0, i32 1
  store i64 %158, i64* %160, align 8
  %161 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %162 = icmp ne %struct.sk_buff* %161, null
  br i1 %162, label %164, label %163

163:                                              ; preds = %141
  br label %133

164:                                              ; preds = %141
  %165 = load i32, i32* %19, align 4
  %166 = load i32, i32* %14, align 4
  %167 = icmp ult i32 %165, %166
  br i1 %167, label %168, label %175

168:                                              ; preds = %164
  %169 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %170 = load %struct.sk_buff**, %struct.sk_buff*** %17, align 8
  %171 = load i32, i32* %19, align 4
  %172 = add i32 %171, 1
  store i32 %172, i32* %19, align 4
  %173 = zext i32 %171 to i64
  %174 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %170, i64 %173
  store %struct.sk_buff* %169, %struct.sk_buff** %174, align 8
  br label %133

175:                                              ; preds = %164
  %176 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %177 = call i64 @qdisc_pkt_len(%struct.sk_buff* %176)
  %178 = load i32, i32* %20, align 4
  %179 = zext i32 %178 to i64
  %180 = add nsw i64 %179, %177
  %181 = trunc i64 %180 to i32
  store i32 %181, i32* %20, align 4
  %182 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %183 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %184 = call i32 @qdisc_qstats_backlog_dec(%struct.Qdisc* %182, %struct.sk_buff* %183)
  %185 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %186 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = add i32 %188, -1
  store i32 %189, i32* %187, align 4
  %190 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %191 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %192 = call i32 @rtnl_qdisc_drop(%struct.sk_buff* %190, %struct.Qdisc* %191)
  br label %133

193:                                              ; preds = %133
  %194 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %195 = load i32, i32* %18, align 4
  %196 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %197 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = sub i32 %195, %199
  %201 = load i32, i32* %20, align 4
  %202 = call i32 @qdisc_tree_reduce_backlog(%struct.Qdisc* %194, i32 %200, i32 %201)
  %203 = load %struct.choke_sched_data*, %struct.choke_sched_data** %8, align 8
  %204 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %203, i32 0, i32 1
  store i64 0, i64* %204, align 8
  %205 = load i32, i32* %19, align 4
  %206 = zext i32 %205 to i64
  %207 = load %struct.choke_sched_data*, %struct.choke_sched_data** %8, align 8
  %208 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %207, i32 0, i32 2
  store i64 %206, i64* %208, align 8
  br label %209

209:                                              ; preds = %193, %120
  %210 = load i32, i32* %14, align 4
  %211 = load %struct.choke_sched_data*, %struct.choke_sched_data** %8, align 8
  %212 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %211, i32 0, i32 0
  store i32 %210, i32* %212, align 8
  %213 = load %struct.sk_buff**, %struct.sk_buff*** %17, align 8
  %214 = load %struct.choke_sched_data*, %struct.choke_sched_data** %8, align 8
  %215 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %214, i32 0, i32 7
  store %struct.sk_buff** %213, %struct.sk_buff*** %215, align 8
  br label %219

216:                                              ; preds = %96
  %217 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %218 = call i32 @sch_tree_lock(%struct.Qdisc* %217)
  br label %219

219:                                              ; preds = %216, %209
  %220 = load %struct.tc_red_qopt*, %struct.tc_red_qopt** %11, align 8
  %221 = getelementptr inbounds %struct.tc_red_qopt, %struct.tc_red_qopt* %220, i32 0, i32 6
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.choke_sched_data*, %struct.choke_sched_data** %8, align 8
  %224 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %223, i32 0, i32 6
  store i32 %222, i32* %224, align 8
  %225 = load %struct.tc_red_qopt*, %struct.tc_red_qopt** %11, align 8
  %226 = getelementptr inbounds %struct.tc_red_qopt, %struct.tc_red_qopt* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.choke_sched_data*, %struct.choke_sched_data** %8, align 8
  %229 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %228, i32 0, i32 3
  store i64 %227, i64* %229, align 8
  %230 = load %struct.choke_sched_data*, %struct.choke_sched_data** %8, align 8
  %231 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %230, i32 0, i32 5
  %232 = load %struct.tc_red_qopt*, %struct.tc_red_qopt** %11, align 8
  %233 = getelementptr inbounds %struct.tc_red_qopt, %struct.tc_red_qopt* %232, i32 0, i32 5
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.tc_red_qopt*, %struct.tc_red_qopt** %11, align 8
  %236 = getelementptr inbounds %struct.tc_red_qopt, %struct.tc_red_qopt* %235, i32 0, i32 4
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.tc_red_qopt*, %struct.tc_red_qopt** %11, align 8
  %239 = getelementptr inbounds %struct.tc_red_qopt, %struct.tc_red_qopt* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.tc_red_qopt*, %struct.tc_red_qopt** %11, align 8
  %242 = getelementptr inbounds %struct.tc_red_qopt, %struct.tc_red_qopt* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.tc_red_qopt*, %struct.tc_red_qopt** %11, align 8
  %245 = getelementptr inbounds %struct.tc_red_qopt, %struct.tc_red_qopt* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 8
  %247 = load i64, i64* @TCA_CHOKE_STAB, align 8
  %248 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %247
  %249 = load %struct.nlattr*, %struct.nlattr** %248, align 8
  %250 = call %struct.tc_red_qopt* @nla_data(%struct.nlattr* %249)
  %251 = load i32, i32* %15, align 4
  %252 = call i32 @red_set_parms(i32* %231, i32 %234, i32 %237, i32 %240, i32 %243, i32 %246, %struct.tc_red_qopt* %250, i32 %251)
  %253 = load %struct.choke_sched_data*, %struct.choke_sched_data** %8, align 8
  %254 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %253, i32 0, i32 4
  %255 = call i32 @red_set_vars(i32* %254)
  %256 = load %struct.choke_sched_data*, %struct.choke_sched_data** %8, align 8
  %257 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = load %struct.choke_sched_data*, %struct.choke_sched_data** %8, align 8
  %260 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %259, i32 0, i32 2
  %261 = load i64, i64* %260, align 8
  %262 = icmp eq i64 %258, %261
  br i1 %262, label %263, label %267

263:                                              ; preds = %219
  %264 = load %struct.choke_sched_data*, %struct.choke_sched_data** %8, align 8
  %265 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %264, i32 0, i32 4
  %266 = call i32 @red_end_of_idle_period(i32* %265)
  br label %267

267:                                              ; preds = %263, %219
  %268 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %269 = call i32 @sch_tree_unlock(%struct.Qdisc* %268)
  %270 = load %struct.sk_buff**, %struct.sk_buff*** %13, align 8
  %271 = call i32 @choke_free(%struct.sk_buff** %270)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %272

272:                                              ; preds = %267, %117, %93, %84, %53, %41, %31
  %273 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %273)
  %274 = load i32, i32* %4, align 4
  ret i32 %274
}

declare dso_local %struct.choke_sched_data* @qdisc_priv(%struct.Qdisc*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local %struct.tc_red_qopt* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @red_check_params(i32, i32, i32) #1

declare dso_local i32 @roundup_pow_of_two(i64) #1

declare dso_local %struct.sk_buff** @kvmalloc_array(i32, i32, i32) #1

declare dso_local i32 @sch_tree_lock(%struct.Qdisc*) #1

declare dso_local i64 @qdisc_pkt_len(%struct.sk_buff*) #1

declare dso_local i32 @qdisc_qstats_backlog_dec(%struct.Qdisc*, %struct.sk_buff*) #1

declare dso_local i32 @rtnl_qdisc_drop(%struct.sk_buff*, %struct.Qdisc*) #1

declare dso_local i32 @qdisc_tree_reduce_backlog(%struct.Qdisc*, i32, i32) #1

declare dso_local i32 @red_set_parms(i32*, i32, i32, i32, i32, i32, %struct.tc_red_qopt*, i32) #1

declare dso_local i32 @red_set_vars(i32*) #1

declare dso_local i32 @red_end_of_idle_period(i32*) #1

declare dso_local i32 @sch_tree_unlock(%struct.Qdisc*) #1

declare dso_local i32 @choke_free(%struct.sk_buff**) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
