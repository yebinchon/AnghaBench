; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-record.c_record__synthesize.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-record.c_record__synthesize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.record = type { i32, %struct.TYPE_9__*, %struct.perf_tool, i32, %struct.record_opts, %struct.perf_data, %struct.perf_session* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.perf_tool = type { i32 }
%struct.record_opts = type { i32, i32, i32, i64 }
%struct.perf_data = type { i64 }
%struct.perf_session = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.machine }
%struct.machine = type { i32 }

@process_synthesized_event = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Couldn't synthesize attrs.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Couldn't synthesize features.\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Couldn't record tracing data.\0A\00", align 1
@.str.3 = private unnamed_addr constant [169 x i8] c"Couldn't record kernel reference relocation symbol\0ASymbol resolution may be skewed if relocation was used (e.g. kexec).\0ACheck /proc/kallsyms permission or run as root.\0A\00", align 1
@.str.4 = private unnamed_addr constant [160 x i8] c"Couldn't record kernel module information.\0ASymbol resolution may be skewed if relocation was used (e.g. kexec).\0ACheck /proc/modules permission or run as root.\0A\00", align 1
@perf_guest = common dso_local global i64 0, align 8
@perf_event__synthesize_guest_os = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"Couldn't synthesize thread map.\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Couldn't synthesize cpu map.\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Couldn't synthesize bpf events.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.record*, i32)* @record__synthesize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @record__synthesize(%struct.record* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.record*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.perf_session*, align 8
  %7 = alloca %struct.machine*, align 8
  %8 = alloca %struct.perf_data*, align 8
  %9 = alloca %struct.record_opts*, align 8
  %10 = alloca %struct.perf_tool*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.record* %0, %struct.record** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.record*, %struct.record** %4, align 8
  %14 = getelementptr inbounds %struct.record, %struct.record* %13, i32 0, i32 6
  %15 = load %struct.perf_session*, %struct.perf_session** %14, align 8
  store %struct.perf_session* %15, %struct.perf_session** %6, align 8
  %16 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %17 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  store %struct.machine* %18, %struct.machine** %7, align 8
  %19 = load %struct.record*, %struct.record** %4, align 8
  %20 = getelementptr inbounds %struct.record, %struct.record* %19, i32 0, i32 5
  store %struct.perf_data* %20, %struct.perf_data** %8, align 8
  %21 = load %struct.record*, %struct.record** %4, align 8
  %22 = getelementptr inbounds %struct.record, %struct.record* %21, i32 0, i32 4
  store %struct.record_opts* %22, %struct.record_opts** %9, align 8
  %23 = load %struct.record*, %struct.record** %4, align 8
  %24 = getelementptr inbounds %struct.record, %struct.record* %23, i32 0, i32 2
  store %struct.perf_tool* %24, %struct.perf_tool** %10, align 8
  %25 = load %struct.perf_data*, %struct.perf_data** %8, align 8
  %26 = call i32 @perf_data__fd(%struct.perf_data* %25)
  store i32 %26, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %27 = load %struct.record*, %struct.record** %4, align 8
  %28 = getelementptr inbounds %struct.record, %struct.record* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %224

34:                                               ; preds = %2
  %35 = load %struct.perf_data*, %struct.perf_data** %8, align 8
  %36 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %90

