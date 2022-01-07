; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-record.c_cmd_record.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-record.c_cmd_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.record = type { i32, i32, i32, i32, %struct.TYPE_23__*, %struct.TYPE_22__, i64, i64, %struct.TYPE_18__, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_22__ = type { i64, i64, i32, i32, i32, i64, i64, i64, %struct.TYPE_20__, i32, i32, i64, i64 }
%struct.TYPE_20__ = type { i32, i64, i64, i64 }
%struct.TYPE_18__ = type { i64, i32, i64, i64 }
%struct.TYPE_21__ = type { i32 }

@record = common dso_local global %struct.record zeroinitializer, align 8
@BUFSIZ = common dso_local global i32 0, align 4
@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@record_options = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"clang-path\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"NO_LIBBPF=1\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"clang-opt\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"vmlinux\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"NO_DWARF=1\00", align 1
@PERF_AFFINITY_SYS = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@perf_record_config = common dso_local global i32 0, align 4
@record_usage = common dso_local global i32 0, align 4
@PARSE_OPT_STOP_AT_NON_OPTION = common dso_local global i32 0, align 4
@quiet = common dso_local global i64 0, align 8
@nr_cgroups = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [53 x i8] c"cgroup monitoring only available in system-wide mode\00", align 1
@.str.7 = private unnamed_addr constant [79 x i8] c"Compression enabled, disabling build id collection at the end of the session.\0A\00", align 1
@.str.8 = private unnamed_addr constant [57 x i8] c"kernel does not support recording context switch events\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"switch-events\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [14 x i8] c"switch-output\00", align 1
@SIGALRM = common dso_local global i32 0, align 4
@alarm_sig_handler = common dso_local global i32 0, align 4
@symbol_conf = common dso_local global %struct.TYPE_21__ zeroinitializer, align 4
@dry_run = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [36 x i8] c"ERROR: Setup BPF stdout failed: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"Not enough memory for event selector list\0A\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@UINT_MAX = common dso_local global i64 0, align 8
@nr_cblocks_max = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [16 x i8] c"nr_cblocks: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"affinity: %s\0A\00", align 1
@affinity_tags = common dso_local global i64* null, align 8
@.str.17 = private unnamed_addr constant [16 x i8] c"mmap flush: %d\0A\00", align 1
@comp_level_max = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [16 x i8] c"comp level: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_record(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.record*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.record* @record, %struct.record** %7, align 8
  %13 = load i32, i32* @BUFSIZ, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load i32, i32* @LC_ALL, align 4
  %18 = call i32 @setlocale(i32 %17, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @record_options, align 4
  %20 = call i32 (i32, i32, i8*, i8*, i32, ...) bitcast (i32 (...)* @set_option_nobuild to i32 (i32, i32, i8*, i8*, i32, ...)*)(i32 %19, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %21 = load i32, i32* @record_options, align 4
  %22 = call i32 (i32, i32, i8*, i8*, i32, ...) bitcast (i32 (...)* @set_option_nobuild to i32 (i32, i32, i8*, i8*, i32, ...)*)(i32 %21, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %23 = load i32, i32* @record_options, align 4
  %24 = call i32 (i32, i32, i8*, i8*, i32, ...) bitcast (i32 (...)* @set_option_nobuild to i32 (i32, i32, i8*, i8*, i32, ...)*)(i32 %23, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %25 = load %struct.record*, %struct.record** %7, align 8
  %26 = getelementptr inbounds %struct.record, %struct.record* %25, i32 0, i32 9
  %27 = call i32 @CPU_ZERO(i32* %26)
  %28 = load i64, i64* @PERF_AFFINITY_SYS, align 8
  %29 = load %struct.record*, %struct.record** %7, align 8
  %30 = getelementptr inbounds %struct.record, %struct.record* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 0
  store i64 %28, i64* %31, align 8
  %32 = call %struct.TYPE_23__* (...) @evlist__new()
  %33 = load %struct.record*, %struct.record** %7, align 8
  %34 = getelementptr inbounds %struct.record, %struct.record* %33, i32 0, i32 4
  store %struct.TYPE_23__* %32, %struct.TYPE_23__** %34, align 8
  %35 = load %struct.record*, %struct.record** %7, align 8
  %36 = getelementptr inbounds %struct.record, %struct.record* %35, i32 0, i32 4
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %36, align 8
  %38 = icmp eq %struct.TYPE_23__* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %2
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %444

42:                                               ; preds = %2
  %43 = load i32, i32* @perf_record_config, align 4
  %44 = load %struct.record*, %struct.record** %7, align 8
  %45 = call i32 @perf_config(i32 %43, %struct.record* %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %444

50:                                               ; preds = %42
  %51 = load i32, i32* %4, align 4
  %52 = load i8**, i8*** %5, align 8
  %53 = load i32, i32* @record_options, align 4
  %54 = load i32, i32* @record_usage, align 4
  %55 = load i32, i32* @PARSE_OPT_STOP_AT_NON_OPTION, align 4
  %56 = call i32 @parse_options(i32 %51, i8** %52, i32 %53, i32 %54, i32 %55)
  store i32 %56, i32* %4, align 4
  %57 = load i64, i64* @quiet, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %50
  %60 = call i32 (...) @perf_quiet_option()
  br label %61

61:                                               ; preds = %59, %50
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %75, label %64

64:                                               ; preds = %61
  %65 = load %struct.record*, %struct.record** %7, align 8
  %66 = getelementptr inbounds %struct.record, %struct.record* %65, i32 0, i32 5
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 8
  %68 = call i64 @target__none(%struct.TYPE_20__* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = load %struct.record*, %struct.record** %7, align 8
  %72 = getelementptr inbounds %struct.record, %struct.record* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  br label %75

75:                                               ; preds = %70, %64, %61
  %76 = load i64, i64* @nr_cgroups, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %75
  %79 = load %struct.record*, %struct.record** %7, align 8
  %80 = getelementptr inbounds %struct.record, %struct.record* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %78
  %86 = load i32, i32* @record_usage, align 4
  %87 = load i32, i32* @record_options, align 4
  %88 = call i32 @usage_with_options_msg(i32 %86, i32 %87, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0))
  br label %89

89:                                               ; preds = %85, %78, %75
  %90 = load %struct.record*, %struct.record** %7, align 8
  %91 = getelementptr inbounds %struct.record, %struct.record* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %89
  %96 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.7, i64 0, i64 0))
  %97 = load %struct.record*, %struct.record** %7, align 8
  %98 = getelementptr inbounds %struct.record, %struct.record* %97, i32 0, i32 0
  store i32 1, i32* %98, align 8
  br label %99

99:                                               ; preds = %95, %89
  %100 = load %struct.record*, %struct.record** %7, align 8
  %101 = getelementptr inbounds %struct.record, %struct.record* %100, i32 0, i32 5
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 12
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %99
  %106 = call i32 (...) @perf_can_record_switch_events()
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %115, label %108

108:                                              ; preds = %105
  %109 = call i32 (i8*, ...) @ui__error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0))
  %110 = load i32, i32* @record_usage, align 4
  %111 = load i32, i32* @record_options, align 4
  %112 = call i32 @parse_options_usage(i32 %110, i32 %111, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 0)
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %444

115:                                              ; preds = %105, %99
  %116 = load %struct.record*, %struct.record** %7, align 8
  %117 = call i64 @switch_output_setup(%struct.record* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %115
  %120 = load i32, i32* @record_usage, align 4
  %121 = load i32, i32* @record_options, align 4
  %122 = call i32 @parse_options_usage(i32 %120, i32 %121, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 0)
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %444

125:                                              ; preds = %115
  %126 = load %struct.record*, %struct.record** %7, align 8
  %127 = getelementptr inbounds %struct.record, %struct.record* %126, i32 0, i32 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %125
  %132 = load i32, i32* @SIGALRM, align 4
  %133 = load i32, i32* @alarm_sig_handler, align 4
  %134 = call i32 @signal(i32 %132, i32 %133)
  %135 = load %struct.record*, %struct.record** %7, align 8
  %136 = getelementptr inbounds %struct.record, %struct.record* %135, i32 0, i32 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @alarm(i64 %138)
  br label %140

140:                                              ; preds = %131, %125
  %141 = load %struct.record*, %struct.record** %7, align 8
  %142 = getelementptr inbounds %struct.record, %struct.record* %141, i32 0, i32 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %164

146:                                              ; preds = %140
  %147 = load %struct.record*, %struct.record** %7, align 8
  %148 = getelementptr inbounds %struct.record, %struct.record* %147, i32 0, i32 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @calloc(i32 8, i64 %150)
  %152 = load %struct.record*, %struct.record** %7, align 8
  %153 = getelementptr inbounds %struct.record, %struct.record* %152, i32 0, i32 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 1
  store i32 %151, i32* %154, align 8
  %155 = load %struct.record*, %struct.record** %7, align 8
  %156 = getelementptr inbounds %struct.record, %struct.record* %155, i32 0, i32 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %146
  %161 = load i32, i32* @EINVAL, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %444

163:                                              ; preds = %146
  br label %164

164:                                              ; preds = %163, %140
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @symbol_conf, i32 0, i32 0), align 4
  %165 = call i32 @symbol__init(i32* null)
  %166 = load %struct.record*, %struct.record** %7, align 8
  %167 = call i32 @record__auxtrace_init(%struct.record* %166)
  store i32 %167, i32* %6, align 4
  %168 = load i32, i32* %6, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %164
  br label %433

171:                                              ; preds = %164
  %172 = load i64, i64* @dry_run, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %171
  br label %433

175:                                              ; preds = %171
  %176 = load %struct.record*, %struct.record** %7, align 8
  %177 = getelementptr inbounds %struct.record, %struct.record* %176, i32 0, i32 4
  %178 = load %struct.TYPE_23__*, %struct.TYPE_23__** %177, align 8
  %179 = call i32 @bpf__setup_stdout(%struct.TYPE_23__* %178)
  store i32 %179, i32* %6, align 4
  %180 = load i32, i32* %6, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %190

182:                                              ; preds = %175
  %183 = load %struct.record*, %struct.record** %7, align 8
  %184 = getelementptr inbounds %struct.record, %struct.record* %183, i32 0, i32 4
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %184, align 8
  %186 = load i32, i32* %6, align 4
  %187 = trunc i64 %14 to i32
  %188 = call i32 @bpf__strerror_setup_stdout(%struct.TYPE_23__* %185, i32 %186, i8* %16, i32 %187)
  %189 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i8* %16)
  br label %433

190:                                              ; preds = %175
  %191 = load i32, i32* @ENOMEM, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %6, align 4
  %193 = load %struct.record*, %struct.record** %7, align 8
  %194 = getelementptr inbounds %struct.record, %struct.record* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %202, label %197

197:                                              ; preds = %190
  %198 = load %struct.record*, %struct.record** %7, align 8
  %199 = getelementptr inbounds %struct.record, %struct.record* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %197, %190
  %203 = call i32 (...) @disable_buildid_cache()
  br label %243

204:                                              ; preds = %197
  %205 = load %struct.record*, %struct.record** %7, align 8
  %206 = getelementptr inbounds %struct.record, %struct.record* %205, i32 0, i32 8
  %207 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %242

210:                                              ; preds = %204
  store i32 1, i32* %11, align 4
  %211 = load %struct.record*, %struct.record** %7, align 8
  %212 = getelementptr inbounds %struct.record, %struct.record* %211, i32 0, i32 7
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %221

215:                                              ; preds = %210
  %216 = load %struct.record*, %struct.record** %7, align 8
  %217 = getelementptr inbounds %struct.record, %struct.record* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %221, label %220

220:                                              ; preds = %215
  store i32 0, i32* %11, align 4
  br label %221

221:                                              ; preds = %220, %215, %210
  %222 = load %struct.record*, %struct.record** %7, align 8
  %223 = getelementptr inbounds %struct.record, %struct.record* %222, i32 0, i32 6
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %232

226:                                              ; preds = %221
  %227 = load %struct.record*, %struct.record** %7, align 8
  %228 = getelementptr inbounds %struct.record, %struct.record* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %232, label %231

231:                                              ; preds = %226
  store i32 0, i32* %11, align 4
  br label %232

232:                                              ; preds = %231, %226, %221
  %233 = load i32, i32* %11, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %241

235:                                              ; preds = %232
  %236 = load %struct.record*, %struct.record** %7, align 8
  %237 = getelementptr inbounds %struct.record, %struct.record* %236, i32 0, i32 0
  store i32 1, i32* %237, align 8
  %238 = load %struct.record*, %struct.record** %7, align 8
  %239 = getelementptr inbounds %struct.record, %struct.record* %238, i32 0, i32 1
  store i32 1, i32* %239, align 4
  %240 = call i32 (...) @disable_buildid_cache()
  br label %241

241:                                              ; preds = %235, %232
  br label %242

242:                                              ; preds = %241, %204
  br label %243

243:                                              ; preds = %242, %202
  %244 = load i64, i64* getelementptr inbounds (%struct.record, %struct.record* @record, i32 0, i32 5, i32 11), align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %243
  store i32 1, i32* getelementptr inbounds (%struct.record, %struct.record* @record, i32 0, i32 5, i32 2), align 8
  br label %247

247:                                              ; preds = %246, %243
  %248 = load %struct.record*, %struct.record** %7, align 8
  %249 = getelementptr inbounds %struct.record, %struct.record* %248, i32 0, i32 4
  %250 = load %struct.TYPE_23__*, %struct.TYPE_23__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = icmp eq i64 %253, 0
  br i1 %254, label %255, label %267

255:                                              ; preds = %247
  %256 = load %struct.record*, %struct.record** %7, align 8
  %257 = getelementptr inbounds %struct.record, %struct.record* %256, i32 0, i32 4
  %258 = load %struct.TYPE_23__*, %struct.TYPE_23__** %257, align 8
  %259 = load i32, i32* getelementptr inbounds (%struct.record, %struct.record* @record, i32 0, i32 5, i32 10), align 4
  %260 = icmp ne i32 %259, 0
  %261 = xor i1 %260, true
  %262 = zext i1 %261 to i32
  %263 = call i64 @__perf_evlist__add_default(%struct.TYPE_23__* %258, i32 %262)
  %264 = icmp slt i64 %263, 0
  br i1 %264, label %265, label %267

265:                                              ; preds = %255
  %266 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0))
  br label %433

