; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_budget.c_ubifs_release_budget.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_budget.c_ubifs_release_budget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i64, i32, i64, i64 }
%struct.ubifs_budget_req = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }

@UBIFS_MAX_INO_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubifs_release_budget(%struct.ubifs_info* %0, %struct.ubifs_budget_req* %1) #0 {
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca %struct.ubifs_budget_req*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  store %struct.ubifs_budget_req* %1, %struct.ubifs_budget_req** %4, align 8
  %5 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %6 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %7 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp sle i32 %8, 1
  %10 = zext i1 %9 to i32
  %11 = call i32 @ubifs_assert(%struct.ubifs_info* %5, i32 %10)
  %12 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %13 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %14 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp sle i32 %15, 1
  %17 = zext i1 %16 to i32
  %18 = call i32 @ubifs_assert(%struct.ubifs_info* %12, i32 %17)
  %19 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %20 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %21 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = icmp sle i32 %22, 1
  %24 = zext i1 %23 to i32
  %25 = call i32 @ubifs_assert(%struct.ubifs_info* %19, i32 %24)
  %26 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %27 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %28 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = icmp sle i32 %29, 1
  %31 = zext i1 %30 to i32
  %32 = call i32 @ubifs_assert(%struct.ubifs_info* %26, i32 %31)
  %33 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %34 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %35 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = icmp sle i32 %36, 1
  %38 = zext i1 %37 to i32
  %39 = call i32 @ubifs_assert(%struct.ubifs_info* %33, i32 %38)
  %40 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %41 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %42 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @UBIFS_MAX_INO_DATA, align 4
  %45 = icmp sle i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @ubifs_assert(%struct.ubifs_info* %40, i32 %46)
  %48 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %49 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %50 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = icmp sle i32 %51, 4
  %53 = zext i1 %52 to i32
  %54 = call i32 @ubifs_assert(%struct.ubifs_info* %48, i32 %53)
  %55 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %56 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %57 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @UBIFS_MAX_INO_DATA, align 4
  %60 = mul nsw i32 %59, 4
  %61 = icmp sle i32 %58, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @ubifs_assert(%struct.ubifs_info* %55, i32 %62)
  %64 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %65 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %66 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, 7
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i32 @ubifs_assert(%struct.ubifs_info* %64, i32 %71)
  %73 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %74 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %75 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 7
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i32 @ubifs_assert(%struct.ubifs_info* %73, i32 %80)
  %82 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %83 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %82, i32 0, i32 11
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %108, label %86

86:                                               ; preds = %2
  %87 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %88 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %89 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %88, i32 0, i32 8
  %90 = load i64, i64* %89, align 8
  %91 = icmp sge i64 %90, 0
  %92 = zext i1 %91 to i32
  %93 = call i32 @ubifs_assert(%struct.ubifs_info* %87, i32 %92)
  %94 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %95 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %96 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %95, i32 0, i32 9
  %97 = load i64, i64* %96, align 8
  %98 = icmp sge i64 %97, 0
  %99 = zext i1 %98 to i32
  %100 = call i32 @ubifs_assert(%struct.ubifs_info* %94, i32 %99)
  %101 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %102 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %103 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %102, i32 0, i32 10
  %104 = load i64, i64* %103, align 8
  %105 = icmp sge i64 %104, 0
  %106 = zext i1 %105 to i32
  %107 = call i32 @ubifs_assert(%struct.ubifs_info* %101, i32 %106)
  br label %108

108:                                              ; preds = %86, %2
  %109 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %110 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %109, i32 0, i32 11
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %129

113:                                              ; preds = %108
  %114 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %115 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %116 = call i64 @calc_data_growth(%struct.ubifs_info* %114, %struct.ubifs_budget_req* %115)
  %117 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %118 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %117, i32 0, i32 9
  store i64 %116, i64* %118, align 8
  %119 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %120 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %121 = call i64 @calc_dd_growth(%struct.ubifs_info* %119, %struct.ubifs_budget_req* %120)
  %122 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %123 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %122, i32 0, i32 10
  store i64 %121, i64* %123, align 8
  %124 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %125 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %126 = call i64 @calc_idx_growth(%struct.ubifs_info* %124, %struct.ubifs_budget_req* %125)
  %127 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %128 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %127, i32 0, i32 8
  store i64 %126, i64* %128, align 8
  br label %129

