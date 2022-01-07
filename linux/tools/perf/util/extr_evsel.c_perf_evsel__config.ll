; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_perf_evsel__config.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_perf_evsel__config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i64 }
%struct.evsel = type { i32, i32, %struct.TYPE_5__, i64, i64, i64, i32, i64, %struct.evsel* }
%struct.TYPE_5__ = type { i32, %struct.perf_event_attr, i64 }
%struct.perf_event_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, i64 }
%struct.record_opts = type { i64, i64, i32, i64, i64, i64, i32, i64, i64, i32, i64, %struct.TYPE_6__, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.callchain_param = type { i64 }

@perf_missing_features = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@IP = common dso_local global i32 0, align 4
@TID = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@PERF_FORMAT_GROUP = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i64 0, align 8
@ULLONG_MAX = common dso_local global i64 0, align 8
@PERIOD = common dso_local global i32 0, align 4
@PERF_FORMAT_TOTAL_TIME_ENABLED = common dso_local global i32 0, align 4
@PERF_FORMAT_TOTAL_TIME_RUNNING = common dso_local global i32 0, align 4
@PERF_FORMAT_ID = common dso_local global i32 0, align 4
@ADDR = common dso_local global i32 0, align 4
@REGS_INTR = common dso_local global i32 0, align 4
@REGS_USER = common dso_local global i32 0, align 4
@CPU = common dso_local global i32 0, align 4
@TIME = common dso_local global i32 0, align 4
@RAW = common dso_local global i32 0, align 4
@DATA_SRC = common dso_local global i32 0, align 4
@PHYS_ADDR = common dso_local global i32 0, align 4
@BRANCH_STACK = common dso_local global i32 0, align 4
@WEIGHT = common dso_local global i32 0, align 4
@TRANSACTION = common dso_local global i32 0, align 4
@clockid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_evsel__config(%struct.evsel* %0, %struct.record_opts* %1, %struct.callchain_param* %2) #0 {
  %4 = alloca %struct.evsel*, align 8
  %5 = alloca %struct.record_opts*, align 8
  %6 = alloca %struct.callchain_param*, align 8
  %7 = alloca %struct.evsel*, align 8
  %8 = alloca %struct.perf_event_attr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.evsel* %0, %struct.evsel** %4, align 8
  store %struct.record_opts* %1, %struct.record_opts** %5, align 8
  store %struct.callchain_param* %2, %struct.callchain_param** %6, align 8
  %11 = load %struct.evsel*, %struct.evsel** %4, align 8
  %12 = getelementptr inbounds %struct.evsel, %struct.evsel* %11, i32 0, i32 8
  %13 = load %struct.evsel*, %struct.evsel** %12, align 8
  store %struct.evsel* %13, %struct.evsel** %7, align 8
  %14 = load %struct.evsel*, %struct.evsel** %4, align 8
  %15 = getelementptr inbounds %struct.evsel, %struct.evsel* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  store %struct.perf_event_attr* %16, %struct.perf_event_attr** %8, align 8
  %17 = load %struct.evsel*, %struct.evsel** %4, align 8
  %18 = getelementptr inbounds %struct.evsel, %struct.evsel* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %9, align 4
  %20 = load %struct.record_opts*, %struct.record_opts** %5, align 8
  %21 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %20, i32 0, i32 11
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %3
  %26 = load %struct.record_opts*, %struct.record_opts** %5, align 8
  %27 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %26, i32 0, i32 11
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %25, %3
  %33 = phi i1 [ false, %3 ], [ %31, %25 ]
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %10, align 4
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @perf_missing_features, i32 0, i32 3), align 8
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 0, i32 1
  %39 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %40 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.record_opts*, %struct.record_opts** %5, align 8
  %42 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %41, i32 0, i32 24
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %48 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.record_opts*, %struct.record_opts** %5, align 8
  %50 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %49, i32 0, i32 32
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 1, i32 0
  %55 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %56 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.evsel*, %struct.evsel** %4, align 8
  %58 = load i32, i32* @IP, align 4
  %59 = call i32 @perf_evsel__set_sample_bit(%struct.evsel* %57, i32 %58)
  %60 = load %struct.evsel*, %struct.evsel** %4, align 8
  %61 = load i32, i32* @TID, align 4
  %62 = call i32 @perf_evsel__set_sample_bit(%struct.evsel* %60, i32 %61)
  %63 = load %struct.evsel*, %struct.evsel** %4, align 8
  %64 = getelementptr inbounds %struct.evsel, %struct.evsel* %63, i32 0, i32 7
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %87