267:                                              ; preds = %255, %247
  %268 = load %struct.record*, %struct.record** %7, align 8
  %269 = getelementptr inbounds %struct.record, %struct.record* %268, i32 0, i32 5
  %270 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %269, i32 0, i32 8
  %271 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %270, i32 0, i32 3
  %272 = load i64, i64* %271, align 8
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %284

274:                                              ; preds = %267
  %275 = load %struct.record*, %struct.record** %7, align 8
  %276 = getelementptr inbounds %struct.record, %struct.record* %275, i32 0, i32 5
  %277 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %276, i32 0, i32 9
  %278 = load i32, i32* %277, align 8
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %284, label %280

280:                                              ; preds = %274
  %281 = load %struct.record*, %struct.record** %7, align 8
  %282 = getelementptr inbounds %struct.record, %struct.record* %281, i32 0, i32 5
  %283 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %282, i32 0, i32 3
  store i32 1, i32* %283, align 4
  br label %284

284:                                              ; preds = %280, %274, %267
  %285 = load %struct.record*, %struct.record** %7, align 8
  %286 = getelementptr inbounds %struct.record, %struct.record* %285, i32 0, i32 5
  %287 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %286, i32 0, i32 8
  %288 = call i32 @target__validate(%struct.TYPE_20__* %287)
  store i32 %288, i32* %6, align 4
  %289 = load i32, i32* %6, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %299

