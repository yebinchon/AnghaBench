; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_sum_counters.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_sum_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32*, i32, i8*, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_11__ = type { %struct.msr_counter*, %struct.msr_counter*, %struct.msr_counter* }
%struct.msr_counter = type { i64, %struct.msr_counter* }
%struct.thread_data = type { i32, i64*, i64, i64, i64, i64, i64, i64, i32, %struct.TYPE_7__, i32, i32 }
%struct.core_data = type { i64*, i64, i32, i64, i64, i64, i64 }
%struct.pkg_data = type { i64*, i64, i64, i32, i32, i32, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@BIC_APIC = common dso_local global i32 0, align 4
@average = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@BIC_X2APIC = common dso_local global i32 0, align 4
@sys = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@FORMAT_RAW = common dso_local global i64 0, align 8
@CPU_IS_FIRST_THREAD_IN_CORE = common dso_local global i32 0, align 4
@CPU_IS_FIRST_CORE_IN_PACKAGE = common dso_local global i32 0, align 4
@BIC_Totl_c0 = common dso_local global i32 0, align 4
@BIC_Any_c0 = common dso_local global i32 0, align 4
@BIC_GFX_c0 = common dso_local global i32 0, align 4
@BIC_CPUGFX = common dso_local global i32 0, align 4
@BIC_Pkgpc3 = common dso_local global i32 0, align 4
@BIC_Pkgpc6 = common dso_local global i32 0, align 4
@BIC_Pkgpc7 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sum_counters(%struct.thread_data* %0, %struct.core_data* %1, %struct.pkg_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread_data*, align 8
  %6 = alloca %struct.core_data*, align 8
  %7 = alloca %struct.pkg_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.msr_counter*, align 8
  store %struct.thread_data* %0, %struct.thread_data** %5, align 8
  store %struct.core_data* %1, %struct.core_data** %6, align 8
  store %struct.pkg_data* %2, %struct.pkg_data** %7, align 8
  %10 = load i32, i32* @BIC_APIC, align 4
  %11 = call i64 @DO_BIC(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %15 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %14, i32 0, i32 11
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 2, i32 10), align 4
  br label %17

17:                                               ; preds = %13, %3
  %18 = load i32, i32* @BIC_X2APIC, align 4
  %19 = call i64 @DO_BIC(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %23 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %22, i32 0, i32 10
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 2, i32 9), align 8
  br label %25

25:                                               ; preds = %21, %17
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 2, i32 8, i32 0), align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %30 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %29, i32 0, i32 9
  %31 = bitcast %struct.TYPE_7__* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_7__* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 2, i32 8) to i8*), i8* align 8 %31, i64 8, i1 false)
  br label %32

32:                                               ; preds = %28, %25
  %33 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %34 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %33, i32 0, i32 8
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 2, i32 7), align 8
  %36 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %37 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %36, i32 0, i32 7
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 2, i32 6), align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 2, i32 6), align 4
  %43 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %44 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %43, i32 0, i32 6
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 2, i32 5), align 8
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 2, i32 5), align 8
  %50 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %51 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 2, i32 4), align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 2, i32 4), align 4
  %57 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %58 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 2, i32 3), align 8
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %61, %59
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 2, i32 3), align 8
  %64 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %65 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 2, i32 2), align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 2, i32 2), align 4
  %71 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %72 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 2, i32 1), align 8
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %75, %73
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 2, i32 1), align 8
  store i32 0, i32* %8, align 4
  %78 = load %struct.msr_counter*, %struct.msr_counter** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sys, i32 0, i32 2), align 8
  store %struct.msr_counter* %78, %struct.msr_counter** %9, align 8
  br label %79

79:                                               ; preds = %105, %32
  %80 = load %struct.msr_counter*, %struct.msr_counter** %9, align 8
  %81 = icmp ne %struct.msr_counter* %80, null
  br i1 %81, label %82, label %111

82:                                               ; preds = %79
  %83 = load %struct.msr_counter*, %struct.msr_counter** %9, align 8
  %84 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @FORMAT_RAW, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %105

89:                                               ; preds = %82
  %90 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %91 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %90, i32 0, i32 1
  %92 = load i64*, i64** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 2, i32 0), align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %102, %96
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %100, align 4
  br label %105

105:                                              ; preds = %89, %88
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %8, align 4
  %108 = load %struct.msr_counter*, %struct.msr_counter** %9, align 8
  %109 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %108, i32 0, i32 1
  %110 = load %struct.msr_counter*, %struct.msr_counter** %109, align 8
  store %struct.msr_counter* %110, %struct.msr_counter** %9, align 8
  br label %79

