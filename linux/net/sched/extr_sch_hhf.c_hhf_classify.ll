; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_hhf.c_hhf_classify.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_hhf.c_hhf_classify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { i32 }
%struct.hhf_sched_data = type { i64, i64, i64**, i64, i32, i32*, i32*, i32 }
%struct.hh_flow_state = type { i64, i64 }

@HHF_ARRAYS_CNT = common dso_local global i32 0, align 4
@HHF_ARRAYS_LEN = common dso_local global i32 0, align 4
@HHF_BIT_MASK = common dso_local global i64 0, align 8
@WDRR_BUCKET_FOR_HH = common dso_local global i32 0, align 4
@HHF_BIT_MASK_LEN = common dso_local global i64 0, align 8
@WDRR_BUCKET_FOR_NON_HH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.Qdisc*)* @hhf_classify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hhf_classify(%struct.sk_buff* %0, %struct.Qdisc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.hhf_sched_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.hh_flow_state*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %5, align 8
  %21 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %22 = call %struct.hhf_sched_data* @qdisc_priv(%struct.Qdisc* %21)
  store %struct.hhf_sched_data* %22, %struct.hhf_sched_data** %6, align 8
  %23 = load i32, i32* @HHF_ARRAYS_CNT, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %10, align 8
  %26 = alloca i64, i64 %24, align 16
  store i64 %24, i64* %11, align 8
  %27 = call i64 (...) @hhf_time_stamp()
  store i64 %27, i64* %18, align 8
  %28 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %6, align 8
  %29 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %6, align 8
  %32 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %30, %33
  store i64 %34, i64* %17, align 8
  %35 = load i64, i64* %17, align 8
  %36 = load i64, i64* %18, align 8
  %37 = call i64 @hhf_time_before(i64 %35, i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %61

39:                                               ; preds = %2
  store i32 0, i32* %16, align 4
  br label %40

40:                                               ; preds = %54, %39
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* @HHF_ARRAYS_CNT, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %40
  %45 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %6, align 8
  %46 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %45, i32 0, i32 6
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %16, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @HHF_ARRAYS_LEN, align 4
  %53 = call i32 @bitmap_zero(i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %44
  %55 = load i32, i32* %16, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %16, align 4
  br label %40

57:                                               ; preds = %40
  %58 = load i64, i64* %18, align 8
  %59 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %6, align 8
  %60 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %57, %2
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %6, align 8
  %64 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %63, i32 0, i32 7
  %65 = call i64 @skb_get_hash_perturb(%struct.sk_buff* %62, i32* %64)
  store i64 %65, i64* %8, align 8
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* @HHF_BIT_MASK, align 8
  %68 = and i64 %66, %67
  store i64 %68, i64* %12, align 8
  %69 = load i64, i64* %8, align 8
  %70 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %6, align 8
  %71 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %70, i32 0, i32 5
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* %12, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %6, align 8
  %76 = call %struct.hh_flow_state* @seek_list(i64 %69, i32* %74, %struct.hhf_sched_data* %75)
  store %struct.hh_flow_state* %76, %struct.hh_flow_state** %13, align 8
  %77 = load %struct.hh_flow_state*, %struct.hh_flow_state** %13, align 8
  %78 = icmp ne %struct.hh_flow_state* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %61
  %80 = load i64, i64* %18, align 8
  %81 = load %struct.hh_flow_state*, %struct.hh_flow_state** %13, align 8
  %82 = getelementptr inbounds %struct.hh_flow_state, %struct.hh_flow_state* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load i32, i32* @WDRR_BUCKET_FOR_HH, align 4
  store i32 %83, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %259

84:                                               ; preds = %61
  %85 = load i64, i64* %8, align 8
  store i64 %85, i64* %7, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %16, align 4
  br label %86

86:                                               ; preds = %107, %84
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* @HHF_ARRAYS_CNT, align 4
  %89 = sub nsw i32 %88, 1
  %90 = icmp slt i32 %87, %89
  br i1 %90, label %91, label %110

91:                                               ; preds = %86
  %92 = load i64, i64* %7, align 8
  %93 = load i64, i64* @HHF_BIT_MASK, align 8
  %94 = and i64 %92, %93
  %95 = load i32, i32* %16, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %26, i64 %96
  store i64 %94, i64* %97, align 8
  %98 = load i32, i32* %16, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %26, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %9, align 8
  %103 = xor i64 %102, %101
  store i64 %103, i64* %9, align 8
  %104 = load i64, i64* @HHF_BIT_MASK_LEN, align 8
  %105 = load i64, i64* %7, align 8
  %106 = lshr i64 %105, %104
  store i64 %106, i64* %7, align 8
  br label %107

107:                                              ; preds = %91
  %108 = load i32, i32* %16, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %16, align 4
  br label %86

110:                                              ; preds = %86
  %111 = load i64, i64* %9, align 8
  %112 = load i64, i64* %7, align 8
  %113 = xor i64 %111, %112
  %114 = load i32, i32* @HHF_ARRAYS_CNT, align 4
  %115 = sub nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %26, i64 %116
  store i64 %113, i64* %117, align 8
  %118 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %119 = call i64 @qdisc_pkt_len(%struct.sk_buff* %118)
  store i64 %119, i64* %14, align 8
  store i64 4294967295, i64* %15, align 8
  store i32 0, i32* %16, align 4
  br label %120

120:                                              ; preds = %185, %110
  %121 = load i32, i32* %16, align 4
  %122 = load i32, i32* @HHF_ARRAYS_CNT, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %188

124:                                              ; preds = %120
  %125 = load i32, i32* %16, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i64, i64* %26, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %6, align 8
  %130 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %129, i32 0, i32 6
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %16, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @test_bit(i64 %128, i32 %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %163, label %138

138:                                              ; preds = %124
  %139 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %6, align 8
  %140 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %139, i32 0, i32 2
  %141 = load i64**, i64*** %140, align 8
  %142 = load i32, i32* %16, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i64*, i64** %141, i64 %143
  %145 = load i64*, i64** %144, align 8
  %146 = load i32, i32* %16, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i64, i64* %26, i64 %147
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds i64, i64* %145, i64 %149
  store i64 0, i64* %150, align 8
  %151 = load i32, i32* %16, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i64, i64* %26, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %6, align 8
  %156 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %155, i32 0, i32 6
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %16, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @__set_bit(i64 %154, i32 %161)
  br label %163

163:                                              ; preds = %138, %124
  %164 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %6, align 8
  %165 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %164, i32 0, i32 2
  %166 = load i64**, i64*** %165, align 8
  %167 = load i32, i32* %16, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i64*, i64** %166, i64 %168
  %170 = load i64*, i64** %169, align 8
  %171 = load i32, i32* %16, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i64, i64* %26, i64 %172
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds i64, i64* %170, i64 %174
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* %14, align 8
  %178 = add i64 %176, %177
  store i64 %178, i64* %20, align 8
  %179 = load i64, i64* %15, align 8
  %180 = load i64, i64* %20, align 8
  %181 = icmp ugt i64 %179, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %163
  %183 = load i64, i64* %20, align 8
  store i64 %183, i64* %15, align 8
  br label %184

184:                                              ; preds = %182, %163
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %16, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %16, align 4
  br label %120

188:                                              ; preds = %120
  %189 = load i64, i64* %15, align 8
  %190 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %6, align 8
  %191 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %190, i32 0, i32 3
  %192 = load i64, i64* %191, align 8
  %193 = icmp ugt i64 %189, %192
  br i1 %193, label %194, label %218

194:                                              ; preds = %188
  %195 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %6, align 8
  %196 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %195, i32 0, i32 5
  %197 = load i32*, i32** %196, align 8
  %198 = load i64, i64* %12, align 8
  %199 = getelementptr inbounds i32, i32* %197, i64 %198
  %200 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %6, align 8
  %201 = call %struct.hh_flow_state* @alloc_new_hh(i32* %199, %struct.hhf_sched_data* %200)
  store %struct.hh_flow_state* %201, %struct.hh_flow_state** %13, align 8
  %202 = load %struct.hh_flow_state*, %struct.hh_flow_state** %13, align 8
  %203 = icmp ne %struct.hh_flow_state* %202, null
  br i1 %203, label %206, label %204

204:                                              ; preds = %194
  %205 = load i32, i32* @WDRR_BUCKET_FOR_NON_HH, align 4
  store i32 %205, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %259

206:                                              ; preds = %194
  %207 = load i64, i64* %8, align 8
  %208 = load %struct.hh_flow_state*, %struct.hh_flow_state** %13, align 8
  %209 = getelementptr inbounds %struct.hh_flow_state, %struct.hh_flow_state* %208, i32 0, i32 1
  store i64 %207, i64* %209, align 8
  %210 = load i64, i64* %18, align 8
  %211 = load %struct.hh_flow_state*, %struct.hh_flow_state** %13, align 8
  %212 = getelementptr inbounds %struct.hh_flow_state, %struct.hh_flow_state* %211, i32 0, i32 0
  store i64 %210, i64* %212, align 8
  %213 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %6, align 8
  %214 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 8
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %214, align 8
  %217 = load i32, i32* @WDRR_BUCKET_FOR_HH, align 4
  store i32 %217, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %259

218:                                              ; preds = %188
  store i32 0, i32* %16, align 4
  br label %219

219:                                              ; preds = %254, %218
  %220 = load i32, i32* %16, align 4
  %221 = load i32, i32* @HHF_ARRAYS_CNT, align 4
  %222 = icmp slt i32 %220, %221
  br i1 %222, label %223, label %257

223:                                              ; preds = %219
  %224 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %6, align 8
  %225 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %224, i32 0, i32 2
  %226 = load i64**, i64*** %225, align 8
  %227 = load i32, i32* %16, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i64*, i64** %226, i64 %228
  %230 = load i64*, i64** %229, align 8
  %231 = load i32, i32* %16, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i64, i64* %26, i64 %232
  %234 = load i64, i64* %233, align 8
  %235 = getelementptr inbounds i64, i64* %230, i64 %234
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* %15, align 8
  %238 = icmp ult i64 %236, %237
  br i1 %238, label %239, label %253

239:                                              ; preds = %223
  %240 = load i64, i64* %15, align 8
  %241 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %6, align 8
  %242 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %241, i32 0, i32 2
  %243 = load i64**, i64*** %242, align 8
  %244 = load i32, i32* %16, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i64*, i64** %243, i64 %245
  %247 = load i64*, i64** %246, align 8
  %248 = load i32, i32* %16, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i64, i64* %26, i64 %249
  %251 = load i64, i64* %250, align 8
  %252 = getelementptr inbounds i64, i64* %247, i64 %251
  store i64 %240, i64* %252, align 8
  br label %253

253:                                              ; preds = %239, %223
  br label %254

254:                                              ; preds = %253
  %255 = load i32, i32* %16, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %16, align 4
  br label %219

257:                                              ; preds = %219
  %258 = load i32, i32* @WDRR_BUCKET_FOR_NON_HH, align 4
  store i32 %258, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %259

259:                                              ; preds = %257, %206, %204, %79
  %260 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %260)
  %261 = load i32, i32* %3, align 4
  ret i32 %261
}

declare dso_local %struct.hhf_sched_data* @qdisc_priv(%struct.Qdisc*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @hhf_time_stamp(...) #1

declare dso_local i64 @hhf_time_before(i64, i64) #1

declare dso_local i32 @bitmap_zero(i32, i32) #1

declare dso_local i64 @skb_get_hash_perturb(%struct.sk_buff*, i32*) #1

declare dso_local %struct.hh_flow_state* @seek_list(i64, i32*, %struct.hhf_sched_data*) #1

declare dso_local i64 @qdisc_pkt_len(%struct.sk_buff*) #1

declare dso_local i32 @test_bit(i64, i32) #1

declare dso_local i32 @__set_bit(i64, i32) #1

declare dso_local %struct.hh_flow_state* @alloc_new_hh(i32*, %struct.hhf_sched_data*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