129:                                              ; preds = %113, %108
  %130 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %131 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %130, i32 0, i32 9
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %140, label %134

134:                                              ; preds = %129
  %135 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %136 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %135, i32 0, i32 10
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %134
  br label %264

140:                                              ; preds = %134, %129
  %141 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %142 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 5
  store i64 0, i64* %143, align 8
  %144 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %145 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 6
  store i64 0, i64* %146, align 8
  %147 = call i32 (...) @smp_wmb()
  %148 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %149 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %148, i32 0, i32 1
  %150 = call i32 @spin_lock(i32* %149)
  %151 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %152 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %151, i32 0, i32 8
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %155 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = sext i32 %157 to i64
  %159 = sub nsw i64 %158, %153
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %156, align 8
  %161 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %162 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %161, i32 0, i32 8
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %165 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = sext i32 %167 to i64
  %169 = add nsw i64 %168, %163
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %166, align 8
  %171 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %172 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %171, i32 0, i32 9
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %175 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = sext i32 %177 to i64
  %179 = sub nsw i64 %178, %173
  %180 = trunc i64 %179 to i32
  store i32 %180, i32* %176, align 4
  %181 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %182 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %181, i32 0, i32 10
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %185 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = sext i32 %187 to i64
  %189 = sub nsw i64 %188, %183
  %190 = trunc i64 %189 to i32
  store i32 %190, i32* %186, align 8
  %191 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %192 = call i64 @ubifs_calc_min_idx_lebs(%struct.ubifs_info* %191)
  %193 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %194 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 3
  store i64 %192, i64* %195, align 8
  %196 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %197 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %198 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = icmp sge i32 %200, 0
  %202 = zext i1 %201 to i32
  %203 = call i32 @ubifs_assert(%struct.ubifs_info* %196, i32 %202)
  %204 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %205 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %206 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = icmp sge i32 %208, 0
  %210 = zext i1 %209 to i32
  %211 = call i32 @ubifs_assert(%struct.ubifs_info* %204, i32 %210)
  %212 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %213 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %214 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %213, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = icmp sge i32 %216, 0
  %218 = zext i1 %217 to i32
  %219 = call i32 @ubifs_assert(%struct.ubifs_info* %212, i32 %218)
  %220 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %221 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %222 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %221, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 3
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %226 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = icmp slt i64 %224, %227
  %229 = zext i1 %228 to i32
  %230 = call i32 @ubifs_assert(%struct.ubifs_info* %220, i32 %229)
  %231 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %232 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %233 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %232, i32 0, i32 2
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = and i32 %235, 7
  %237 = icmp ne i32 %236, 0
  %238 = xor i1 %237, true
  %239 = zext i1 %238 to i32
  %240 = call i32 @ubifs_assert(%struct.ubifs_info* %231, i32 %239)
  %241 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %242 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %243 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = and i32 %245, 7
  %247 = icmp ne i32 %246, 0
  %248 = xor i1 %247, true
  %249 = zext i1 %248 to i32
  %250 = call i32 @ubifs_assert(%struct.ubifs_info* %241, i32 %249)
  %251 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %252 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %253 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %252, i32 0, i32 2
  %254 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = and i32 %255, 7
  %257 = icmp ne i32 %256, 0
  %258 = xor i1 %257, true
  %259 = zext i1 %258 to i32
  %260 = call i32 @ubifs_assert(%struct.ubifs_info* %251, i32 %259)
  %261 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %262 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %261, i32 0, i32 1
  %263 = call i32 @spin_unlock(i32* %262)
  br label %264

264:                                              ; preds = %140, %139
  ret void
}

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i64 @calc_data_growth(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local i64 @calc_dd_growth(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local i64 @calc_idx_growth(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @ubifs_calc_min_idx_lebs(%struct.ubifs_info*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