291:                                              ; preds = %284
  %292 = load %struct.record*, %struct.record** %7, align 8
  %293 = getelementptr inbounds %struct.record, %struct.record* %292, i32 0, i32 5
  %294 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %293, i32 0, i32 8
  %295 = load i32, i32* %6, align 4
  %296 = load i32, i32* @BUFSIZ, align 4
  %297 = call i32 @target__strerror(%struct.TYPE_20__* %294, i32 %295, i8* %16, i32 %296)
  %298 = call i32 @ui__warning(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* %16)
  br label %299

299:                                              ; preds = %291, %284
  %300 = load %struct.record*, %struct.record** %7, align 8
  %301 = getelementptr inbounds %struct.record, %struct.record* %300, i32 0, i32 5
  %302 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %301, i32 0, i32 8
  %303 = call i32 @target__parse_uid(%struct.TYPE_20__* %302)
  store i32 %303, i32* %6, align 4
  %304 = load i32, i32* %6, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %317

306:                                              ; preds = %299
  %307 = load i32, i32* @errno, align 4
  store i32 %307, i32* %12, align 4
  %308 = load %struct.record*, %struct.record** %7, align 8
  %309 = getelementptr inbounds %struct.record, %struct.record* %308, i32 0, i32 5
  %310 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %309, i32 0, i32 8
  %311 = load i32, i32* %6, align 4
  %312 = load i32, i32* @BUFSIZ, align 4
  %313 = call i32 @target__strerror(%struct.TYPE_20__* %310, i32 %311, i8* %16, i32 %312)
  %314 = call i32 (i8*, ...) @ui__error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* %16)
  %315 = load i32, i32* %12, align 4
  %316 = sub nsw i32 0, %315
  store i32 %316, i32* %6, align 4
  br label %433