111:                                              ; preds = %79
  %112 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %113 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @CPU_IS_FIRST_THREAD_IN_CORE, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %111
  store i32 0, i32* %4, align 4
  br label %407

119:                                              ; preds = %111
  %120 = load %struct.core_data*, %struct.core_data** %6, align 8
  %121 = getelementptr inbounds %struct.core_data, %struct.core_data* %120, i32 0, i32 6
  %122 = load i64, i64* %121, align 8
  %123 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 1, i32 6), align 4
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %124, %122
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 1, i32 6), align 4
  %127 = load %struct.core_data*, %struct.core_data** %6, align 8
  %128 = getelementptr inbounds %struct.core_data, %struct.core_data* %127, i32 0, i32 5
  %129 = load i64, i64* %128, align 8
  %130 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 1, i32 5), align 8
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %131, %129
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 1, i32 5), align 8
  %134 = load %struct.core_data*, %struct.core_data** %6, align 8
  %135 = getelementptr inbounds %struct.core_data, %struct.core_data* %134, i32 0, i32 4
  %136 = load i64, i64* %135, align 8
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 1, i32 4), align 4
  %138 = sext i32 %137 to i64
  %139 = add nsw i64 %138, %136
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 1, i32 4), align 4
  %141 = load %struct.core_data*, %struct.core_data** %6, align 8
  %142 = getelementptr inbounds %struct.core_data, %struct.core_data* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 1, i32 3), align 8
  %145 = sext i32 %144 to i64
  %146 = add nsw i64 %145, %143
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 1, i32 3), align 8
  %148 = load i8*, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 1, i32 2), align 8
  %149 = load %struct.core_data*, %struct.core_data** %6, align 8
  %150 = getelementptr inbounds %struct.core_data, %struct.core_data* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = call i8* @MAX(i8* %148, i32 %151)
  store i8* %152, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 1, i32 2), align 8
  %153 = load %struct.core_data*, %struct.core_data** %6, align 8
  %154 = getelementptr inbounds %struct.core_data, %struct.core_data* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 1, i32 1), align 8
  %157 = sext i32 %156 to i64
  %158 = add nsw i64 %157, %155
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 1, i32 1), align 8
  store i32 0, i32* %8, align 4
  %160 = load %struct.msr_counter*, %struct.msr_counter** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sys, i32 0, i32 1), align 8
  store %struct.msr_counter* %160, %struct.msr_counter** %9, align 8
  br label %161

161:                                              ; preds = %187, %119
  %162 = load %struct.msr_counter*, %struct.msr_counter** %9, align 8
  %163 = icmp ne %struct.msr_counter* %162, null
  br i1 %163, label %164, label %193

164:                                              ; preds = %161
  %165 = load %struct.msr_counter*, %struct.msr_counter** %9, align 8
  %166 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @FORMAT_RAW, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %164
  br label %187

171:                                              ; preds = %164
  %172 = load %struct.core_data*, %struct.core_data** %6, align 8
  %173 = getelementptr inbounds %struct.core_data, %struct.core_data* %172, i32 0, i32 0
  %174 = load i64*, i64** %173, align 8
  %175 = load i32, i32* %8, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i64, i64* %174, i64 %176
  %178 = load i64, i64* %177, align 8
  %179 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 1, i32 0), align 8
  %180 = load i32, i32* %8, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = sext i32 %183 to i64
  %185 = add nsw i64 %184, %178
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %182, align 4
  br label %187

187:                                              ; preds = %171, %170
  %188 = load i32, i32* %8, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %8, align 4
  %190 = load %struct.msr_counter*, %struct.msr_counter** %9, align 8
  %191 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %190, i32 0, i32 1
  %192 = load %struct.msr_counter*, %struct.msr_counter** %191, align 8
  store %struct.msr_counter* %192, %struct.msr_counter** %9, align 8
  br label %161

193:                                              ; preds = %161
  %194 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %195 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @CPU_IS_FIRST_CORE_IN_PACKAGE, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %201, label %200

200:                                              ; preds = %193
  store i32 0, i32* %4, align 4
  br label %407

201:                                              ; preds = %193
  %202 = load i32, i32* @BIC_Totl_c0, align 4
  %203 = call i64 @DO_BIC(i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %213

205:                                              ; preds = %201
  %206 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %207 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %206, i32 0, i32 22
  %208 = load i64, i64* %207, align 8
  %209 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 22), align 8
  %210 = sext i32 %209 to i64
  %211 = add nsw i64 %210, %208
  %212 = trunc i64 %211 to i32
  store i32 %212, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 22), align 8
  br label %213