67:                                               ; preds = %32
  %68 = load %struct.evsel*, %struct.evsel** %4, align 8
  %69 = load i32, i32* @READ, align 4
  %70 = call i32 @perf_evsel__set_sample_bit(%struct.evsel* %68, i32 %69)
  %71 = load %struct.evsel*, %struct.evsel** %4, align 8
  %72 = call i32 @perf_evsel__set_sample_id(%struct.evsel* %71, i32 0)
  %73 = load %struct.evsel*, %struct.evsel** %7, align 8
  %74 = getelementptr inbounds %struct.evsel, %struct.evsel* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp sgt i32 %76, 1
  br i1 %77, label %78, label %86

78:                                               ; preds = %67
  %79 = load i32, i32* @PERF_FORMAT_GROUP, align 4
  %80 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %81 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  %84 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %85 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %84, i32 0, i32 1
  store i32 0, i32* %85, align 4
  br label %86

86:                                               ; preds = %78, %67
  br label %87

87:                                               ; preds = %86, %32
  %88 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %89 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %88, i32 0, i32 30
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %87
  %93 = load %struct.record_opts*, %struct.record_opts** %5, align 8
  %94 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @UINT_MAX, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %104, label %98

98:                                               ; preds = %92
  %99 = load %struct.record_opts*, %struct.record_opts** %5, align 8
  %100 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @ULLONG_MAX, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %127

104:                                              ; preds = %98, %92, %87
  %105 = load %struct.record_opts*, %struct.record_opts** %5, align 8
  %106 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %105, i32 0, i32 31
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %104
  %110 = load %struct.evsel*, %struct.evsel** %4, align 8
  %111 = load i32, i32* @PERIOD, align 4
  %112 = call i32 @perf_evsel__set_sample_bit(%struct.evsel* %110, i32 %111)
  %113 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %114 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %113, i32 0, i32 4
  store i32 1, i32* %114, align 8
  %115 = load %struct.record_opts*, %struct.record_opts** %5, align 8
  %116 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %115, i32 0, i32 31
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %119 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %118, i32 0, i32 28
  store i64 %117, i64* %119, align 8
  br label %126

120:                                              ; preds = %104
  %121 = load %struct.record_opts*, %struct.record_opts** %5, align 8
  %122 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %121, i32 0, i32 30
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %125 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %124, i32 0, i32 30
  store i64 %123, i64* %125, align 8
  br label %126

126:                                              ; preds = %120, %109
  br label %127

127:                                              ; preds = %126, %98
  %128 = load %struct.evsel*, %struct.evsel** %7, align 8
  %129 = load %struct.evsel*, %struct.evsel** %4, align 8
  %130 = icmp ne %struct.evsel* %128, %129
  br i1 %130, label %131, label %152

131:                                              ; preds = %127
  %132 = load %struct.evsel*, %struct.evsel** %7, align 8
  %133 = getelementptr inbounds %struct.evsel, %struct.evsel* %132, i32 0, i32 7
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %152

136:                                              ; preds = %131
  %137 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %138 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %137, i32 0, i32 4
  store i32 0, i32* %138, align 8
  %139 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %140 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %139, i32 0, i32 28
  store i64 0, i64* %140, align 8
  %141 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %142 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %141, i32 0, i32 30
  store i64 0, i64* %142, align 8
  %143 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %144 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %143, i32 0, i32 2
  store i32 0, i32* %144, align 8
  %145 = load %struct.evsel*, %struct.evsel** %7, align 8
  %146 = getelementptr inbounds %struct.evsel, %struct.evsel* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %147, i32 0, i32 29
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %151 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %150, i32 0, i32 29
  store i32 %149, i32* %151, align 8
  br label %152

152:                                              ; preds = %136, %131, %127
  %153 = load %struct.record_opts*, %struct.record_opts** %5, align 8
  %154 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %153, i32 0, i32 29
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %152
  %158 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %159 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %158, i32 0, i32 28
  store i64 0, i64* %159, align 8
  br label %160

