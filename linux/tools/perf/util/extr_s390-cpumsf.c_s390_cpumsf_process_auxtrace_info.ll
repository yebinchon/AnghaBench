; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_s390-cpumsf.c_s390_cpumsf_process_auxtrace_info.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_s390-cpumsf.c_s390_cpumsf_process_auxtrace_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.perf_event = type { %struct.perf_record_auxtrace_info }
%struct.perf_record_auxtrace_info = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.perf_session = type { %struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_11__, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_15__ = type { i64 }
%struct.s390_cpumsf = type { i32, i32, %struct.TYPE_16__, %struct.TYPE_14__, i32, i32, i32, i32*, %struct.perf_session*, i64 }
%struct.TYPE_16__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@s390_cpumsf__config = common dso_local global i32 0, align 4
@PERF_TYPE_RAW = common dso_local global i32 0, align 4
@s390_cpumsf_process_event = common dso_local global i32 0, align 4
@s390_cpumsf_process_auxtrace_event = common dso_local global i32 0, align 4
@s390_cpumsf_flush = common dso_local global i32 0, align 4
@s390_cpumsf_free_events = common dso_local global i32 0, align 4
@s390_cpumsf_free = common dso_local global i32 0, align 4
@dump_trace = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s390_cpumsf_process_auxtrace_info(%union.perf_event* %0, %struct.perf_session* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.perf_event*, align 8
  %5 = alloca %struct.perf_session*, align 8
  %6 = alloca %struct.perf_record_auxtrace_info*, align 8
  %7 = alloca %struct.s390_cpumsf*, align 8
  %8 = alloca i32, align 4
  store %union.perf_event* %0, %union.perf_event** %4, align 8
  store %struct.perf_session* %1, %struct.perf_session** %5, align 8
  %9 = load %union.perf_event*, %union.perf_event** %4, align 8
  %10 = bitcast %union.perf_event* %9 to %struct.perf_record_auxtrace_info*
  store %struct.perf_record_auxtrace_info* %10, %struct.perf_record_auxtrace_info** %6, align 8
  %11 = load %struct.perf_record_auxtrace_info*, %struct.perf_record_auxtrace_info** %6, align 8
  %12 = getelementptr inbounds %struct.perf_record_auxtrace_info, %struct.perf_record_auxtrace_info* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ult i64 %15, 8
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %144

20:                                               ; preds = %2
  %21 = call %struct.s390_cpumsf* @zalloc(i32 72)
  store %struct.s390_cpumsf* %21, %struct.s390_cpumsf** %7, align 8
  %22 = load %struct.s390_cpumsf*, %struct.s390_cpumsf** %7, align 8
  %23 = icmp eq %struct.s390_cpumsf* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %144

27:                                               ; preds = %20
  %28 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %29 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %28, i32 0, i32 3
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  %31 = call i32 @check_auxtrace_itrace(%struct.TYPE_15__* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %8, align 4
  br label %137

36:                                               ; preds = %27
  %37 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %38 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %37, i32 0, i32 3
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.s390_cpumsf*, %struct.s390_cpumsf** %7, align 8
  %43 = getelementptr inbounds %struct.s390_cpumsf, %struct.s390_cpumsf* %42, i32 0, i32 9
  store i64 %41, i64* %43, align 8
  %44 = load %struct.s390_cpumsf*, %struct.s390_cpumsf** %7, align 8
  %45 = getelementptr inbounds %struct.s390_cpumsf, %struct.s390_cpumsf* %44, i32 0, i32 9
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %36
  %49 = load i32, i32* @s390_cpumsf__config, align 4
  %50 = load %struct.s390_cpumsf*, %struct.s390_cpumsf** %7, align 8
  %51 = call i32 @perf_config(i32 %49, %struct.s390_cpumsf* %50)
  br label %52

52:                                               ; preds = %48, %36
  %53 = load %struct.s390_cpumsf*, %struct.s390_cpumsf** %7, align 8
  %54 = getelementptr inbounds %struct.s390_cpumsf, %struct.s390_cpumsf* %53, i32 0, i32 2
  %55 = call i32 @auxtrace_queues__init(%struct.TYPE_16__* %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %137

59:                                               ; preds = %52
  %60 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %61 = load %struct.s390_cpumsf*, %struct.s390_cpumsf** %7, align 8
  %62 = getelementptr inbounds %struct.s390_cpumsf, %struct.s390_cpumsf* %61, i32 0, i32 8
  store %struct.perf_session* %60, %struct.perf_session** %62, align 8
  %63 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %64 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load %struct.s390_cpumsf*, %struct.s390_cpumsf** %7, align 8
  %67 = getelementptr inbounds %struct.s390_cpumsf, %struct.s390_cpumsf* %66, i32 0, i32 7
  store i32* %65, i32** %67, align 8
  %68 = load %struct.perf_record_auxtrace_info*, %struct.perf_record_auxtrace_info** %6, align 8
  %69 = getelementptr inbounds %struct.perf_record_auxtrace_info, %struct.perf_record_auxtrace_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.s390_cpumsf*, %struct.s390_cpumsf** %7, align 8
  %72 = getelementptr inbounds %struct.s390_cpumsf, %struct.s390_cpumsf* %71, i32 0, i32 6
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @PERF_TYPE_RAW, align 4
  %74 = load %struct.s390_cpumsf*, %struct.s390_cpumsf** %7, align 8
  %75 = getelementptr inbounds %struct.s390_cpumsf, %struct.s390_cpumsf* %74, i32 0, i32 5
  store i32 %73, i32* %75, align 8
  %76 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %77 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %76, i32 0, i32 1
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @s390_cpumsf_get_type(i32 %82)
  %84 = load %struct.s390_cpumsf*, %struct.s390_cpumsf** %7, align 8
  %85 = getelementptr inbounds %struct.s390_cpumsf, %struct.s390_cpumsf* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @s390_cpumsf_process_event, align 4
  %87 = load %struct.s390_cpumsf*, %struct.s390_cpumsf** %7, align 8
  %88 = getelementptr inbounds %struct.s390_cpumsf, %struct.s390_cpumsf* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 4
  store i32 %86, i32* %89, align 8
  %90 = load i32, i32* @s390_cpumsf_process_auxtrace_event, align 4
  %91 = load %struct.s390_cpumsf*, %struct.s390_cpumsf** %7, align 8
  %92 = getelementptr inbounds %struct.s390_cpumsf, %struct.s390_cpumsf* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 3
  store i32 %90, i32* %93, align 4
  %94 = load i32, i32* @s390_cpumsf_flush, align 4
  %95 = load %struct.s390_cpumsf*, %struct.s390_cpumsf** %7, align 8
  %96 = getelementptr inbounds %struct.s390_cpumsf, %struct.s390_cpumsf* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 2
  store i32 %94, i32* %97, align 8
  %98 = load i32, i32* @s390_cpumsf_free_events, align 4
  %99 = load %struct.s390_cpumsf*, %struct.s390_cpumsf** %7, align 8
  %100 = getelementptr inbounds %struct.s390_cpumsf, %struct.s390_cpumsf* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 1
  store i32 %98, i32* %101, align 4
  %102 = load i32, i32* @s390_cpumsf_free, align 4
  %103 = load %struct.s390_cpumsf*, %struct.s390_cpumsf** %7, align 8
  %104 = getelementptr inbounds %struct.s390_cpumsf, %struct.s390_cpumsf* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  store i32 %102, i32* %105, align 8
  %106 = load %struct.s390_cpumsf*, %struct.s390_cpumsf** %7, align 8
  %107 = getelementptr inbounds %struct.s390_cpumsf, %struct.s390_cpumsf* %106, i32 0, i32 3
  %108 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %109 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %108, i32 0, i32 0
  store %struct.TYPE_14__* %107, %struct.TYPE_14__** %109, align 8
  %110 = load i64, i64* @dump_trace, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %59
  store i32 0, i32* %3, align 4
  br label %144

113:                                              ; preds = %59
  %114 = load %struct.s390_cpumsf*, %struct.s390_cpumsf** %7, align 8
  %115 = getelementptr inbounds %struct.s390_cpumsf, %struct.s390_cpumsf* %114, i32 0, i32 2
  %116 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %117 = call i32 @auxtrace_queues__process_index(%struct.TYPE_16__* %115, %struct.perf_session* %116)
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %113
  br label %131

121:                                              ; preds = %113
  %122 = load %struct.s390_cpumsf*, %struct.s390_cpumsf** %7, align 8
  %123 = getelementptr inbounds %struct.s390_cpumsf, %struct.s390_cpumsf* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %121
  %128 = load %struct.s390_cpumsf*, %struct.s390_cpumsf** %7, align 8
  %129 = getelementptr inbounds %struct.s390_cpumsf, %struct.s390_cpumsf* %128, i32 0, i32 0
  store i32 1, i32* %129, align 8
  br label %130

130:                                              ; preds = %127, %121
  store i32 0, i32* %3, align 4
  br label %144

131:                                              ; preds = %120
  %132 = load %struct.s390_cpumsf*, %struct.s390_cpumsf** %7, align 8
  %133 = getelementptr inbounds %struct.s390_cpumsf, %struct.s390_cpumsf* %132, i32 0, i32 2
  %134 = call i32 @auxtrace_queues__free(%struct.TYPE_16__* %133)
  %135 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %136 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %135, i32 0, i32 0
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %136, align 8
  br label %137

137:                                              ; preds = %131, %58, %33
  %138 = load %struct.s390_cpumsf*, %struct.s390_cpumsf** %7, align 8
  %139 = getelementptr inbounds %struct.s390_cpumsf, %struct.s390_cpumsf* %138, i32 0, i32 1
  %140 = call i32 @zfree(i32* %139)
  %141 = load %struct.s390_cpumsf*, %struct.s390_cpumsf** %7, align 8
  %142 = call i32 @free(%struct.s390_cpumsf* %141)
  %143 = load i32, i32* %8, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %137, %130, %112, %24, %17
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local %struct.s390_cpumsf* @zalloc(i32) #1

declare dso_local i32 @check_auxtrace_itrace(%struct.TYPE_15__*) #1

declare dso_local i32 @perf_config(i32, %struct.s390_cpumsf*) #1

declare dso_local i32 @auxtrace_queues__init(%struct.TYPE_16__*) #1

declare dso_local i32 @s390_cpumsf_get_type(i32) #1

declare dso_local i32 @auxtrace_queues__process_index(%struct.TYPE_16__*, %struct.perf_session*) #1

declare dso_local i32 @auxtrace_queues__free(%struct.TYPE_16__*) #1

declare dso_local i32 @zfree(i32*) #1

declare dso_local i32 @free(%struct.s390_cpumsf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