213:                                              ; preds = %205, %201
  %214 = load i32, i32* @BIC_Any_c0, align 4
  %215 = call i64 @DO_BIC(i32 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %225

217:                                              ; preds = %213
  %218 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %219 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %218, i32 0, i32 21
  %220 = load i64, i64* %219, align 8
  %221 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 21), align 4
  %222 = sext i32 %221 to i64
  %223 = add nsw i64 %222, %220
  %224 = trunc i64 %223 to i32
  store i32 %224, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 21), align 4
  br label %225

225:                                              ; preds = %217, %213
  %226 = load i32, i32* @BIC_GFX_c0, align 4
  %227 = call i64 @DO_BIC(i32 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %237

229:                                              ; preds = %225
  %230 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %231 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %230, i32 0, i32 20
  %232 = load i64, i64* %231, align 8
  %233 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 20), align 8
  %234 = sext i32 %233 to i64
  %235 = add nsw i64 %234, %232
  %236 = trunc i64 %235 to i32
  store i32 %236, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 20), align 8
  br label %237

237:                                              ; preds = %229, %225
  %238 = load i32, i32* @BIC_CPUGFX, align 4
  %239 = call i64 @DO_BIC(i32 %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %249

241:                                              ; preds = %237
  %242 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %243 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %242, i32 0, i32 19
  %244 = load i64, i64* %243, align 8
  %245 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 19), align 4
  %246 = sext i32 %245 to i64
  %247 = add nsw i64 %246, %244
  %248 = trunc i64 %247 to i32
  store i32 %248, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 19), align 4
  br label %249

249:                                              ; preds = %241, %237
  %250 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %251 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %250, i32 0, i32 18
  %252 = load i64, i64* %251, align 8
  %253 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 18), align 8
  %254 = sext i32 %253 to i64
  %255 = add nsw i64 %254, %252
  %256 = trunc i64 %255 to i32
  store i32 %256, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 18), align 8
  %257 = load i32, i32* @BIC_Pkgpc3, align 4
  %258 = call i64 @DO_BIC(i32 %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %268

260:                                              ; preds = %249
  %261 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %262 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %261, i32 0, i32 17
  %263 = load i64, i64* %262, align 8
  %264 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 17), align 4
  %265 = sext i32 %264 to i64
  %266 = add nsw i64 %265, %263
  %267 = trunc i64 %266 to i32
  store i32 %267, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 17), align 4
  br label %268

268:                                              ; preds = %260, %249
  %269 = load i32, i32* @BIC_Pkgpc6, align 4
  %270 = call i64 @DO_BIC(i32 %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %280

272:                                              ; preds = %268
  %273 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %274 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %273, i32 0, i32 16
  %275 = load i64, i64* %274, align 8
  %276 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 16), align 8
  %277 = sext i32 %276 to i64
  %278 = add nsw i64 %277, %275
  %279 = trunc i64 %278 to i32
  store i32 %279, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 16), align 8
  br label %280

280:                                              ; preds = %272, %268
  %281 = load i32, i32* @BIC_Pkgpc7, align 4
  %282 = call i64 @DO_BIC(i32 %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %292

284:                                              ; preds = %280
  %285 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %286 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %285, i32 0, i32 15
  %287 = load i64, i64* %286, align 8
  %288 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 15), align 4
  %289 = sext i32 %288 to i64
  %290 = add nsw i64 %289, %287
  %291 = trunc i64 %290 to i32
  store i32 %291, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 15), align 4
  br label %292