160:                                              ; preds = %157, %152
  %161 = load %struct.record_opts*, %struct.record_opts** %5, align 8
  %162 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %161, i32 0, i32 28
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %179

165:                                              ; preds = %160
  %166 = load i32, i32* @PERF_FORMAT_TOTAL_TIME_ENABLED, align 4
  %167 = load i32, i32* @PERF_FORMAT_TOTAL_TIME_RUNNING, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* @PERF_FORMAT_ID, align 4
  %170 = or i32 %168, %169
  %171 = load %struct.evsel*, %struct.evsel** %4, align 8
  %172 = getelementptr inbounds %struct.evsel, %struct.evsel* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = or i32 %175, %170
  store i32 %176, i32* %174, align 4
  %177 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %178 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %177, i32 0, i32 5
  store i32 1, i32* %178, align 4
  br label %179

179:                                              ; preds = %165, %160
  %180 = load %struct.record_opts*, %struct.record_opts** %5, align 8
  %181 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %180, i32 0, i32 21
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %191

184:                                              ; preds = %179
  %185 = load %struct.evsel*, %struct.evsel** %4, align 8
  %186 = load i32, i32* @ADDR, align 4
  %187 = call i32 @perf_evsel__set_sample_bit(%struct.evsel* %185, i32 %186)
  %188 = load i32, i32* %9, align 4
  %189 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %190 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %189, i32 0, i32 6
  store i32 %188, i32* %190, align 8
  br label %191

