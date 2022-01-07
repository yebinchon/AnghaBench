; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_perf_evsel__open_strerror.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_perf_evsel__open_strerror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.evsel = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.target = type { i32, i32 }

@STRERR_BUFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"No permission to enable %s event.\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [723 x i8] c"You may not have permission to collect %sstats.\0A\0AConsider tweaking /proc/sys/kernel/perf_event_paranoid,\0Awhich controls use of the performance events system by\0Aunprivileged users (without CAP_SYS_ADMIN).\0A\0AThe current value is %d:\0A\0A  -1: Allow use of (almost) all events by all users\0A      Ignore mlock limit after perf_event_mlock_kb without CAP_IPC_LOCK\0A>= 0: Disallow ftrace function tracepoint by users without CAP_SYS_ADMIN\0A      Disallow raw tracepoint access by users without CAP_SYS_ADMIN\0A>= 1: Disallow CPU event access by users without CAP_SYS_ADMIN\0A>= 2: Disallow kernel profiling by users without CAP_SYS_ADMIN\0A\0ATo make this setting permanent, edit /etc/sysctl.conf too, e.g.:\0A\0A\09kernel.perf_event_paranoid = -1\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"system-wide \00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"The %s event is not supported.\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [208 x i8] c"Too many events are opened.\0AProbably the maximum number of open file descriptors has been reached.\0AHint: Try again after reducing the number of events.\0AHint: Try increasing the limit with 'ulimit -n <limit>'\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"/proc/sys/kernel/perf_event_max_stack\00", align 1
@F_OK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [130 x i8] c"Not enough memory to setup event with callchain.\0AHint: Try tweaking /proc/sys/kernel/perf_event_max_stack\0AHint: Current value: %d\00", align 1
@.str.9 = private unnamed_addr constant [62 x i8] c"No such device - did you specify an out-of-range profile CPU?\00", align 1
@.str.10 = private unnamed_addr constant [79 x i8] c"%s: PMU Hardware doesn't support sampling/overflow-interrupts. Try 'perf stat'\00", align 1
@.str.11 = private unnamed_addr constant [67 x i8] c"'precise' request may not be supported. Try removing 'p' modifier.\00", align 1
@PERF_TYPE_HARDWARE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [43 x i8] c"No hardware sampling interrupt available.\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"oprofiled\00", align 1
@.str.14 = private unnamed_addr constant [117 x i8] c"The PMU counters are busy/taken by another profiler.\0AWe found oprofile daemon running, please stop it and try again.\00", align 1
@perf_missing_features = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str.15 = private unnamed_addr constant [62 x i8] c"Reading from overwrite event is not supported by this kernel.\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"clockid feature not supported.\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"wrong clockid (%d).\00", align 1
@clockid = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [62 x i8] c"The 'aux_output' feature is not supported, update the kernel.\00", align 1
@.str.19 = private unnamed_addr constant [135 x i8] c"The sys_perf_event_open() syscall returned with %d (%s) for event (%s).\0A/bin/dmesg | grep -i perf may provide additional information.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_evsel__open_strerror(%struct.evsel* %0, %struct.target* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.evsel*, align 8
  %8 = alloca %struct.target*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.evsel* %0, %struct.evsel** %7, align 8
  store %struct.target* %1, %struct.target** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load i32, i32* @STRERR_BUFSIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %20 = load i32, i32* %9, align 4
  switch i32 %20, label %163 [
    i32 128, label %21
    i32 136, label %21
    i32 131, label %47
    i32 133, label %53
    i32 130, label %57
    i32 132, label %71
    i32 129, label %81
    i32 135, label %118
    i32 134, label %126
  ]

21:                                               ; preds = %5, %5
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %22, 128
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i8*, i8** %10, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load %struct.evsel*, %struct.evsel** %7, align 8
  %28 = call i32 @perf_evsel__name(%struct.evsel* %27)
  %29 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %25, i64 %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %28)
  store i32 %29, i32* %14, align 4
  br label %30

30:                                               ; preds = %24, %21
  %31 = load i8*, i8** %10, align 8
  %32 = load i32, i32* %14, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i64, i64* %11, align 8
  %36 = load i32, i32* %14, align 4
  %37 = sext i32 %36 to i64
  %38 = sub i64 %35, %37
  %39 = load %struct.target*, %struct.target** %8, align 8
  %40 = getelementptr inbounds %struct.target, %struct.target* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %45 = call i32 (...) @perf_event_paranoid()
  %46 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %34, i64 %38, i8* getelementptr inbounds ([723 x i8], [723 x i8]* @.str.1, i64 0, i64 0), i8* %44, i32 %45)
  store i32 %46, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %174

47:                                               ; preds = %5
  %48 = load i8*, i8** %10, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load %struct.evsel*, %struct.evsel** %7, align 8
  %51 = call i32 @perf_evsel__name(%struct.evsel* %50)
  %52 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %48, i64 %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %51)
  store i32 %52, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %174

53:                                               ; preds = %5
  %54 = load i8*, i8** %10, align 8
  %55 = load i64, i64* %11, align 8
  %56 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %54, i64 %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([208 x i8], [208 x i8]* @.str.6, i64 0, i64 0))
  store i32 %56, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %174

