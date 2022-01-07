; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_attr.c_store_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_attr.c_store_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_attr = type { i32, i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@ready = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%s/event-%d-%llu-%d\00", align 1
@dir = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"test attr - failed to open event file\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"[event-%d-%llu-%d]\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"test attr - failed to write event file\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"lu\00", align 1
@type = common dso_local global i32 0, align 4
@PRIu32 = common dso_local global i8* null, align 8
@size = common dso_local global i32 0, align 4
@config = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"llu\00", align 1
@sample_period = common dso_local global i32 0, align 4
@sample_type = common dso_local global i32 0, align 4
@read_format = common dso_local global i32 0, align 4
@disabled = common dso_local global i32 0, align 4
@inherit = common dso_local global i32 0, align 4
@pinned = common dso_local global i32 0, align 4
@exclusive = common dso_local global i32 0, align 4
@exclude_user = common dso_local global i32 0, align 4
@exclude_kernel = common dso_local global i32 0, align 4
@exclude_hv = common dso_local global i32 0, align 4
@exclude_idle = common dso_local global i32 0, align 4
@mmap = common dso_local global i32 0, align 4
@comm = common dso_local global i32 0, align 4
@freq = common dso_local global i32 0, align 4
@inherit_stat = common dso_local global i32 0, align 4
@enable_on_exec = common dso_local global i32 0, align 4
@task = common dso_local global i32 0, align 4
@watermark = common dso_local global i32 0, align 4
@precise_ip = common dso_local global i32 0, align 4
@mmap_data = common dso_local global i32 0, align 4
@sample_id_all = common dso_local global i32 0, align 4
@exclude_host = common dso_local global i32 0, align 4
@exclude_guest = common dso_local global i32 0, align 4
@exclude_callchain_kernel = common dso_local global i32 0, align 4
@exclude_callchain_user = common dso_local global i32 0, align 4
@mmap2 = common dso_local global i32 0, align 4
@comm_exec = common dso_local global i32 0, align 4
@context_switch = common dso_local global i32 0, align 4
@write_backward = common dso_local global i32 0, align 4
@namespaces = common dso_local global i32 0, align 4
@use_clockid = common dso_local global i32 0, align 4
@wakeup_events = common dso_local global i32 0, align 4
@bp_type = common dso_local global i32 0, align 4
@config1 = common dso_local global i32 0, align 4
@config2 = common dso_local global i32 0, align 4
@branch_sample_type = common dso_local global i32 0, align 4
@sample_regs_user = common dso_local global i32 0, align 4
@sample_stack_user = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event_attr*, i64, i32, i32, i32, i64)* @store_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_event(%struct.perf_event_attr* %0, i64 %1, i32 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.perf_event_attr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.perf_event_attr* %0, %struct.perf_event_attr** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %18 = load i32, i32* @PATH_MAX, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %15, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %16, align 8
  %22 = load i32, i32* @ready, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  store i32 1, i32* %17, align 4
  br label %167

25:                                               ; preds = %6
  %26 = load i32, i32* @PATH_MAX, align 4
  %27 = load i8*, i8** @dir, align 8
  %28 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %29 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %32 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @snprintf(i8* %21, i32 %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %27, i32 %30, i32 %33, i32 %34)
  %36 = call i32* @fopen(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %36, i32** %14, align 8
  %37 = load i32*, i32** %14, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %25
  %40 = call i32 @perror(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %17, align 4
  br label %167

41:                                               ; preds = %25
  %42 = load i32*, i32** %14, align 8
  %43 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %44 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.perf_event_attr*, %struct.perf_event_attr** %8, align 8
  %47 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i64 @fprintf(i32* %42, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %45, i32 %48, i32 %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %41
  %53 = call i32 @perror(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %54 = load i32*, i32** %14, align 8
  %55 = call i32 @fclose(i32* %54)
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %17, align 4
  br label %167

56:                                               ; preds = %41
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = call i32 @__WRITE_ASS(i64 %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i64 %60)
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = call i32 @__WRITE_ASS(i64 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i64 %65)
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = call i32 @__WRITE_ASS(i64 %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i64 %70)
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* %9, align 8
  %74 = call i32 @__WRITE_ASS(i64 %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i64 %73)
  %75 = load i64, i64* %13, align 8
  %76 = load i64, i64* %13, align 8
  %77 = call i32 @__WRITE_ASS(i64 %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i64 %76)
  %78 = load i32, i32* @type, align 4
  %79 = load i8*, i8** @PRIu32, align 8
  %80 = call i32 @WRITE_ASS(i32 %78, i8* %79)
  %81 = load i32, i32* @size, align 4
  %82 = load i8*, i8** @PRIu32, align 8
  %83 = call i32 @WRITE_ASS(i32 %81, i8* %82)
  %84 = load i32, i32* @config, align 4
  %85 = call i32 @WRITE_ASS(i32 %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %86 = load i32, i32* @sample_period, align 4
  %87 = call i32 @WRITE_ASS(i32 %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %88 = load i32, i32* @sample_type, align 4
  %89 = call i32 @WRITE_ASS(i32 %88, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %90 = load i32, i32* @read_format, align 4
  %91 = call i32 @WRITE_ASS(i32 %90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %92 = load i32, i32* @disabled, align 4
  %93 = call i32 @WRITE_ASS(i32 %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %94 = load i32, i32* @inherit, align 4
  %95 = call i32 @WRITE_ASS(i32 %94, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %96 = load i32, i32* @pinned, align 4
  %97 = call i32 @WRITE_ASS(i32 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %98 = load i32, i32* @exclusive, align 4
  %99 = call i32 @WRITE_ASS(i32 %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %100 = load i32, i32* @exclude_user, align 4
  %101 = call i32 @WRITE_ASS(i32 %100, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %102 = load i32, i32* @exclude_kernel, align 4
  %103 = call i32 @WRITE_ASS(i32 %102, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %104 = load i32, i32* @exclude_hv, align 4
  %105 = call i32 @WRITE_ASS(i32 %104, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %106 = load i32, i32* @exclude_idle, align 4
  %107 = call i32 @WRITE_ASS(i32 %106, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %108 = load i32, i32* @mmap, align 4
  %109 = call i32 @WRITE_ASS(i32 %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %110 = load i32, i32* @comm, align 4
  %111 = call i32 @WRITE_ASS(i32 %110, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %112 = load i32, i32* @freq, align 4
  %113 = call i32 @WRITE_ASS(i32 %112, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %114 = load i32, i32* @inherit_stat, align 4
  %115 = call i32 @WRITE_ASS(i32 %114, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %116 = load i32, i32* @enable_on_exec, align 4
  %117 = call i32 @WRITE_ASS(i32 %116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %118 = load i32, i32* @task, align 4
  %119 = call i32 @WRITE_ASS(i32 %118, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %120 = load i32, i32* @watermark, align 4
  %121 = call i32 @WRITE_ASS(i32 %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %122 = load i32, i32* @precise_ip, align 4
  %123 = call i32 @WRITE_ASS(i32 %122, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %124 = load i32, i32* @mmap_data, align 4
  %125 = call i32 @WRITE_ASS(i32 %124, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %126 = load i32, i32* @sample_id_all, align 4
  %127 = call i32 @WRITE_ASS(i32 %126, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %128 = load i32, i32* @exclude_host, align 4
  %129 = call i32 @WRITE_ASS(i32 %128, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %130 = load i32, i32* @exclude_guest, align 4
  %131 = call i32 @WRITE_ASS(i32 %130, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %132 = load i32, i32* @exclude_callchain_kernel, align 4
  %133 = call i32 @WRITE_ASS(i32 %132, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %134 = load i32, i32* @exclude_callchain_user, align 4
  %135 = call i32 @WRITE_ASS(i32 %134, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %136 = load i32, i32* @mmap2, align 4
  %137 = call i32 @WRITE_ASS(i32 %136, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %138 = load i32, i32* @comm_exec, align 4
  %139 = call i32 @WRITE_ASS(i32 %138, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %140 = load i32, i32* @context_switch, align 4
  %141 = call i32 @WRITE_ASS(i32 %140, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %142 = load i32, i32* @write_backward, align 4
  %143 = call i32 @WRITE_ASS(i32 %142, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %144 = load i32, i32* @namespaces, align 4
  %145 = call i32 @WRITE_ASS(i32 %144, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %146 = load i32, i32* @use_clockid, align 4
  %147 = call i32 @WRITE_ASS(i32 %146, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %148 = load i32, i32* @wakeup_events, align 4
  %149 = load i8*, i8** @PRIu32, align 8
  %150 = call i32 @WRITE_ASS(i32 %148, i8* %149)
  %151 = load i32, i32* @bp_type, align 4
  %152 = load i8*, i8** @PRIu32, align 8
  %153 = call i32 @WRITE_ASS(i32 %151, i8* %152)
  %154 = load i32, i32* @config1, align 4
  %155 = call i32 @WRITE_ASS(i32 %154, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %156 = load i32, i32* @config2, align 4
  %157 = call i32 @WRITE_ASS(i32 %156, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %158 = load i32, i32* @branch_sample_type, align 4
  %159 = call i32 @WRITE_ASS(i32 %158, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %160 = load i32, i32* @sample_regs_user, align 4
  %161 = call i32 @WRITE_ASS(i32 %160, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %162 = load i32, i32* @sample_stack_user, align 4
  %163 = load i8*, i8** @PRIu32, align 8
  %164 = call i32 @WRITE_ASS(i32 %162, i8* %163)
  %165 = load i32*, i32** %14, align 8
  %166 = call i32 @fclose(i32* %165)
  store i32 0, i32* %7, align 4
  store i32 1, i32* %17, align 4
  br label %167

167:                                              ; preds = %56, %52, %39, %24
  %168 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %168)
  %169 = load i32, i32* %7, align 4
  ret i32 %169
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32, i32, i32) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i64 @fprintf(i32*, i8*, i32, i32, i32) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @__WRITE_ASS(i64, i8*, i64) #2

declare dso_local i32 @WRITE_ASS(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