191:                                              ; preds = %184, %179
  %192 = load %struct.evsel*, %struct.evsel** %4, align 8
  %193 = call i64 @perf_evsel__is_function_event(%struct.evsel* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %191
  %196 = load %struct.evsel*, %struct.evsel** %4, align 8
  %197 = getelementptr inbounds %struct.evsel, %struct.evsel* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %198, i32 0, i32 7
  store i32 1, i32* %199, align 4
  br label %200

200:                                              ; preds = %195, %191
  %201 = load %struct.callchain_param*, %struct.callchain_param** %6, align 8
  %202 = icmp ne %struct.callchain_param* %201, null
  br i1 %202, label %203, label %218

203:                                              ; preds = %200
  %204 = load %struct.callchain_param*, %struct.callchain_param** %6, align 8
  %205 = getelementptr inbounds %struct.callchain_param, %struct.callchain_param* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %218

208:                                              ; preds = %203
  %209 = load %struct.evsel*, %struct.evsel** %4, align 8
  %210 = getelementptr inbounds %struct.evsel, %struct.evsel* %209, i32 0, i32 6
  %211 = load i32, i32* %210, align 8
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %218, label %213

213:                                              ; preds = %208
  %214 = load %struct.evsel*, %struct.evsel** %4, align 8
  %215 = load %struct.record_opts*, %struct.record_opts** %5, align 8
  %216 = load %struct.callchain_param*, %struct.callchain_param** %6, align 8
  %217 = call i32 @perf_evsel__config_callchain(%struct.evsel* %214, %struct.record_opts* %215, %struct.callchain_param* %216)
  br label %218

218:                                              ; preds = %213, %208, %203, %200
  %219 = load %struct.record_opts*, %struct.record_opts** %5, align 8
  %220 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %219, i32 0, i32 27
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %232

223:                                              ; preds = %218
  %224 = load %struct.record_opts*, %struct.record_opts** %5, align 8
  %225 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %224, i32 0, i32 27
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %228 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %227, i32 0, i32 27
  store i64 %226, i64* %228, align 8
  %229 = load %struct.evsel*, %struct.evsel** %4, align 8
  %230 = load i32, i32* @REGS_INTR, align 4
  %231 = call i32 @perf_evsel__set_sample_bit(%struct.evsel* %229, i32 %230)
  br label %232

232:                                              ; preds = %223, %218
  %233 = load %struct.record_opts*, %struct.record_opts** %5, align 8
  %234 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %248

237:                                              ; preds = %232
  %238 = load %struct.record_opts*, %struct.record_opts** %5, align 8
  %239 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %242 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %241, i32 0, i32 8
  %243 = load i32, i32* %242, align 8
  %244 = or i32 %243, %240
  store i32 %244, i32* %242, align 8
  %245 = load %struct.evsel*, %struct.evsel** %4, align 8
  %246 = load i32, i32* @REGS_USER, align 4
  %247 = call i32 @perf_evsel__set_sample_bit(%struct.evsel* %245, i32 %246)
  br label %248

248:                                              ; preds = %237, %232
  %249 = load %struct.record_opts*, %struct.record_opts** %5, align 8
  %250 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %249, i32 0, i32 11
  %251 = call i64 @target__has_cpu(%struct.TYPE_6__* %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %258, label %253

253:                                              ; preds = %248
  %254 = load %struct.record_opts*, %struct.record_opts** %5, align 8
  %255 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %254, i32 0, i32 26
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %262

258:                                              ; preds = %253, %248
  %259 = load %struct.evsel*, %struct.evsel** %4, align 8
  %260 = load i32, i32* @CPU, align 4
  %261 = call i32 @perf_evsel__set_sample_bit(%struct.evsel* %259, i32 %260)
  br label %262

262:                                              ; preds = %258, %253
  %263 = load %struct.record_opts*, %struct.record_opts** %5, align 8
  %264 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %263, i32 0, i32 25
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %292

267:                                              ; preds = %262
  %268 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @perf_missing_features, i32 0, i32 3), align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %292, label %270

270:                                              ; preds = %267
  %271 = load %struct.record_opts*, %struct.record_opts** %5, align 8
  %272 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %271, i32 0, i32 24
  %273 = load i32, i32* %272, align 8
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %288

275:                                              ; preds = %270
  %276 = load %struct.record_opts*, %struct.record_opts** %5, align 8
  %277 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %276, i32 0, i32 11
  %278 = call i64 @target__has_cpu(%struct.TYPE_6__* %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %288, label %280

280:                                              ; preds = %275
  %281 = load i32, i32* %10, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %288, label %283

283:                                              ; preds = %280
  %284 = load %struct.record_opts*, %struct.record_opts** %5, align 8
  %285 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %284, i32 0, i32 23
  %286 = load i64, i64* %285, align 8
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %292

288:                                              ; preds = %283, %280, %275, %270
  %289 = load %struct.evsel*, %struct.evsel** %4, align 8
  %290 = load i32, i32* @TIME, align 4
  %291 = call i32 @perf_evsel__set_sample_bit(%struct.evsel* %289, i32 %290)
  br label %292

292:                                              ; preds = %288, %283, %267, %262
  %293 = load %struct.record_opts*, %struct.record_opts** %5, align 8
  %294 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %293, i32 0, i32 22
  %295 = load i64, i64* %294, align 8
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %312

297:                                              ; preds = %292
  %298 = load %struct.evsel*, %struct.evsel** %4, align 8
  %299 = getelementptr inbounds %struct.evsel, %struct.evsel* %298, i32 0, i32 6
  %300 = load i32, i32* %299, align 8
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %312, label %302

302:                                              ; preds = %297
  %303 = load %struct.evsel*, %struct.evsel** %4, align 8
  %304 = load i32, i32* @TIME, align 4
  %305 = call i32 @perf_evsel__set_sample_bit(%struct.evsel* %303, i32 %304)
  %306 = load %struct.evsel*, %struct.evsel** %4, align 8
  %307 = load i32, i32* @RAW, align 4
  %308 = call i32 @perf_evsel__set_sample_bit(%struct.evsel* %306, i32 %307)
  %309 = load %struct.evsel*, %struct.evsel** %4, align 8
  %310 = load i32, i32* @CPU, align 4
  %311 = call i32 @perf_evsel__set_sample_bit(%struct.evsel* %309, i32 %310)
  br label %312

312:                                              ; preds = %302, %297, %292
  %313 = load %struct.record_opts*, %struct.record_opts** %5, align 8
  %314 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %313, i32 0, i32 21
  %315 = load i64, i64* %314, align 8
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %321

317:                                              ; preds = %312
  %318 = load %struct.evsel*, %struct.evsel** %4, align 8
  %319 = load i32, i32* @DATA_SRC, align 4
  %320 = call i32 @perf_evsel__set_sample_bit(%struct.evsel* %318, i32 %319)
  br label %321

321:                                              ; preds = %317, %312
  %322 = load %struct.record_opts*, %struct.record_opts** %5, align 8
  %323 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %322, i32 0, i32 20
  %324 = load i64, i64* %323, align 8
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %330

326:                                              ; preds = %321
  %327 = load %struct.evsel*, %struct.evsel** %4, align 8
  %328 = load i32, i32* @PHYS_ADDR, align 4
  %329 = call i32 @perf_evsel__set_sample_bit(%struct.evsel* %327, i32 %328)
  br label %330

330:                                              ; preds = %326, %321
  %331 = load %struct.record_opts*, %struct.record_opts** %5, align 8
  %332 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %331, i32 0, i32 19
  %333 = load i64, i64* %332, align 8
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %340

335:                                              ; preds = %330
  %336 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %337 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %336, i32 0, i32 26
  store i64 0, i64* %337, align 8
  %338 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %339 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %338, i32 0, i32 9
  store i32 1, i32* %339, align 4
  br label %340

340:                                              ; preds = %335, %330
  %341 = load %struct.record_opts*, %struct.record_opts** %5, align 8
  %342 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %341, i32 0, i32 18
  %343 = load i64, i64* %342, align 8
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %359

345:                                              ; preds = %340
  %346 = load %struct.evsel*, %struct.evsel** %4, align 8
  %347 = getelementptr inbounds %struct.evsel, %struct.evsel* %346, i32 0, i32 6
  %348 = load i32, i32* %347, align 8
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %359, label %350

350:                                              ; preds = %345
  %351 = load %struct.evsel*, %struct.evsel** %4, align 8
  %352 = load i32, i32* @BRANCH_STACK, align 4
  %353 = call i32 @perf_evsel__set_sample_bit(%struct.evsel* %351, i32 %352)
  %354 = load %struct.record_opts*, %struct.record_opts** %5, align 8
  %355 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %354, i32 0, i32 18
  %356 = load i64, i64* %355, align 8
  %357 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %358 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %357, i32 0, i32 25
  store i64 %356, i64* %358, align 8
  br label %359

359:                                              ; preds = %350, %345, %340
  %360 = load %struct.record_opts*, %struct.record_opts** %5, align 8
  %361 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %360, i32 0, i32 17
  %362 = load i64, i64* %361, align 8
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %368

364:                                              ; preds = %359
  %365 = load %struct.evsel*, %struct.evsel** %4, align 8
  %366 = load i32, i32* @WEIGHT, align 4
  %367 = call i32 @perf_evsel__set_sample_bit(%struct.evsel* %365, i32 %366)
  br label %368

368:                                              ; preds = %364, %359
  %369 = load i32, i32* %9, align 4
  %370 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %371 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %370, i32 0, i32 10
  store i32 %369, i32* %371, align 8
  %372 = load i32, i32* %9, align 4
  %373 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %374 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %373, i32 0, i32 11
  store i32 %372, i32* %374, align 4
  %375 = load i32, i32* %9, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %381

377:                                              ; preds = %368
  %378 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @perf_missing_features, i32 0, i32 2), align 8
  %379 = icmp ne i32 %378, 0
  %380 = xor i1 %379, true
  br label %381

381:                                              ; preds = %377, %368
  %382 = phi i1 [ false, %368 ], [ %380, %377 ]
  %383 = zext i1 %382 to i32
  %384 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %385 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %384, i32 0, i32 12
  store i32 %383, i32* %385, align 8
  %386 = load i32, i32* %9, align 4
  %387 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %388 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %387, i32 0, i32 13
  store i32 %386, i32* %388, align 4
  %389 = load i32, i32* %9, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %395

391:                                              ; preds = %381
  %392 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @perf_missing_features, i32 0, i32 1), align 4
  %393 = icmp ne i32 %392, 0
  %394 = xor i1 %393, true
  br label %395