57:                                               ; preds = %5
  %58 = load %struct.evsel*, %struct.evsel** %7, align 8
  %59 = call i32 @evsel__has_callchain(%struct.evsel* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %57
  %62 = load i32, i32* @F_OK, align 4
  %63 = call i32 @access(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %62)
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load i8*, i8** %10, align 8
  %67 = load i64, i64* %11, align 8
  %68 = call i32 (...) @sysctl__max_stack()
  %69 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %66, i64 %67, i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str.8, i64 0, i64 0), i32 %68)
  store i32 %69, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %174

70:                                               ; preds = %61, %57
  br label %164

71:                                               ; preds = %5
  %72 = load %struct.target*, %struct.target** %8, align 8
  %73 = getelementptr inbounds %struct.target, %struct.target* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load i8*, i8** %10, align 8
  %78 = load i64, i64* %11, align 8
  %79 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %77, i64 %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.9, i64 0, i64 0))
  store i32 %79, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %174

80:                                               ; preds = %71
  br label %164

81:                                               ; preds = %5
  %82 = load %struct.evsel*, %struct.evsel** %7, align 8
  %83 = getelementptr inbounds %struct.evsel, %struct.evsel* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %81
  %89 = load i8*, i8** %10, align 8
  %90 = load i64, i64* %11, align 8
  %91 = load %struct.evsel*, %struct.evsel** %7, align 8
  %92 = call i32 @perf_evsel__name(%struct.evsel* %91)
  %93 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %89, i64 %90, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.10, i64 0, i64 0), i32 %92)
  store i32 %93, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %174

94:                                               ; preds = %81
  %95 = load %struct.evsel*, %struct.evsel** %7, align 8
  %96 = getelementptr inbounds %struct.evsel, %struct.evsel* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %94
  %102 = load i8*, i8** %10, align 8
  %103 = load i64, i64* %11, align 8
  %104 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %102, i64 %103, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.11, i64 0, i64 0))
  store i32 %104, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %174

105:                                              ; preds = %94
  %106 = load %struct.evsel*, %struct.evsel** %7, align 8
  %107 = getelementptr inbounds %struct.evsel, %struct.evsel* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @PERF_TYPE_HARDWARE, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %105
  %114 = load i8*, i8** %10, align 8
  %115 = load i64, i64* %11, align 8
  %116 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %114, i64 %115, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0))
  store i32 %116, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %174

117:                                              ; preds = %105
  br label %164

118:                                              ; preds = %5
  %119 = call i32 @find_process(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %118
  %122 = load i8*, i8** %10, align 8
  %123 = load i64, i64* %11, align 8
  %124 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %122, i64 %123, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.14, i64 0, i64 0))
  store i32 %124, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %174

125:                                              ; preds = %118
  br label %164

126:                                              ; preds = %5
  %127 = load %struct.evsel*, %struct.evsel** %7, align 8
  %128 = getelementptr inbounds %struct.evsel, %struct.evsel* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %126
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @perf_missing_features, i32 0, i32 3), align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %133
  %137 = load i8*, i8** %10, align 8
  %138 = load i64, i64* %11, align 8
  %139 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %137, i64 %138, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.15, i64 0, i64 0))
  store i32 %139, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %174

140:                                              ; preds = %133, %126
  %141 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @perf_missing_features, i32 0, i32 2), align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %140
  %144 = load i8*, i8** %10, align 8
  %145 = load i64, i64* %11, align 8
  %146 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %144, i64 %145, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0))
  store i32 %146, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %174

147:                                              ; preds = %140
  %148 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @perf_missing_features, i32 0, i32 1), align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %147
  %151 = load i8*, i8** %10, align 8
  %152 = load i64, i64* %11, align 8
  %153 = load i32, i32* @clockid, align 4
  %154 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %151, i64 %152, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i32 %153)
  store i32 %154, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %174

155:                                              ; preds = %147
  %156 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @perf_missing_features, i32 0, i32 0), align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %155
  %159 = load i8*, i8** %10, align 8
  %160 = load i64, i64* %11, align 8
  %161 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %159, i64 %160, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.18, i64 0, i64 0))
  store i32 %161, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %174

162:                                              ; preds = %155
  br label %164

163:                                              ; preds = %5
  br label %164

164:                                              ; preds = %163, %162, %125, %117, %80, %70
  %165 = load i8*, i8** %10, align 8
  %166 = load i64, i64* %11, align 8
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* %9, align 4
  %169 = trunc i64 %17 to i32
  %170 = call i32 @str_error_r(i32 %168, i8* %19, i32 %169)
  %171 = load %struct.evsel*, %struct.evsel** %7, align 8
  %172 = call i32 @perf_evsel__name(%struct.evsel* %171)
  %173 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %165, i64 %166, i8* getelementptr inbounds ([135 x i8], [135 x i8]* @.str.19, i64 0, i64 0), i32 %167, i32 %170, i32 %172)
  store i32 %173, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %174

174:                                              ; preds = %164, %158, %150, %143, %136, %121, %113, %101, %88, %76, %65, %53, %47, %30
  %175 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %175)
  %176 = load i32, i32* %6, align 4
  ret i32 %176
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @scnprintf(i8*, i64, i8*, ...) #2

declare dso_local i32 @perf_evsel__name(%struct.evsel*) #2

declare dso_local i32 @perf_event_paranoid(...) #2

declare dso_local i32 @evsel__has_callchain(%struct.evsel*) #2

declare dso_local i32 @access(i8*, i32) #2

declare dso_local i32 @sysctl__max_stack(...) #2

declare dso_local i32 @find_process(i8*) #2

declare dso_local i32 @str_error_r(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