317:                                              ; preds = %299
  %318 = load %struct.record*, %struct.record** %7, align 8
  %319 = getelementptr inbounds %struct.record, %struct.record* %318, i32 0, i32 5
  %320 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %319, i32 0, i32 8
  %321 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %320, i32 0, i32 1
  %322 = load i64, i64* %321, align 8
  %323 = load i64, i64* @UINT_MAX, align 8
  %324 = icmp ne i64 %322, %323
  br i1 %324, label %332, label %325

325:                                              ; preds = %317
  %326 = load %struct.record*, %struct.record** %7, align 8
  %327 = getelementptr inbounds %struct.record, %struct.record* %326, i32 0, i32 5
  %328 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %327, i32 0, i32 8
  %329 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %328, i32 0, i32 2
  %330 = load i64, i64* %329, align 8
  %331 = icmp ne i64 %330, 0
  br label %332

332:                                              ; preds = %325, %317
  %333 = phi i1 [ true, %317 ], [ %331, %325 ]
  %334 = zext i1 %333 to i32
  %335 = load %struct.record*, %struct.record** %7, align 8
  %336 = getelementptr inbounds %struct.record, %struct.record* %335, i32 0, i32 5
  %337 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %336, i32 0, i32 4
  store i32 %334, i32* %337, align 8
  %338 = load i32, i32* @ENOMEM, align 4
  %339 = sub nsw i32 0, %338
  store i32 %339, i32* %6, align 4
  %340 = load %struct.record*, %struct.record** %7, align 8
  %341 = getelementptr inbounds %struct.record, %struct.record* %340, i32 0, i32 4
  %342 = load %struct.TYPE_23__*, %struct.TYPE_23__** %341, align 8
  %343 = load %struct.record*, %struct.record** %7, align 8
  %344 = getelementptr inbounds %struct.record, %struct.record* %343, i32 0, i32 5
  %345 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %344, i32 0, i32 8
  %346 = call i64 @perf_evlist__create_maps(%struct.TYPE_23__* %342, %struct.TYPE_20__* %345)
  %347 = icmp slt i64 %346, 0
  br i1 %347, label %348, label %352

