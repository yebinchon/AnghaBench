; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_delta_package.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_delta_package.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.msr_counter* }
%struct.msr_counter = type { i64, %struct.msr_counter* }
%struct.pkg_data = type { i32, i64*, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@BIC_Totl_c0 = common dso_local global i32 0, align 4
@BIC_Any_c0 = common dso_local global i32 0, align 4
@BIC_GFX_c0 = common dso_local global i32 0, align 4
@BIC_CPUGFX = common dso_local global i32 0, align 4
@BIC_Pkgpc3 = common dso_local global i32 0, align 4
@BIC_Pkgpc6 = common dso_local global i32 0, align 4
@BIC_Pkgpc7 = common dso_local global i32 0, align 4
@sys = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@FORMAT_RAW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @delta_package(%struct.pkg_data* %0, %struct.pkg_data* %1) #0 {
  %3 = alloca %struct.pkg_data*, align 8
  %4 = alloca %struct.pkg_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.msr_counter*, align 8
  store %struct.pkg_data* %0, %struct.pkg_data** %3, align 8
  store %struct.pkg_data* %1, %struct.pkg_data** %4, align 8
  %7 = load i32, i32* @BIC_Totl_c0, align 4
  %8 = call i64 @DO_BIC(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load %struct.pkg_data*, %struct.pkg_data** %3, align 8
  %12 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %11, i32 0, i32 22
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.pkg_data*, %struct.pkg_data** %4, align 8
  %15 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %14, i32 0, i32 22
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %13, %16
  %18 = load %struct.pkg_data*, %struct.pkg_data** %4, align 8
  %19 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %18, i32 0, i32 22
  store i64 %17, i64* %19, align 8
  br label %20

20:                                               ; preds = %10, %2
  %21 = load i32, i32* @BIC_Any_c0, align 4
  %22 = call i64 @DO_BIC(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load %struct.pkg_data*, %struct.pkg_data** %3, align 8
  %26 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %25, i32 0, i32 21
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.pkg_data*, %struct.pkg_data** %4, align 8
  %29 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %28, i32 0, i32 21
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %27, %30
  %32 = load %struct.pkg_data*, %struct.pkg_data** %4, align 8
  %33 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %32, i32 0, i32 21
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %24, %20
  %35 = load i32, i32* @BIC_GFX_c0, align 4
  %36 = call i64 @DO_BIC(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load %struct.pkg_data*, %struct.pkg_data** %3, align 8
  %40 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %39, i32 0, i32 20
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.pkg_data*, %struct.pkg_data** %4, align 8
  %43 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %42, i32 0, i32 20
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %41, %44
  %46 = load %struct.pkg_data*, %struct.pkg_data** %4, align 8
  %47 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %46, i32 0, i32 20
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %38, %34
  %49 = load i32, i32* @BIC_CPUGFX, align 4
  %50 = call i64 @DO_BIC(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %48
  %53 = load %struct.pkg_data*, %struct.pkg_data** %3, align 8
  %54 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %53, i32 0, i32 19
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.pkg_data*, %struct.pkg_data** %4, align 8
  %57 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %56, i32 0, i32 19
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %55, %58
  %60 = load %struct.pkg_data*, %struct.pkg_data** %4, align 8
  %61 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %60, i32 0, i32 19
  store i64 %59, i64* %61, align 8
  br label %62

62:                                               ; preds = %52, %48
  %63 = load %struct.pkg_data*, %struct.pkg_data** %3, align 8
  %64 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %63, i32 0, i32 18
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.pkg_data*, %struct.pkg_data** %4, align 8
  %67 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %66, i32 0, i32 18
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %65, %68
  %70 = load %struct.pkg_data*, %struct.pkg_data** %4, align 8
  %71 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %70, i32 0, i32 18
  store i64 %69, i64* %71, align 8
  %72 = load i32, i32* @BIC_Pkgpc3, align 4
  %73 = call i64 @DO_BIC(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %62
  %76 = load %struct.pkg_data*, %struct.pkg_data** %3, align 8
  %77 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %76, i32 0, i32 17
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.pkg_data*, %struct.pkg_data** %4, align 8
  %80 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %79, i32 0, i32 17
  %81 = load i64, i64* %80, align 8
  %82 = sub nsw i64 %78, %81
  %83 = load %struct.pkg_data*, %struct.pkg_data** %4, align 8
  %84 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %83, i32 0, i32 17
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %75, %62
  %86 = load i32, i32* @BIC_Pkgpc6, align 4
  %87 = call i64 @DO_BIC(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %85
  %90 = load %struct.pkg_data*, %struct.pkg_data** %3, align 8
  %91 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %90, i32 0, i32 16
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.pkg_data*, %struct.pkg_data** %4, align 8
  %94 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %93, i32 0, i32 16
  %95 = load i64, i64* %94, align 8
  %96 = sub nsw i64 %92, %95
  %97 = load %struct.pkg_data*, %struct.pkg_data** %4, align 8
  %98 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %97, i32 0, i32 16
  store i64 %96, i64* %98, align 8
  br label %99

99:                                               ; preds = %89, %85
  %100 = load i32, i32* @BIC_Pkgpc7, align 4
  %101 = call i64 @DO_BIC(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %99
  %104 = load %struct.pkg_data*, %struct.pkg_data** %3, align 8
  %105 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %104, i32 0, i32 15
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.pkg_data*, %struct.pkg_data** %4, align 8
  %108 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %107, i32 0, i32 15
  %109 = load i64, i64* %108, align 8
  %110 = sub nsw i64 %106, %109
  %111 = load %struct.pkg_data*, %struct.pkg_data** %4, align 8
  %112 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %111, i32 0, i32 15
  store i64 %110, i64* %112, align 8
  br label %113

113:                                              ; preds = %103, %99
  %114 = load %struct.pkg_data*, %struct.pkg_data** %3, align 8
  %115 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %114, i32 0, i32 14
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.pkg_data*, %struct.pkg_data** %4, align 8
  %118 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %117, i32 0, i32 14
  %119 = load i64, i64* %118, align 8
  %120 = sub nsw i64 %116, %119
  %121 = load %struct.pkg_data*, %struct.pkg_data** %4, align 8
  %122 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %121, i32 0, i32 14
  store i64 %120, i64* %122, align 8
  %123 = load %struct.pkg_data*, %struct.pkg_data** %3, align 8
  %124 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %123, i32 0, i32 13
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.pkg_data*, %struct.pkg_data** %4, align 8
  %127 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %126, i32 0, i32 13
  %128 = load i64, i64* %127, align 8
  %129 = sub nsw i64 %125, %128
  %130 = load %struct.pkg_data*, %struct.pkg_data** %4, align 8
  %131 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %130, i32 0, i32 13
  store i64 %129, i64* %131, align 8
  %132 = load %struct.pkg_data*, %struct.pkg_data** %3, align 8
  %133 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %132, i32 0, i32 12
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.pkg_data*, %struct.pkg_data** %4, align 8
  %136 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %135, i32 0, i32 12
  %137 = load i64, i64* %136, align 8
  %138 = sub nsw i64 %134, %137
  %139 = load %struct.pkg_data*, %struct.pkg_data** %4, align 8
  %140 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %139, i32 0, i32 12
  store i64 %138, i64* %140, align 8
  %141 = load %struct.pkg_data*, %struct.pkg_data** %3, align 8
  %142 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %141, i32 0, i32 11
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.pkg_data*, %struct.pkg_data** %4, align 8
  %145 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %144, i32 0, i32 11
  %146 = load i64, i64* %145, align 8
  %147 = sub nsw i64 %143, %146
  %148 = load %struct.pkg_data*, %struct.pkg_data** %4, align 8
  %149 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %148, i32 0, i32 11
  store i64 %147, i64* %149, align 8
  %150 = load %struct.pkg_data*, %struct.pkg_data** %3, align 8
  %151 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %150, i32 0, i32 10
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.pkg_data*, %struct.pkg_data** %4, align 8
  %154 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %153, i32 0, i32 10
  %155 = load i64, i64* %154, align 8
  %156 = sub nsw i64 %152, %155
  %157 = load %struct.pkg_data*, %struct.pkg_data** %4, align 8
  %158 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %157, i32 0, i32 10
  store i64 %156, i64* %158, align 8
  %159 = load %struct.pkg_data*, %struct.pkg_data** %3, align 8
  %160 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %159, i32 0, i32 9
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.pkg_data*, %struct.pkg_data** %4, align 8
  %163 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %162, i32 0, i32 9
  store i32 %161, i32* %163, align 4
  %164 = load %struct.pkg_data*, %struct.pkg_data** %4, align 8
  %165 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.pkg_data*, %struct.pkg_data** %3, align 8
  %168 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp sgt i32 %166, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %113
  %172 = load %struct.pkg_data*, %struct.pkg_data** %4, align 8
  %173 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %172, i32 0, i32 0
  store i32 -1, i32* %173, align 8
  br label %184

174:                                              ; preds = %113
  %175 = load %struct.pkg_data*, %struct.pkg_data** %3, align 8
  %176 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.pkg_data*, %struct.pkg_data** %4, align 8
  %179 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = sub nsw i32 %177, %180
  %182 = load %struct.pkg_data*, %struct.pkg_data** %4, align 8
  %183 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 8
  br label %184

184:                                              ; preds = %174, %171
  %185 = load %struct.pkg_data*, %struct.pkg_data** %3, align 8
  %186 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %185, i32 0, i32 8
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.pkg_data*, %struct.pkg_data** %4, align 8
  %189 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %188, i32 0, i32 8
  store i32 %187, i32* %189, align 8
  %190 = load %struct.pkg_data*, %struct.pkg_data** %3, align 8
  %191 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %190, i32 0, i32 7
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.pkg_data*, %struct.pkg_data** %4, align 8
  %194 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %193, i32 0, i32 7
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @DELTA_WRAP32(i32 %192, i32 %195)
  %197 = load %struct.pkg_data*, %struct.pkg_data** %3, align 8
  %198 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %197, i32 0, i32 6
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.pkg_data*, %struct.pkg_data** %4, align 8
  %201 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %200, i32 0, i32 6
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @DELTA_WRAP32(i32 %199, i32 %202)
  %204 = load %struct.pkg_data*, %struct.pkg_data** %3, align 8
  %205 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %204, i32 0, i32 5
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.pkg_data*, %struct.pkg_data** %4, align 8
  %208 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %207, i32 0, i32 5
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @DELTA_WRAP32(i32 %206, i32 %209)
  %211 = load %struct.pkg_data*, %struct.pkg_data** %3, align 8
  %212 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.pkg_data*, %struct.pkg_data** %4, align 8
  %215 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @DELTA_WRAP32(i32 %213, i32 %216)
  %218 = load %struct.pkg_data*, %struct.pkg_data** %3, align 8
  %219 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.pkg_data*, %struct.pkg_data** %4, align 8
  %222 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @DELTA_WRAP32(i32 %220, i32 %223)
  %225 = load %struct.pkg_data*, %struct.pkg_data** %3, align 8
  %226 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.pkg_data*, %struct.pkg_data** %4, align 8
  %229 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @DELTA_WRAP32(i32 %227, i32 %230)
  store i32 0, i32* %5, align 4
  %232 = load %struct.msr_counter*, %struct.msr_counter** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sys, i32 0, i32 0), align 8
  store %struct.msr_counter* %232, %struct.msr_counter** %6, align 8
  br label %233

233:                                              ; preds = %279, %184
  %234 = load %struct.msr_counter*, %struct.msr_counter** %6, align 8
  %235 = icmp ne %struct.msr_counter* %234, null
  br i1 %235, label %236, label %285

236:                                              ; preds = %233
  %237 = load %struct.msr_counter*, %struct.msr_counter** %6, align 8
  %238 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @FORMAT_RAW, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %256

242:                                              ; preds = %236
  %243 = load %struct.pkg_data*, %struct.pkg_data** %3, align 8
  %244 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %243, i32 0, i32 1
  %245 = load i64*, i64** %244, align 8
  %246 = load i32, i32* %5, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i64, i64* %245, i64 %247
  %249 = load i64, i64* %248, align 8
  %250 = load %struct.pkg_data*, %struct.pkg_data** %4, align 8
  %251 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %250, i32 0, i32 1
  %252 = load i64*, i64** %251, align 8
  %253 = load i32, i32* %5, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i64, i64* %252, i64 %254
  store i64 %249, i64* %255, align 8
  br label %278

256:                                              ; preds = %236
  %257 = load %struct.pkg_data*, %struct.pkg_data** %3, align 8
  %258 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %257, i32 0, i32 1
  %259 = load i64*, i64** %258, align 8
  %260 = load i32, i32* %5, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i64, i64* %259, i64 %261
  %263 = load i64, i64* %262, align 8
  %264 = load %struct.pkg_data*, %struct.pkg_data** %4, align 8
  %265 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %264, i32 0, i32 1
  %266 = load i64*, i64** %265, align 8
  %267 = load i32, i32* %5, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i64, i64* %266, i64 %268
  %270 = load i64, i64* %269, align 8
  %271 = sub nsw i64 %263, %270
  %272 = load %struct.pkg_data*, %struct.pkg_data** %4, align 8
  %273 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %272, i32 0, i32 1
  %274 = load i64*, i64** %273, align 8
  %275 = load i32, i32* %5, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i64, i64* %274, i64 %276
  store i64 %271, i64* %277, align 8
  br label %278

278:                                              ; preds = %256, %242
  br label %279

279:                                              ; preds = %278
  %280 = load i32, i32* %5, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %5, align 4
  %282 = load %struct.msr_counter*, %struct.msr_counter** %6, align 8
  %283 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %282, i32 0, i32 1
  %284 = load %struct.msr_counter*, %struct.msr_counter** %283, align 8
  store %struct.msr_counter* %284, %struct.msr_counter** %6, align 8
  br label %233

285:                                              ; preds = %233
  ret i32 0
}

declare dso_local i64 @DO_BIC(i32) #1

declare dso_local i32 @DELTA_WRAP32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