39:                                               ; preds = %34
  %40 = load %struct.perf_tool*, %struct.perf_tool** %10, align 8
  %41 = load %struct.record*, %struct.record** %4, align 8
  %42 = getelementptr inbounds %struct.record, %struct.record* %41, i32 0, i32 1
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = load i32, i32* @process_synthesized_event, align 4
  %45 = call i32 @perf_event__synthesize_attrs(%struct.perf_tool* %40, %struct.TYPE_9__* %43, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %222

50:                                               ; preds = %39
  %51 = load %struct.perf_tool*, %struct.perf_tool** %10, align 8
  %52 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %53 = load %struct.record*, %struct.record** %4, align 8
  %54 = getelementptr inbounds %struct.record, %struct.record* %53, i32 0, i32 1
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = load i32, i32* @process_synthesized_event, align 4
  %57 = call i32 @perf_event__synthesize_features(%struct.perf_tool* %51, %struct.perf_session* %52, %struct.TYPE_9__* %55, i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %50
  %61 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %3, align 4
  br label %224

63:                                               ; preds = %50
  %64 = load %struct.record*, %struct.record** %4, align 8
  %65 = getelementptr inbounds %struct.record, %struct.record* %64, i32 0, i32 1
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  %69 = call i64 @have_tracepoints(i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %89

71:                                               ; preds = %63
  %72 = load %struct.perf_tool*, %struct.perf_tool** %10, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.record*, %struct.record** %4, align 8
  %75 = getelementptr inbounds %struct.record, %struct.record* %74, i32 0, i32 1
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = load i32, i32* @process_synthesized_event, align 4
  %78 = call i32 @perf_event__synthesize_tracing_data(%struct.perf_tool* %72, i32 %73, %struct.TYPE_9__* %76, i32 %77)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp sle i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %71
  %82 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %222

83:                                               ; preds = %71
  %84 = load i32, i32* %12, align 4
  %85 = load %struct.record*, %struct.record** %4, align 8
  %86 = getelementptr inbounds %struct.record, %struct.record* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, %84
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %83, %63
  br label %90

90:                                               ; preds = %89, %34
  %91 = load %struct.record*, %struct.record** %4, align 8
  %92 = call i32 @record__pick_pc(%struct.record* %91)
  %93 = load %struct.perf_tool*, %struct.perf_tool** %10, align 8
  %94 = load i32, i32* @process_synthesized_event, align 4
  %95 = load %struct.machine*, %struct.machine** %7, align 8
  %96 = call i32 @perf_event__synth_time_conv(i32 %92, %struct.perf_tool* %93, i32 %94, %struct.machine* %95)
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %90
  br label %222

100:                                              ; preds = %90
  %101 = load %struct.record*, %struct.record** %4, align 8
  %102 = getelementptr inbounds %struct.record, %struct.record* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %100
  %107 = load %struct.record*, %struct.record** %4, align 8
  %108 = getelementptr inbounds %struct.record, %struct.record* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.perf_tool*, %struct.perf_tool** %10, align 8
  %111 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %112 = load i32, i32* @process_synthesized_event, align 4
  %113 = call i32 @perf_event__synthesize_auxtrace_info(i32 %109, %struct.perf_tool* %110, %struct.perf_session* %111, i32 %112)
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %12, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %106
  br label %222

117:                                              ; preds = %106
  br label %118

118:                                              ; preds = %117, %100
  %119 = load %struct.record*, %struct.record** %4, align 8
  %120 = getelementptr inbounds %struct.record, %struct.record* %119, i32 0, i32 1
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %120, align 8
  %122 = call i32 @perf_evlist__exclude_kernel(%struct.TYPE_9__* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %141, label %124

124:                                              ; preds = %118
  %125 = load %struct.perf_tool*, %struct.perf_tool** %10, align 8
  %126 = load i32, i32* @process_synthesized_event, align 4
  %127 = load %struct.machine*, %struct.machine** %7, align 8
  %128 = call i32 @perf_event__synthesize_kernel_mmap(%struct.perf_tool* %125, i32 %126, %struct.machine* %127)
  store i32 %128, i32* %12, align 4
  %129 = load i32, i32* %12, align 4
  %130 = icmp slt i32 %129, 0
  %131 = zext i1 %130 to i32
  %132 = call i32 @WARN_ONCE(i32 %131, i8* getelementptr inbounds ([169 x i8], [169 x i8]* @.str.3, i64 0, i64 0))
  %133 = load %struct.perf_tool*, %struct.perf_tool** %10, align 8
  %134 = load i32, i32* @process_synthesized_event, align 4
  %135 = load %struct.machine*, %struct.machine** %7, align 8
  %136 = call i32 @perf_event__synthesize_modules(%struct.perf_tool* %133, i32 %134, %struct.machine* %135)
  store i32 %136, i32* %12, align 4
  %137 = load i32, i32* %12, align 4
  %138 = icmp slt i32 %137, 0
  %139 = zext i1 %138 to i32
  %140 = call i32 @WARN_ONCE(i32 %139, i8* getelementptr inbounds ([160 x i8], [160 x i8]* @.str.4, i64 0, i64 0))
  br label %141

141:                                              ; preds = %124, %118
  %142 = load i64, i64* @perf_guest, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %141
  %145 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %146 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %145, i32 0, i32 0
  %147 = load i32, i32* @perf_event__synthesize_guest_os, align 4
  %148 = load %struct.perf_tool*, %struct.perf_tool** %10, align 8
  %149 = call i32 @machines__process_guests(%struct.TYPE_10__* %146, i32 %147, %struct.perf_tool* %148)
  br label %150

150:                                              ; preds = %144, %141
  %151 = load %struct.record*, %struct.record** %4, align 8
  %152 = getelementptr inbounds %struct.record, %struct.record* %151, i32 0, i32 2
  %153 = load %struct.record*, %struct.record** %4, align 8
  %154 = getelementptr inbounds %struct.record, %struct.record* %153, i32 0, i32 1
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %154, align 8
  %156 = load i32, i32* @process_synthesized_event, align 4
  %157 = load %struct.perf_data*, %struct.perf_data** %8, align 8
  %158 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @perf_event__synthesize_extra_attr(%struct.perf_tool* %152, %struct.TYPE_9__* %155, i32 %156, i64 %159)
  store i32 %160, i32* %12, align 4
  %161 = load i32, i32* %12, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %150
  br label %222

164:                                              ; preds = %150
  %165 = load %struct.record*, %struct.record** %4, align 8
  %166 = getelementptr inbounds %struct.record, %struct.record* %165, i32 0, i32 2
  %167 = load %struct.record*, %struct.record** %4, align 8
  %168 = getelementptr inbounds %struct.record, %struct.record* %167, i32 0, i32 1
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @process_synthesized_event, align 4
  %174 = call i32 @perf_event__synthesize_thread_map2(%struct.perf_tool* %166, i32 %172, i32 %173, i32* null)
  store i32 %174, i32* %12, align 4
  %175 = load i32, i32* %12, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %164
  %178 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %179 = load i32, i32* %12, align 4
  store i32 %179, i32* %3, align 4
  br label %224

180:                                              ; preds = %164
  %181 = load %struct.record*, %struct.record** %4, align 8
  %182 = getelementptr inbounds %struct.record, %struct.record* %181, i32 0, i32 2
  %183 = load %struct.record*, %struct.record** %4, align 8
  %184 = getelementptr inbounds %struct.record, %struct.record* %183, i32 0, i32 1
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @process_synthesized_event, align 4
  %190 = call i32 @perf_event__synthesize_cpu_map(%struct.perf_tool* %182, i32 %188, i32 %189, i32* null)
  store i32 %190, i32* %12, align 4
  %191 = load i32, i32* %12, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %180
  %194 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %195 = load i32, i32* %12, align 4
  store i32 %195, i32* %3, align 4
  br label %224

196:                                              ; preds = %180
  %197 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %198 = load i32, i32* @process_synthesized_event, align 4
  %199 = load %struct.machine*, %struct.machine** %7, align 8
  %200 = load %struct.record_opts*, %struct.record_opts** %9, align 8
  %201 = call i32 @perf_event__synthesize_bpf_events(%struct.perf_session* %197, i32 %198, %struct.machine* %199, %struct.record_opts* %200)
  store i32 %201, i32* %12, align 4
  %202 = load i32, i32* %12, align 4
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %196
  %205 = call i32 @pr_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  br label %206

206:                                              ; preds = %204, %196
  %207 = load %struct.machine*, %struct.machine** %7, align 8
  %208 = load %struct.perf_tool*, %struct.perf_tool** %10, align 8
  %209 = load %struct.record_opts*, %struct.record_opts** %9, align 8
  %210 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %209, i32 0, i32 2
  %211 = load %struct.record*, %struct.record** %4, align 8
  %212 = getelementptr inbounds %struct.record, %struct.record* %211, i32 0, i32 1
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @process_synthesized_event, align 4
  %218 = load %struct.record_opts*, %struct.record_opts** %9, align 8
  %219 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @__machine__synthesize_threads(%struct.machine* %207, %struct.perf_tool* %208, i32* %210, i32 %216, i32 %217, i32 %220, i32 1)
  store i32 %221, i32* %12, align 4
  br label %222

222:                                              ; preds = %206, %163, %116, %99, %81, %48
  %223 = load i32, i32* %12, align 4
  store i32 %223, i32* %3, align 4
  br label %224

224:                                              ; preds = %222, %193, %177, %60, %33
  %225 = load i32, i32* %3, align 4
  ret i32 %225
}

declare dso_local i32 @perf_data__fd(%struct.perf_data*) #1

declare dso_local i32 @perf_event__synthesize_attrs(%struct.perf_tool*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @perf_event__synthesize_features(%struct.perf_tool*, %struct.perf_session*, %struct.TYPE_9__*, i32) #1

declare dso_local i64 @have_tracepoints(i32*) #1

declare dso_local i32 @perf_event__synthesize_tracing_data(%struct.perf_tool*, i32, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @perf_event__synth_time_conv(i32, %struct.perf_tool*, i32, %struct.machine*) #1

declare dso_local i32 @record__pick_pc(%struct.record*) #1

declare dso_local i32 @perf_event__synthesize_auxtrace_info(i32, %struct.perf_tool*, %struct.perf_session*, i32) #1

declare dso_local i32 @perf_evlist__exclude_kernel(%struct.TYPE_9__*) #1

declare dso_local i32 @perf_event__synthesize_kernel_mmap(%struct.perf_tool*, i32, %struct.machine*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @perf_event__synthesize_modules(%struct.perf_tool*, i32, %struct.machine*) #1

declare dso_local i32 @machines__process_guests(%struct.TYPE_10__*, i32, %struct.perf_tool*) #1

declare dso_local i32 @perf_event__synthesize_extra_attr(%struct.perf_tool*, %struct.TYPE_9__*, i32, i64) #1

declare dso_local i32 @perf_event__synthesize_thread_map2(%struct.perf_tool*, i32, i32, i32*) #1

declare dso_local i32 @perf_event__synthesize_cpu_map(%struct.perf_tool*, i32, i32, i32*) #1

declare dso_local i32 @perf_event__synthesize_bpf_events(%struct.perf_session*, i32, %struct.machine*, %struct.record_opts*) #1

declare dso_local i32 @pr_warning(i8*) #1

declare dso_local i32 @__machine__synthesize_threads(%struct.machine*, %struct.perf_tool*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