348:                                              ; preds = %332
  %349 = load i32, i32* @record_usage, align 4
  %350 = load i32, i32* @record_options, align 4
  %351 = call i32 @usage_with_options(i32 %349, i32 %350)
  br label %352

352:                                              ; preds = %348, %332
  %353 = load %struct.record*, %struct.record** %7, align 8
  %354 = getelementptr inbounds %struct.record, %struct.record* %353, i32 0, i32 3
  %355 = load i32, i32* %354, align 4
  %356 = load %struct.record*, %struct.record** %7, align 8
  %357 = getelementptr inbounds %struct.record, %struct.record* %356, i32 0, i32 4
  %358 = load %struct.TYPE_23__*, %struct.TYPE_23__** %357, align 8
  %359 = load %struct.record*, %struct.record** %7, align 8
  %360 = getelementptr inbounds %struct.record, %struct.record* %359, i32 0, i32 5
  %361 = call i32 @auxtrace_record__options(i32 %355, %struct.TYPE_23__* %358, %struct.TYPE_22__* %360)
  store i32 %361, i32* %6, align 4
  %362 = load i32, i32* %6, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %365

364:                                              ; preds = %352
  br label %433

365:                                              ; preds = %352
  %366 = load %struct.record*, %struct.record** %7, align 8
  %367 = getelementptr inbounds %struct.record, %struct.record* %366, i32 0, i32 5
  %368 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %367, i32 0, i32 7
  %369 = load i64, i64* %368, align 8
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %371, label %374