395:                                              ; preds = %391, %381
  %396 = phi i1 [ false, %381 ], [ %394, %391 ]
  %397 = zext i1 %396 to i32
  %398 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %399 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %398, i32 0, i32 14
  store i32 %397, i32* %399, align 8
  %400 = load i32, i32* %9, align 4
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %411

402:                                              ; preds = %395
  %403 = load %struct.record_opts*, %struct.record_opts** %5, align 8
  %404 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %403, i32 0, i32 16
  %405 = load i32, i32* %404, align 8
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %411, label %407

407:                                              ; preds = %402
  %408 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @perf_missing_features, i32 0, i32 0), align 8
  %409 = icmp ne i32 %408, 0
  %410 = xor i1 %409, true
  br label %411

411:                                              ; preds = %407, %402, %395
  %412 = phi i1 [ false, %402 ], [ false, %395 ], [ %410, %407 ]
  %413 = zext i1 %412 to i32
  %414 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %415 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %414, i32 0, i32 15
  store i32 %413, i32* %415, align 4
  %416 = load %struct.record_opts*, %struct.record_opts** %5, align 8
  %417 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %416, i32 0, i32 15
  %418 = load i64, i64* %417, align 8
  %419 = icmp ne i64 %418, 0
  br i1 %419, label %420, label %424