292:                                              ; preds = %284, %280
  %293 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %294 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %293, i32 0, i32 14
  %295 = load i64, i64* %294, align 8
  %296 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 14), align 8
  %297 = sext i32 %296 to i64
  %298 = add nsw i64 %297, %295
  %299 = trunc i64 %298 to i32
  store i32 %299, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 14), align 8
  %300 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %301 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %300, i32 0, i32 13
  %302 = load i64, i64* %301, align 8
  %303 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 13), align 4
  %304 = sext i32 %303 to i64
  %305 = add nsw i64 %304, %302
  %306 = trunc i64 %305 to i32
  store i32 %306, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 13), align 4
  %307 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %308 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %307, i32 0, i32 12
  %309 = load i64, i64* %308, align 8
  %310 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 12), align 8
  %311 = sext i32 %310 to i64
  %312 = add nsw i64 %311, %309
  %313 = trunc i64 %312 to i32
  store i32 %313, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 12), align 8
  %314 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %315 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %314, i32 0, i32 11
  %316 = load i32, i32* %315, align 4
  store i32 %316, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 11), align 4
  %317 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %318 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %317, i32 0, i32 10
  %319 = load i32, i32* %318, align 8
  store i32 %319, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 10), align 8
  %320 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %321 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %320, i32 0, i32 9
  %322 = load i64, i64* %321, align 8
  %323 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 9), align 4
  %324 = sext i32 %323 to i64
  %325 = add nsw i64 %324, %322
  %326 = trunc i64 %325 to i32
  store i32 %326, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 9), align 4
  %327 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %328 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %327, i32 0, i32 8
  %329 = load i64, i64* %328, align 8
  %330 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 8), align 8
  %331 = sext i32 %330 to i64
  %332 = add nsw i64 %331, %329
  %333 = trunc i64 %332 to i32
  store i32 %333, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 8), align 8
  %334 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %335 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %334, i32 0, i32 7
  %336 = load i64, i64* %335, align 8
  %337 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 7), align 4
  %338 = sext i32 %337 to i64
  %339 = add nsw i64 %338, %336
  %340 = trunc i64 %339 to i32
  store i32 %340, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 7), align 4
  %341 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %342 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %341, i32 0, i32 6
  %343 = load i64, i64* %342, align 8
  %344 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 6), align 8
  %345 = sext i32 %344 to i64
  %346 = add nsw i64 %345, %343
  %347 = trunc i64 %346 to i32
  store i32 %347, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 6), align 8
  %348 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %349 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %348, i32 0, i32 5
  %350 = load i32, i32* %349, align 8
  store i32 %350, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 5), align 4
  %351 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %352 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %351, i32 0, i32 4
  %353 = load i32, i32* %352, align 4
  store i32 %353, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 4), align 8
  %354 = load i8*, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 3), align 8
  %355 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %356 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %355, i32 0, i32 3
  %357 = load i32, i32* %356, align 8
  %358 = call i8* @MAX(i8* %354, i32 %357)
  store i8* %358, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 3), align 8
  %359 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %360 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %359, i32 0, i32 2
  %361 = load i64, i64* %360, align 8
  %362 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 2), align 4
  %363 = sext i32 %362 to i64
  %364 = add nsw i64 %363, %361
  %365 = trunc i64 %364 to i32
  store i32 %365, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 2), align 4
  %366 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %367 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %366, i32 0, i32 1
  %368 = load i64, i64* %367, align 8
  %369 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 1), align 8
  %370 = sext i32 %369 to i64
  %371 = add nsw i64 %370, %368
  %372 = trunc i64 %371 to i32
  store i32 %372, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 1), align 8
  store i32 0, i32* %8, align 4
  %373 = load %struct.msr_counter*, %struct.msr_counter** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sys, i32 0, i32 0), align 8
  store %struct.msr_counter* %373, %struct.msr_counter** %9, align 8
  br label %374

374:                                              ; preds = %400, %292
  %375 = load %struct.msr_counter*, %struct.msr_counter** %9, align 8
  %376 = icmp ne %struct.msr_counter* %375, null
  br i1 %376, label %377, label %406

377:                                              ; preds = %374
  %378 = load %struct.msr_counter*, %struct.msr_counter** %9, align 8
  %379 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %378, i32 0, i32 0
  %380 = load i64, i64* %379, align 8
  %381 = load i64, i64* @FORMAT_RAW, align 8
  %382 = icmp eq i64 %380, %381
  br i1 %382, label %383, label %384

383:                                              ; preds = %377
  br label %400

384:                                              ; preds = %377
  %385 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %386 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %385, i32 0, i32 0
  %387 = load i64*, i64** %386, align 8
  %388 = load i32, i32* %8, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i64, i64* %387, i64 %389
  %391 = load i64, i64* %390, align 8
  %392 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 0), align 8
  %393 = load i32, i32* %8, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i32, i32* %392, i64 %394
  %396 = load i32, i32* %395, align 4
  %397 = sext i32 %396 to i64
  %398 = add nsw i64 %397, %391
  %399 = trunc i64 %398 to i32
  store i32 %399, i32* %395, align 4
  br label %400

400:                                              ; preds = %384, %383
  %401 = load i32, i32* %8, align 4
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %8, align 4
  %403 = load %struct.msr_counter*, %struct.msr_counter** %9, align 8
  %404 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %403, i32 0, i32 1
  %405 = load %struct.msr_counter*, %struct.msr_counter** %404, align 8
  store %struct.msr_counter* %405, %struct.msr_counter** %9, align 8
  br label %374

406:                                              ; preds = %374
  store i32 0, i32* %4, align 4
  br label %407

407:                                              ; preds = %406, %200, %118
  %408 = load i32, i32* %4, align 4
  ret i32 %408
}

declare dso_local i64 @DO_BIC(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @MAX(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