371:                                              ; preds = %365
  %372 = load %struct.record*, %struct.record** %7, align 8
  %373 = getelementptr inbounds %struct.record, %struct.record* %372, i32 0, i32 2
  store i32 1, i32* %373, align 8
  br label %374

374:                                              ; preds = %371, %365
  %375 = load %struct.record*, %struct.record** %7, align 8
  %376 = getelementptr inbounds %struct.record, %struct.record* %375, i32 0, i32 5
  %377 = call i64 @record_opts__config(%struct.TYPE_22__* %376)
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %382

379:                                              ; preds = %374
  %380 = load i32, i32* @EINVAL, align 4
  %381 = sub nsw i32 0, %380
  store i32 %381, i32* %6, align 4
  br label %433

382:                                              ; preds = %374
  %383 = load %struct.record*, %struct.record** %7, align 8
  %384 = getelementptr inbounds %struct.record, %struct.record* %383, i32 0, i32 5
  %385 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %384, i32 0, i32 5
  %386 = load i64, i64* %385, align 8
  %387 = load i64, i64* @nr_cblocks_max, align 8
  %388 = icmp sgt i64 %386, %387
  br i1 %388, label %389, label %394

389:                                              ; preds = %382
  %390 = load i64, i64* @nr_cblocks_max, align 8
  %391 = load %struct.record*, %struct.record** %7, align 8
  %392 = getelementptr inbounds %struct.record, %struct.record* %391, i32 0, i32 5
  %393 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %392, i32 0, i32 5
  store i64 %390, i64* %393, align 8
  br label %394

394:                                              ; preds = %389, %382
  %395 = load %struct.record*, %struct.record** %7, align 8
  %396 = getelementptr inbounds %struct.record, %struct.record* %395, i32 0, i32 5
  %397 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %396, i32 0, i32 5
  %398 = load i64, i64* %397, align 8
  %399 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i64 %398)
  %400 = load i64*, i64** @affinity_tags, align 8
  %401 = load %struct.record*, %struct.record** %7, align 8
  %402 = getelementptr inbounds %struct.record, %struct.record* %401, i32 0, i32 5
  %403 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %402, i32 0, i32 0
  %404 = load i64, i64* %403, align 8
  %405 = getelementptr inbounds i64, i64* %400, i64 %404
  %406 = load i64, i64* %405, align 8
  %407 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i64 %406)
  %408 = load %struct.record*, %struct.record** %7, align 8
  %409 = getelementptr inbounds %struct.record, %struct.record* %408, i32 0, i32 5
  %410 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %409, i32 0, i32 6
  %411 = load i64, i64* %410, align 8
  %412 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i64 %411)
  %413 = load %struct.record*, %struct.record** %7, align 8
  %414 = getelementptr inbounds %struct.record, %struct.record* %413, i32 0, i32 5
  %415 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %414, i32 0, i32 1
  %416 = load i64, i64* %415, align 8
  %417 = load i64, i64* @comp_level_max, align 8
  %418 = icmp sgt i64 %416, %417
  br i1 %418, label %419, label %424

419:                                              ; preds = %394
  %420 = load i64, i64* @comp_level_max, align 8
  %421 = load %struct.record*, %struct.record** %7, align 8
  %422 = getelementptr inbounds %struct.record, %struct.record* %421, i32 0, i32 5
  %423 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %422, i32 0, i32 1
  store i64 %420, i64* %423, align 8
  br label %424