420:                                              ; preds = %411
  %421 = load i32, i32* %9, align 4
  %422 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %423 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %422, i32 0, i32 16
  store i32 %421, i32* %423, align 8
  br label %424

424:                                              ; preds = %420, %411
  %425 = load %struct.record_opts*, %struct.record_opts** %5, align 8
  %426 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %425, i32 0, i32 14
  %427 = load i64, i64* %426, align 8
  %428 = icmp ne i64 %427, 0
  br i1 %428, label %429, label %433

429:                                              ; preds = %424
  %430 = load i32, i32* %9, align 4
  %431 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %432 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %431, i32 0, i32 17
  store i32 %430, i32* %432, align 4
  br label %433

433:                                              ; preds = %429, %424
  %434 = load %struct.record_opts*, %struct.record_opts** %5, align 8
  %435 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %434, i32 0, i32 13
  %436 = load i64, i64* %435, align 8
  %437 = icmp ne i64 %436, 0
  br i1 %437, label %438, label %442

438:                                              ; preds = %433
  %439 = load %struct.evsel*, %struct.evsel** %4, align 8
  %440 = load i32, i32* @TRANSACTION, align 4
  %441 = call i32 @perf_evsel__set_sample_bit(%struct.evsel* %439, i32 %440)
  br label %442

442:                                              ; preds = %438, %433
  %443 = load %struct.record_opts*, %struct.record_opts** %5, align 8
  %444 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %443, i32 0, i32 12
  %445 = load i64, i64* %444, align 8
  %446 = icmp ne i64 %445, 0
  br i1 %446, label %447, label %457

447:                                              ; preds = %442
  %448 = load i32, i32* @PERF_FORMAT_TOTAL_TIME_ENABLED, align 4
  %449 = load i32, i32* @PERF_FORMAT_TOTAL_TIME_RUNNING, align 4
  %450 = or i32 %448, %449
  %451 = load %struct.evsel*, %struct.evsel** %4, align 8
  %452 = getelementptr inbounds %struct.evsel, %struct.evsel* %451, i32 0, i32 2
  %453 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %452, i32 0, i32 1
  %454 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %453, i32 0, i32 3
  %455 = load i32, i32* %454, align 4
  %456 = or i32 %455, %450
  store i32 %456, i32* %454, align 4
  br label %457

457:                                              ; preds = %447, %442
  %458 = load %struct.evsel*, %struct.evsel** %4, align 8
  %459 = call i64 @perf_evsel__is_group_leader(%struct.evsel* %458)
  %460 = icmp ne i64 %459, 0
  br i1 %460, label %461, label %464

461:                                              ; preds = %457
  %462 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %463 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %462, i32 0, i32 18
  store i32 1, i32* %463, align 8
  br label %464

464:                                              ; preds = %461, %457
  %465 = load %struct.record_opts*, %struct.record_opts** %5, align 8
  %466 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %465, i32 0, i32 11
  %467 = call i64 @target__none(%struct.TYPE_6__* %466)
  %468 = icmp ne i64 %467, 0
  br i1 %468, label %469, label %481

469:                                              ; preds = %464
  %470 = load %struct.evsel*, %struct.evsel** %4, align 8
  %471 = call i64 @perf_evsel__is_group_leader(%struct.evsel* %470)
  %472 = icmp ne i64 %471, 0
  br i1 %472, label %473, label %481

473:                                              ; preds = %469
  %474 = load %struct.record_opts*, %struct.record_opts** %5, align 8
  %475 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %474, i32 0, i32 3
  %476 = load i64, i64* %475, align 8
  %477 = icmp ne i64 %476, 0
  br i1 %477, label %481, label %478

