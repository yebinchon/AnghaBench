; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_sfq.c_sfq_change.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_sfq.c_sfq_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nlattr = type { i64 }
%struct.sfq_sched_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.tc_sfq_qopt = type { i32, i32, i32, i32, i64 }
%struct.tc_sfq_qopt_v1 = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.red_parms = type { i32 }
%struct.sk_buff = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@SFQ_MAX_FLOWS = common dso_local global i32 0, align 4
@SFQ_MAX_DEPTH = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*)* @sfq_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfq_change(%struct.Qdisc* %0, %struct.nlattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca %struct.sfq_sched_data*, align 8
  %7 = alloca %struct.tc_sfq_qopt*, align 8
  %8 = alloca %struct.tc_sfq_qopt_v1*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.red_parms*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.nlattr* %1, %struct.nlattr** %5, align 8
  %14 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %15 = call %struct.sfq_sched_data* @qdisc_priv(%struct.Qdisc* %14)
  store %struct.sfq_sched_data* %15, %struct.sfq_sched_data** %6, align 8
  %16 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %17 = call i8* @nla_data(%struct.nlattr* %16)
  %18 = bitcast i8* %17 to %struct.tc_sfq_qopt*
  store %struct.tc_sfq_qopt* %18, %struct.tc_sfq_qopt** %7, align 8
  store %struct.tc_sfq_qopt_v1* null, %struct.tc_sfq_qopt_v1** %8, align 8
  store i32 0, i32* %10, align 4
  store %struct.red_parms* null, %struct.red_parms** %11, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %12, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %13, align 8
  %19 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %20 = getelementptr inbounds %struct.nlattr, %struct.nlattr* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @nla_attr_size(i32 24)
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %310

27:                                               ; preds = %2
  %28 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %29 = getelementptr inbounds %struct.nlattr, %struct.nlattr* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @nla_attr_size(i32 40)
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %35 = call i8* @nla_data(%struct.nlattr* %34)
  %36 = bitcast i8* %35 to %struct.tc_sfq_qopt_v1*
  store %struct.tc_sfq_qopt_v1* %36, %struct.tc_sfq_qopt_v1** %8, align 8
  br label %37

37:                                               ; preds = %33, %27
  %38 = load %struct.tc_sfq_qopt*, %struct.tc_sfq_qopt** %7, align 8
  %39 = getelementptr inbounds %struct.tc_sfq_qopt, %struct.tc_sfq_qopt* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %37
  %43 = load %struct.tc_sfq_qopt*, %struct.tc_sfq_qopt** %7, align 8
  %44 = getelementptr inbounds %struct.tc_sfq_qopt, %struct.tc_sfq_qopt* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @is_power_of_2(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load %struct.tc_sfq_qopt*, %struct.tc_sfq_qopt** %7, align 8
  %50 = getelementptr inbounds %struct.tc_sfq_qopt, %struct.tc_sfq_qopt* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp sgt i32 %51, 65536
  br i1 %52, label %53, label %56

53:                                               ; preds = %48, %42
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %310

56:                                               ; preds = %48, %37
  %57 = load %struct.tc_sfq_qopt_v1*, %struct.tc_sfq_qopt_v1** %8, align 8
  %58 = icmp ne %struct.tc_sfq_qopt_v1* %57, null
  br i1 %58, label %59, label %74

59:                                               ; preds = %56
  %60 = load %struct.tc_sfq_qopt_v1*, %struct.tc_sfq_qopt_v1** %8, align 8
  %61 = getelementptr inbounds %struct.tc_sfq_qopt_v1, %struct.tc_sfq_qopt_v1* %60, i32 0, i32 8
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.tc_sfq_qopt_v1*, %struct.tc_sfq_qopt_v1** %8, align 8
  %64 = getelementptr inbounds %struct.tc_sfq_qopt_v1, %struct.tc_sfq_qopt_v1* %63, i32 0, i32 7
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.tc_sfq_qopt_v1*, %struct.tc_sfq_qopt_v1** %8, align 8
  %67 = getelementptr inbounds %struct.tc_sfq_qopt_v1, %struct.tc_sfq_qopt_v1* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @red_check_params(i64 %62, i32 %65, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %59
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %310

74:                                               ; preds = %59, %56
  %75 = load %struct.tc_sfq_qopt_v1*, %struct.tc_sfq_qopt_v1** %8, align 8
  %76 = icmp ne %struct.tc_sfq_qopt_v1* %75, null
  br i1 %76, label %77, label %91

77:                                               ; preds = %74
  %78 = load %struct.tc_sfq_qopt_v1*, %struct.tc_sfq_qopt_v1** %8, align 8
  %79 = getelementptr inbounds %struct.tc_sfq_qopt_v1, %struct.tc_sfq_qopt_v1* %78, i32 0, i32 8
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %77
  %83 = load i32, i32* @GFP_KERNEL, align 4
  %84 = call %struct.red_parms* @kmalloc(i32 4, i32 %83)
  store %struct.red_parms* %84, %struct.red_parms** %11, align 8
  %85 = load %struct.red_parms*, %struct.red_parms** %11, align 8
  %86 = icmp ne %struct.red_parms* %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %310

90:                                               ; preds = %82
  br label %91

91:                                               ; preds = %90, %77, %74
  %92 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %93 = call i32 @sch_tree_lock(%struct.Qdisc* %92)
  %94 = load %struct.tc_sfq_qopt*, %struct.tc_sfq_qopt** %7, align 8
  %95 = getelementptr inbounds %struct.tc_sfq_qopt, %struct.tc_sfq_qopt* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %91
  %99 = load %struct.tc_sfq_qopt*, %struct.tc_sfq_qopt** %7, align 8
  %100 = getelementptr inbounds %struct.tc_sfq_qopt, %struct.tc_sfq_qopt* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %103 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %102, i32 0, i32 10
  store i64 %101, i64* %103, align 8
  %104 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %105 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %104, i32 0, i32 10
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @SFQ_ALLOT_SIZE(i64 %106)
  %108 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %109 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %108, i32 0, i32 11
  store i32 %107, i32* %109, align 8
  br label %110

110:                                              ; preds = %98, %91
  %111 = load %struct.tc_sfq_qopt*, %struct.tc_sfq_qopt** %7, align 8
  %112 = getelementptr inbounds %struct.tc_sfq_qopt, %struct.tc_sfq_qopt* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @HZ, align 4
  %115 = mul nsw i32 %113, %114
  %116 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %117 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load %struct.tc_sfq_qopt*, %struct.tc_sfq_qopt** %7, align 8
  %119 = getelementptr inbounds %struct.tc_sfq_qopt, %struct.tc_sfq_qopt* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %132

122:                                              ; preds = %110
  %123 = load i32, i32* @u32, align 4
  %124 = load %struct.tc_sfq_qopt*, %struct.tc_sfq_qopt** %7, align 8
  %125 = getelementptr inbounds %struct.tc_sfq_qopt, %struct.tc_sfq_qopt* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @SFQ_MAX_FLOWS, align 4
  %128 = call i8* @min_t(i32 %123, i32 %126, i32 %127)
  %129 = ptrtoint i8* %128 to i32
  %130 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %131 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  br label %132

132:                                              ; preds = %122, %110
  %133 = load %struct.tc_sfq_qopt*, %struct.tc_sfq_qopt** %7, align 8
  %134 = getelementptr inbounds %struct.tc_sfq_qopt, %struct.tc_sfq_qopt* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %154

137:                                              ; preds = %132
  %138 = load %struct.tc_sfq_qopt*, %struct.tc_sfq_qopt** %7, align 8
  %139 = getelementptr inbounds %struct.tc_sfq_qopt, %struct.tc_sfq_qopt* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %142 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 8
  %143 = load i32, i32* @u32, align 4
  %144 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %145 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %148 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = call i8* @min_t(i32 %143, i32 %146, i32 %149)
  %151 = ptrtoint i8* %150 to i32
  %152 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %153 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 4
  br label %154

154:                                              ; preds = %137, %132
  %155 = load %struct.tc_sfq_qopt_v1*, %struct.tc_sfq_qopt_v1** %8, align 8
  %156 = icmp ne %struct.tc_sfq_qopt_v1* %155, null
  br i1 %156, label %157, label %214

157:                                              ; preds = %154
  %158 = load %struct.tc_sfq_qopt_v1*, %struct.tc_sfq_qopt_v1** %8, align 8
  %159 = getelementptr inbounds %struct.tc_sfq_qopt_v1, %struct.tc_sfq_qopt_v1* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %172

162:                                              ; preds = %157
  %163 = load i32, i32* @u32, align 4
  %164 = load %struct.tc_sfq_qopt_v1*, %struct.tc_sfq_qopt_v1** %8, align 8
  %165 = getelementptr inbounds %struct.tc_sfq_qopt_v1, %struct.tc_sfq_qopt_v1* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @SFQ_MAX_DEPTH, align 4
  %168 = call i8* @min_t(i32 %163, i32 %166, i32 %167)
  %169 = ptrtoint i8* %168 to i32
  %170 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %171 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %170, i32 0, i32 3
  store i32 %169, i32* %171, align 4
  br label %172

172:                                              ; preds = %162, %157
  %173 = load %struct.red_parms*, %struct.red_parms** %11, align 8
  %174 = icmp ne %struct.red_parms* %173, null
  br i1 %174, label %175, label %203

175:                                              ; preds = %172
  %176 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %177 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %176, i32 0, i32 9
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.red_parms*, %struct.red_parms** %11, align 8
  %180 = call i32 @swap(i32 %178, %struct.red_parms* %179)
  %181 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %182 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %181, i32 0, i32 9
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.tc_sfq_qopt_v1*, %struct.tc_sfq_qopt_v1** %8, align 8
  %185 = getelementptr inbounds %struct.tc_sfq_qopt_v1, %struct.tc_sfq_qopt_v1* %184, i32 0, i32 8
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.tc_sfq_qopt_v1*, %struct.tc_sfq_qopt_v1** %8, align 8
  %188 = getelementptr inbounds %struct.tc_sfq_qopt_v1, %struct.tc_sfq_qopt_v1* %187, i32 0, i32 7
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.tc_sfq_qopt_v1*, %struct.tc_sfq_qopt_v1** %8, align 8
  %191 = getelementptr inbounds %struct.tc_sfq_qopt_v1, %struct.tc_sfq_qopt_v1* %190, i32 0, i32 6
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.tc_sfq_qopt_v1*, %struct.tc_sfq_qopt_v1** %8, align 8
  %194 = getelementptr inbounds %struct.tc_sfq_qopt_v1, %struct.tc_sfq_qopt_v1* %193, i32 0, i32 5
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.tc_sfq_qopt_v1*, %struct.tc_sfq_qopt_v1** %8, align 8
  %197 = getelementptr inbounds %struct.tc_sfq_qopt_v1, %struct.tc_sfq_qopt_v1* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.tc_sfq_qopt_v1*, %struct.tc_sfq_qopt_v1** %8, align 8
  %200 = getelementptr inbounds %struct.tc_sfq_qopt_v1, %struct.tc_sfq_qopt_v1* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @red_set_parms(i32 %183, i64 %186, i32 %189, i32 %192, i32 %195, i32 %198, i32* null, i32 %201)
  br label %203

203:                                              ; preds = %175, %172
  %204 = load %struct.tc_sfq_qopt_v1*, %struct.tc_sfq_qopt_v1** %8, align 8
  %205 = getelementptr inbounds %struct.tc_sfq_qopt_v1, %struct.tc_sfq_qopt_v1* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %208 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %207, i32 0, i32 8
  store i32 %206, i32* %208, align 8
  %209 = load %struct.tc_sfq_qopt_v1*, %struct.tc_sfq_qopt_v1** %8, align 8
  %210 = getelementptr inbounds %struct.tc_sfq_qopt_v1, %struct.tc_sfq_qopt_v1* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %213 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %212, i32 0, i32 7
  store i32 %211, i32* %213, align 4
  br label %214

214:                                              ; preds = %203, %154
  %215 = load %struct.tc_sfq_qopt*, %struct.tc_sfq_qopt** %7, align 8
  %216 = getelementptr inbounds %struct.tc_sfq_qopt, %struct.tc_sfq_qopt* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %246

219:                                              ; preds = %214
  %220 = load i32, i32* @u32, align 4
  %221 = load %struct.tc_sfq_qopt*, %struct.tc_sfq_qopt** %7, align 8
  %222 = getelementptr inbounds %struct.tc_sfq_qopt, %struct.tc_sfq_qopt* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %225 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %228 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = mul nsw i32 %226, %229
  %231 = call i8* @min_t(i32 %220, i32 %223, i32 %230)
  %232 = ptrtoint i8* %231 to i32
  %233 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %234 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %233, i32 0, i32 4
  store i32 %232, i32* %234, align 8
  %235 = load i32, i32* @u32, align 4
  %236 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %237 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %240 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %239, i32 0, i32 4
  %241 = load i32, i32* %240, align 8
  %242 = call i8* @min_t(i32 %235, i32 %238, i32 %241)
  %243 = ptrtoint i8* %242 to i32
  %244 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %245 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %244, i32 0, i32 1
  store i32 %243, i32* %245, align 4
  br label %246

246:                                              ; preds = %219, %214
  %247 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %248 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  store i32 %250, i32* %9, align 4
  br label %251

251:                                              ; preds = %271, %246
  %252 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %253 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %257 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %256, i32 0, i32 4
  %258 = load i32, i32* %257, align 8
  %259 = icmp ugt i32 %255, %258
  br i1 %259, label %260, label %272

260:                                              ; preds = %251
  %261 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %262 = call i64 @sfq_drop(%struct.Qdisc* %261, %struct.sk_buff** %12)
  %263 = load i32, i32* %10, align 4
  %264 = zext i32 %263 to i64
  %265 = add nsw i64 %264, %262
  %266 = trunc i64 %265 to i32
  store i32 %266, i32* %10, align 4
  %267 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %268 = icmp ne %struct.sk_buff* %267, null
  br i1 %268, label %271, label %269

269:                                              ; preds = %260
  %270 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  store %struct.sk_buff* %270, %struct.sk_buff** %13, align 8
  br label %271

271:                                              ; preds = %269, %260
  br label %251

272:                                              ; preds = %251
  %273 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %274 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %275 = call i32 @rtnl_kfree_skbs(%struct.sk_buff* %273, %struct.sk_buff* %274)
  %276 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %277 = load i32, i32* %9, align 4
  %278 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %279 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = sub i32 %277, %281
  %283 = load i32, i32* %10, align 4
  %284 = call i32 @qdisc_tree_reduce_backlog(%struct.Qdisc* %276, i32 %282, i32 %283)
  %285 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %286 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %285, i32 0, i32 6
  %287 = call i32 @del_timer(i32* %286)
  %288 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %289 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %305

292:                                              ; preds = %272
  %293 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %294 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %293, i32 0, i32 6
  %295 = load i64, i64* @jiffies, align 8
  %296 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %297 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = sext i32 %298 to i64
  %300 = add nsw i64 %295, %299
  %301 = call i32 @mod_timer(i32* %294, i64 %300)
  %302 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %303 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %302, i32 0, i32 5
  %304 = call i32 @get_random_bytes(i32* %303, i32 4)
  br label %305

305:                                              ; preds = %292, %272
  %306 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %307 = call i32 @sch_tree_unlock(%struct.Qdisc* %306)
  %308 = load %struct.red_parms*, %struct.red_parms** %11, align 8
  %309 = call i32 @kfree(%struct.red_parms* %308)
  store i32 0, i32* %3, align 4
  br label %310

310:                                              ; preds = %305, %87, %71, %53, %24
  %311 = load i32, i32* %3, align 4
  ret i32 %311
}

declare dso_local %struct.sfq_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i8* @nla_data(%struct.nlattr*) #1

declare dso_local i64 @nla_attr_size(i32) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @red_check_params(i64, i32, i32) #1

declare dso_local %struct.red_parms* @kmalloc(i32, i32) #1

declare dso_local i32 @sch_tree_lock(%struct.Qdisc*) #1

declare dso_local i32 @SFQ_ALLOT_SIZE(i64) #1

declare dso_local i8* @min_t(i32, i32, i32) #1

declare dso_local i32 @swap(i32, %struct.red_parms*) #1

declare dso_local i32 @red_set_parms(i32, i64, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i64 @sfq_drop(%struct.Qdisc*, %struct.sk_buff**) #1

declare dso_local i32 @rtnl_kfree_skbs(%struct.sk_buff*, %struct.sk_buff*) #1

declare dso_local i32 @qdisc_tree_reduce_backlog(%struct.Qdisc*, i32, i32) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i32 @sch_tree_unlock(%struct.Qdisc*) #1

declare dso_local i32 @kfree(%struct.red_parms*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
