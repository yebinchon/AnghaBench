; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-top.c___cmd_top.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-top.c___cmd_top.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64 }
%struct.perf_top = type { i32, i64, %struct.TYPE_19__, %struct.TYPE_13__*, i64, %struct.TYPE_20__*, %struct.record_opts, %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_13__*, %struct.TYPE_17__, %struct.TYPE_14__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.record_opts = type { i64, i32, i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.sched_param = type { i64 }

@callchain_param = common dso_local global i32 0, align 4
@perf_event__process = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [88 x i8] c"Couldn't synthesize BPF events: Pre-existing BPF programs won't have symbols resolved.\0A\00", align 1
@perf_hpp_list = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@perf_env = common dso_local global i32 0, align 4
@BUFSIZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Could not read the CPU topology map: %s\0A\00", align 1
@process_thread = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Could not create process thread.\0A\00", align 1
@use_browser = common dso_local global i64 0, align 8
@display_thread_tui = common dso_local global i32 0, align 4
@display_thread = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Could not create display thread.\0A\00", align 1
@SCHED_FIFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Could not set realtime priority.\0A\00", align 1
@done = common dso_local global i32 0, align 4
@resize = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_top*)* @__cmd_top to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cmd_top(%struct.perf_top* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_top*, align 8
  %4 = alloca %struct.record_opts*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.sched_param, align 8
  %12 = alloca i64, align 8
  store %struct.perf_top* %0, %struct.perf_top** %3, align 8
  %13 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %14 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %13, i32 0, i32 6
  store %struct.record_opts* %14, %struct.record_opts** %4, align 8
  %15 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %16 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %15, i32 0, i32 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %1
  %21 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %22 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %21, i32 0, i32 5
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %27 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %26, i32 0, i32 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = call i32 @perf_env__lookup_objdump(i32* %25, i32* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %2, align 4
  br label %246

34:                                               ; preds = %20
  br label %35

35:                                               ; preds = %34, %1
  %36 = call i32 @callchain_param__setup_sample_type(i32* @callchain_param)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %2, align 4
  br label %246

41:                                               ; preds = %35
  %42 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %43 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %42, i32 0, i32 5
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %43, align 8
  %45 = call i64 @perf_session__register_idle_thread(%struct.TYPE_20__* %44)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %2, align 4
  br label %246

49:                                               ; preds = %41
  %50 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %51 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp sgt i32 %52, 1
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = call i32 (...) @perf_set_multithreaded()
  br label %56

56:                                               ; preds = %54, %49
  %57 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %58 = call i32 @init_process_thread(%struct.perf_top* %57)
  %59 = load %struct.record_opts*, %struct.record_opts** %4, align 8
  %60 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %65 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %64, i32 0, i32 7
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  br label %67

67:                                               ; preds = %63, %56
  %68 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %69 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %68, i32 0, i32 5
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %69, align 8
  %71 = load i32, i32* @perf_event__process, align 4
  %72 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %73 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %72, i32 0, i32 5
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %78 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %77, i32 0, i32 6
  %79 = call i32 @perf_event__synthesize_bpf_events(%struct.TYPE_20__* %70, i32 %71, i32* %76, %struct.record_opts* %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %67
  %83 = call i32 @pr_debug(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %67
  %85 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %86 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %85, i32 0, i32 5
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 0
  %90 = load %struct.record_opts*, %struct.record_opts** %4, align 8
  %91 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %90, i32 0, i32 1
  %92 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %93 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %92, i32 0, i32 3
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %99 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @machine__synthesize_threads(i32* %89, i32* %91, i32 %97, i32 0, i32 %100)
  %102 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %103 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp sgt i32 %104, 1
  br i1 %105, label %106, label %108

106:                                              ; preds = %84
  %107 = call i32 (...) @perf_set_singlethreaded()
  br label %108

108:                                              ; preds = %106, %84
  %109 = load i64, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @perf_hpp_list, i32 0, i32 0), align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %129

111:                                              ; preds = %108
  %112 = call i32 @perf_env__read_cpu_topology_map(i32* @perf_env)
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %7, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %128

115:                                              ; preds = %111
  %116 = load i32, i32* @BUFSIZ, align 4
  %117 = zext i32 %116 to i64
  %118 = call i8* @llvm.stacksave()
  store i8* %118, i8** %8, align 8
  %119 = alloca i8, i64 %117, align 16
  store i64 %117, i64* %9, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sub nsw i32 0, %120
  %122 = trunc i64 %117 to i32
  %123 = call i8* @str_error_r(i32 %121, i8* %119, i32 %122)
  store i8* %123, i8** %10, align 8
  %124 = load i8*, i8** %10, align 8
  %125 = call i32 (i8*, ...) @ui__error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %124)
  %126 = load i32, i32* %7, align 4
  store i32 %126, i32* %2, align 4
  %127 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %127)
  br label %246

128:                                              ; preds = %111
  br label %129

129:                                              ; preds = %128, %108
  %130 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %131 = call i32 @perf_top__start_counters(%struct.perf_top* %130)
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %129
  %135 = load i32, i32* %7, align 4
  store i32 %135, i32* %2, align 4
  br label %246

136:                                              ; preds = %129
  %137 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %138 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %137, i32 0, i32 3
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %138, align 8
  %140 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %141 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %140, i32 0, i32 5
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 0
  store %struct.TYPE_13__* %139, %struct.TYPE_13__** %143, align 8
  %144 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %145 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %144, i32 0, i32 5
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %145, align 8
  %147 = call i32 @perf_session__set_id_hdr_size(%struct.TYPE_20__* %146)
  %148 = load %struct.record_opts*, %struct.record_opts** %4, align 8
  %149 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %148, i32 0, i32 1
  %150 = call i32 @target__none(i32* %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %136
  %153 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %154 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %153, i32 0, i32 3
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %154, align 8
  %156 = call i32 @evlist__enable(%struct.TYPE_13__* %155)
  br label %157

157:                                              ; preds = %152, %136
  store i32 -1, i32* %7, align 4
  %158 = load i32, i32* @process_thread, align 4
  %159 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %160 = call i64 @pthread_create(i32* %6, i32* null, i32 %158, %struct.perf_top* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %157
  %163 = call i32 (i8*, ...) @ui__error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %164 = load i32, i32* %7, align 4
  store i32 %164, i32* %2, align 4
  br label %246

165:                                              ; preds = %157
  %166 = load i64, i64* @use_browser, align 8
  %167 = icmp sgt i64 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %165
  %169 = load i32, i32* @display_thread_tui, align 4
  br label %172

170:                                              ; preds = %165
  %171 = load i32, i32* @display_thread, align 4
  br label %172

172:                                              ; preds = %170, %168
  %173 = phi i32 [ %169, %168 ], [ %171, %170 ]
  %174 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %175 = call i64 @pthread_create(i32* %5, i32* null, i32 %173, %struct.perf_top* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %172
  %178 = call i32 (i8*, ...) @ui__error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %238

179:                                              ; preds = %172
  %180 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %181 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %180, i32 0, i32 4
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %195

184:                                              ; preds = %179
  %185 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %186 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %185, i32 0, i32 4
  %187 = load i64, i64* %186, align 8
  %188 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %11, i32 0, i32 0
  store i64 %187, i64* %188, align 8
  %189 = load i32, i32* @SCHED_FIFO, align 4
  %190 = call i64 @sched_setscheduler(i32 0, i32 %189, %struct.sched_param* %11)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %184
  %193 = call i32 (i8*, ...) @ui__error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %235

194:                                              ; preds = %184
  br label %195

195:                                              ; preds = %194, %179
  %196 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %197 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %196, i32 0, i32 3
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %197, align 8
  %199 = call i32 @evlist__poll(%struct.TYPE_13__* %198, i32 100)
  %200 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %201 = call i32 @perf_top__mmap_read(%struct.perf_top* %200)
  br label %202

202:                                              ; preds = %233, %195
  %203 = load i32, i32* @done, align 4
  %204 = icmp ne i32 %203, 0
  %205 = xor i1 %204, true
  br i1 %205, label %206, label %234

206:                                              ; preds = %202
  %207 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %208 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  store i64 %209, i64* %12, align 8
  %210 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %211 = call i32 @perf_top__mmap_read(%struct.perf_top* %210)
  %212 = load %struct.record_opts*, %struct.record_opts** %4, align 8
  %213 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %222, label %216

216:                                              ; preds = %206
  %217 = load i64, i64* %12, align 8
  %218 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %219 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = icmp eq i64 %217, %220
  br i1 %221, label %222, label %227

222:                                              ; preds = %216, %206
  %223 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %224 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %223, i32 0, i32 3
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %224, align 8
  %226 = call i32 @evlist__poll(%struct.TYPE_13__* %225, i32 100)
  store i32 %226, i32* %7, align 4
  br label %227

227:                                              ; preds = %222, %216
  %228 = load i64, i64* @resize, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %233

230:                                              ; preds = %227
  %231 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %232 = call i32 @perf_top__resize(%struct.perf_top* %231)
  store i64 0, i64* @resize, align 8
  br label %233

233:                                              ; preds = %230, %227
  br label %202

234:                                              ; preds = %202
  store i32 0, i32* %7, align 4
  br label %235

235:                                              ; preds = %234, %192
  %236 = load i32, i32* %5, align 4
  %237 = call i32 @pthread_join(i32 %236, i32* null)
  br label %238

238:                                              ; preds = %235, %177
  %239 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %240 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %239, i32 0, i32 2
  %241 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %240, i32 0, i32 0
  %242 = call i32 @pthread_cond_signal(i32* %241)
  %243 = load i32, i32* %6, align 4
  %244 = call i32 @pthread_join(i32 %243, i32* null)
  %245 = load i32, i32* %7, align 4
  store i32 %245, i32* %2, align 4
  br label %246

246:                                              ; preds = %238, %162, %134, %115, %47, %39, %32
  %247 = load i32, i32* %2, align 4
  ret i32 %247
}

declare dso_local i32 @perf_env__lookup_objdump(i32*, i32*) #1

declare dso_local i32 @callchain_param__setup_sample_type(i32*) #1

declare dso_local i64 @perf_session__register_idle_thread(%struct.TYPE_20__*) #1

declare dso_local i32 @perf_set_multithreaded(...) #1

declare dso_local i32 @init_process_thread(%struct.perf_top*) #1

declare dso_local i32 @perf_event__synthesize_bpf_events(%struct.TYPE_20__*, i32, i32*, %struct.record_opts*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @machine__synthesize_threads(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @perf_set_singlethreaded(...) #1

declare dso_local i32 @perf_env__read_cpu_topology_map(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @str_error_r(i32, i8*, i32) #1

declare dso_local i32 @ui__error(i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @perf_top__start_counters(%struct.perf_top*) #1

declare dso_local i32 @perf_session__set_id_hdr_size(%struct.TYPE_20__*) #1

declare dso_local i32 @target__none(i32*) #1

declare dso_local i32 @evlist__enable(%struct.TYPE_13__*) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, %struct.perf_top*) #1

declare dso_local i64 @sched_setscheduler(i32, i32, %struct.sched_param*) #1

declare dso_local i32 @evlist__poll(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @perf_top__mmap_read(%struct.perf_top*) #1

declare dso_local i32 @perf_top__resize(%struct.perf_top*) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