478:                                              ; preds = %473
  %479 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %480 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %479, i32 0, i32 19
  store i32 1, i32* %480, align 4
  br label %481

481:                                              ; preds = %478, %473, %469, %464
  %482 = load %struct.evsel*, %struct.evsel** %4, align 8
  %483 = getelementptr inbounds %struct.evsel, %struct.evsel* %482, i32 0, i32 5
  %484 = load i64, i64* %483, align 8
  %485 = icmp ne i64 %484, 0
  br i1 %485, label %486, label %491

486:                                              ; preds = %481
  %487 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %488 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %487, i32 0, i32 18
  store i32 0, i32* %488, align 8
  %489 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %490 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %489, i32 0, i32 19
  store i32 0, i32* %490, align 4
  br label %491

491:                                              ; preds = %486, %481
  %492 = load %struct.record_opts*, %struct.record_opts** %5, align 8
  %493 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %492, i32 0, i32 9
  %494 = load i32, i32* %493, align 8
  store i32 %494, i32* @clockid, align 4
  %495 = load %struct.record_opts*, %struct.record_opts** %5, align 8
  %496 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %495, i32 0, i32 10
  %497 = load i64, i64* %496, align 8
  %498 = icmp ne i64 %497, 0
  br i1 %498, label %499, label %507

499:                                              ; preds = %491
  %500 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %501 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %500, i32 0, i32 20
  store i32 1, i32* %501, align 8
  %502 = load %struct.record_opts*, %struct.record_opts** %5, align 8
  %503 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %502, i32 0, i32 9
  %504 = load i32, i32* %503, align 8
  %505 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %506 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %505, i32 0, i32 24
  store i32 %504, i32* %506, align 8
  br label %507

507:                                              ; preds = %499, %491
  %508 = load %struct.evsel*, %struct.evsel** %4, align 8
  %509 = getelementptr inbounds %struct.evsel, %struct.evsel* %508, i32 0, i32 4
  %510 = load i64, i64* %509, align 8
  %511 = icmp ne i64 %510, 0
  br i1 %511, label %512, label %515

512:                                              ; preds = %507
  %513 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %514 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %513, i32 0, i32 21
  store i32 3, i32* %514, align 4
  br label %515

515:                                              ; preds = %512, %507
  %516 = load %struct.record_opts*, %struct.record_opts** %5, align 8
  %517 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %516, i32 0, i32 8
  %518 = load i64, i64* %517, align 8
  %519 = icmp ne i64 %518, 0
  br i1 %519, label %520, label %525

520:                                              ; preds = %515
  %521 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %522 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %521, i32 0, i32 22
  store i32 1, i32* %522, align 8
  %523 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %524 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %523, i32 0, i32 23
  store i32 0, i32* %524, align 4
  br label %525

525:                                              ; preds = %520, %515
  %526 = load %struct.record_opts*, %struct.record_opts** %5, align 8
  %527 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %526, i32 0, i32 7
  %528 = load i64, i64* %527, align 8
  %529 = icmp ne i64 %528, 0
  br i1 %529, label %530, label %535

530:                                              ; preds = %525
  %531 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %532 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %531, i32 0, i32 22
  store i32 0, i32* %532, align 8
  %533 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %534 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %533, i32 0, i32 23
  store i32 1, i32* %534, align 4
  br label %535

535:                                              ; preds = %530, %525
  %536 = load %struct.evsel*, %struct.evsel** %4, align 8
  %537 = getelementptr inbounds %struct.evsel, %struct.evsel* %536, i32 0, i32 2
  %538 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %537, i32 0, i32 2
  %539 = load i64, i64* %538, align 8
  %540 = icmp ne i64 %539, 0
  br i1 %540, label %546, label %541

541:                                              ; preds = %535
  %542 = load %struct.evsel*, %struct.evsel** %4, align 8
  %543 = getelementptr inbounds %struct.evsel, %struct.evsel* %542, i32 0, i32 3
  %544 = load i64, i64* %543, align 8
  %545 = icmp ne i64 %544, 0
  br i1 %545, label %546, label %554