424:                                              ; preds = %419, %394
  %425 = load %struct.record*, %struct.record** %7, align 8
  %426 = getelementptr inbounds %struct.record, %struct.record* %425, i32 0, i32 5
  %427 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %426, i32 0, i32 1
  %428 = load i64, i64* %427, align 8
  %429 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i64 %428)
  %430 = load i32, i32* %4, align 4
  %431 = load i8**, i8*** %5, align 8
  %432 = call i32 @__cmd_record(%struct.record* @record, i32 %430, i8** %431)
  store i32 %432, i32* %6, align 4
  br label %433

433:                                              ; preds = %424, %379, %364, %306, %265, %182, %174, %170
  %434 = load %struct.record*, %struct.record** %7, align 8
  %435 = getelementptr inbounds %struct.record, %struct.record* %434, i32 0, i32 4
  %436 = load %struct.TYPE_23__*, %struct.TYPE_23__** %435, align 8
  %437 = call i32 @evlist__delete(%struct.TYPE_23__* %436)
  %438 = call i32 (...) @symbol__exit()
  %439 = load %struct.record*, %struct.record** %7, align 8
  %440 = getelementptr inbounds %struct.record, %struct.record* %439, i32 0, i32 3
  %441 = load i32, i32* %440, align 4
  %442 = call i32 @auxtrace_record__free(i32 %441)
  %443 = load i32, i32* %6, align 4
  store i32 %443, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %444

444:                                              ; preds = %433, %160, %119, %108, %48, %39
  %445 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %445)
  %446 = load i32, i32* %3, align 4
  ret i32 %446
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @setlocale(i32, i8*) #2

declare dso_local i32 @set_option_nobuild(...) #2

declare dso_local i32 @CPU_ZERO(i32*) #2

declare dso_local %struct.TYPE_23__* @evlist__new(...) #2

declare dso_local i32 @perf_config(i32, %struct.record*) #2

declare dso_local i32 @parse_options(i32, i8**, i32, i32, i32) #2

declare dso_local i32 @perf_quiet_option(...) #2

declare dso_local i64 @target__none(%struct.TYPE_20__*) #2

declare dso_local i32 @usage_with_options_msg(i32, i32, i8*) #2

declare dso_local i32 @pr_debug(i8*, ...) #2

declare dso_local i32 @perf_can_record_switch_events(...) #2

declare dso_local i32 @ui__error(i8*, ...) #2

declare dso_local i32 @parse_options_usage(i32, i32, i8*, i32) #2

declare dso_local i64 @switch_output_setup(%struct.record*) #2

declare dso_local i32 @signal(i32, i32) #2

declare dso_local i32 @alarm(i64) #2

declare dso_local i32 @calloc(i32, i64) #2

declare dso_local i32 @symbol__init(i32*) #2

declare dso_local i32 @record__auxtrace_init(%struct.record*) #2

declare dso_local i32 @bpf__setup_stdout(%struct.TYPE_23__*) #2

declare dso_local i32 @bpf__strerror_setup_stdout(%struct.TYPE_23__*, i32, i8*, i32) #2

declare dso_local i32 @pr_err(i8*, ...) #2

declare dso_local i32 @disable_buildid_cache(...) #2

declare dso_local i64 @__perf_evlist__add_default(%struct.TYPE_23__*, i32) #2

declare dso_local i32 @target__validate(%struct.TYPE_20__*) #2

declare dso_local i32 @target__strerror(%struct.TYPE_20__*, i32, i8*, i32) #2

declare dso_local i32 @ui__warning(i8*, i8*) #2

declare dso_local i32 @target__parse_uid(%struct.TYPE_20__*) #2

declare dso_local i64 @perf_evlist__create_maps(%struct.TYPE_23__*, %struct.TYPE_20__*) #2

declare dso_local i32 @usage_with_options(i32, i32) #2

declare dso_local i32 @auxtrace_record__options(i32, %struct.TYPE_23__*, %struct.TYPE_22__*) #2

declare dso_local i64 @record_opts__config(%struct.TYPE_22__*) #2

declare dso_local i32 @__cmd_record(%struct.record*, i32, i8**) #2

declare dso_local i32 @evlist__delete(%struct.TYPE_23__*) #2

declare dso_local i32 @symbol__exit(...) #2

declare dso_local i32 @auxtrace_record__free(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