546:                                              ; preds = %541, %535
  %547 = load i32, i32* @PERF_FORMAT_ID, align 4
  %548 = load %struct.evsel*, %struct.evsel** %4, align 8
  %549 = getelementptr inbounds %struct.evsel, %struct.evsel* %548, i32 0, i32 2
  %550 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %549, i32 0, i32 1
  %551 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %550, i32 0, i32 3
  %552 = load i32, i32* %551, align 4
  %553 = or i32 %552, %547
  store i32 %553, i32* %551, align 4
  br label %554

554:                                              ; preds = %546, %541
  %555 = load %struct.evsel*, %struct.evsel** %4, align 8
  %556 = load %struct.record_opts*, %struct.record_opts** %5, align 8
  %557 = load i32, i32* %9, align 4
  %558 = call i32 @apply_config_terms(%struct.evsel* %555, %struct.record_opts* %556, i32 %557)
  %559 = load %struct.record_opts*, %struct.record_opts** %5, align 8
  %560 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %559, i32 0, i32 6
  %561 = load i32, i32* %560, align 8
  %562 = load %struct.evsel*, %struct.evsel** %4, align 8
  %563 = getelementptr inbounds %struct.evsel, %struct.evsel* %562, i32 0, i32 1
  store i32 %561, i32* %563, align 4
  %564 = load %struct.record_opts*, %struct.record_opts** %5, align 8
  %565 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %564, i32 0, i32 5
  %566 = load i64, i64* %565, align 8
  %567 = icmp ne i64 %566, 0
  br i1 %567, label %568, label %582

568:                                              ; preds = %554
  %569 = load %struct.record_opts*, %struct.record_opts** %5, align 8
  %570 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %569, i32 0, i32 4
  %571 = load i64, i64* %570, align 8
  %572 = icmp ne i64 %571, 0
  br i1 %572, label %573, label %577

573:                                              ; preds = %568
  %574 = load %struct.evsel*, %struct.evsel** %4, align 8
  %575 = load i32, i32* @PERIOD, align 4
  %576 = call i32 @perf_evsel__set_sample_bit(%struct.evsel* %574, i32 %575)
  br label %581

577:                                              ; preds = %568
  %578 = load %struct.evsel*, %struct.evsel** %4, align 8
  %579 = load i32, i32* @PERIOD, align 4
  %580 = call i32 @perf_evsel__reset_sample_bit(%struct.evsel* %578, i32 %579)
  br label %581

581:                                              ; preds = %577, %573
  br label %582

582:                                              ; preds = %581, %554
  %583 = load %struct.record_opts*, %struct.record_opts** %5, align 8
  %584 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %583, i32 0, i32 3
  %585 = load i64, i64* %584, align 8
  %586 = icmp ne i64 %585, 0
  br i1 %586, label %587, label %595

587:                                              ; preds = %582
  %588 = load %struct.evsel*, %struct.evsel** %4, align 8
  %589 = call i64 @is_dummy_event(%struct.evsel* %588)
  %590 = icmp ne i64 %589, 0
  br i1 %590, label %591, label %595

591:                                              ; preds = %587
  %592 = load %struct.evsel*, %struct.evsel** %4, align 8
  %593 = load i32, i32* @BRANCH_STACK, align 4
  %594 = call i32 @perf_evsel__reset_sample_bit(%struct.evsel* %592, i32 %593)
  br label %595

595:                                              ; preds = %591, %587, %582
  ret void
}

declare dso_local i32 @perf_evsel__set_sample_bit(%struct.evsel*, i32) #1

declare dso_local i32 @perf_evsel__set_sample_id(%struct.evsel*, i32) #1

declare dso_local i64 @perf_evsel__is_function_event(%struct.evsel*) #1

declare dso_local i32 @perf_evsel__config_callchain(%struct.evsel*, %struct.record_opts*, %struct.callchain_param*) #1

declare dso_local i64 @target__has_cpu(%struct.TYPE_6__*) #1

declare dso_local i64 @perf_evsel__is_group_leader(%struct.evsel*) #1

declare dso_local i64 @target__none(%struct.TYPE_6__*) #1

declare dso_local i32 @apply_config_terms(%struct.evsel*, %struct.record_opts*, i32) #1

declare dso_local i32 @perf_evsel__reset_sample_bit(%struct.evsel*, i32) #1

declare dso_local i64 @is_dummy_event(%struct.evsel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
