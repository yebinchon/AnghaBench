; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-top.c_deliver_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-top.c_deliver_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ordered_events = type { %struct.perf_top* }
%struct.perf_top = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.perf_session*, %struct.evlist* }
%struct.perf_session = type { %struct.TYPE_8__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { %struct.machine }
%struct.machine = type { i32 }
%struct.evlist = type { i32 }
%struct.ordered_event = type { %union.perf_event* }
%union.perf_event = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.perf_sample = type { i32, i32, i32 }
%struct.evsel = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Can't parse sample, err = %d\0A\00", align 1
@PERF_RECORD_SAMPLE = common dso_local global i64 0, align 8
@PERF_RECORD_LOST = common dso_local global i64 0, align 8
@PERF_RECORD_LOST_SAMPLES = common dso_local global i64 0, align 8
@PERF_RECORD_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ordered_events*, %struct.ordered_event*)* @deliver_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deliver_event(%struct.ordered_events* %0, %struct.ordered_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ordered_events*, align 8
  %5 = alloca %struct.ordered_event*, align 8
  %6 = alloca %struct.perf_top*, align 8
  %7 = alloca %struct.evlist*, align 8
  %8 = alloca %struct.perf_session*, align 8
  %9 = alloca %union.perf_event*, align 8
  %10 = alloca %struct.perf_sample, align 4
  %11 = alloca %struct.evsel*, align 8
  %12 = alloca %struct.machine*, align 8
  %13 = alloca i32, align 4
  store %struct.ordered_events* %0, %struct.ordered_events** %4, align 8
  store %struct.ordered_event* %1, %struct.ordered_event** %5, align 8
  %14 = load %struct.ordered_events*, %struct.ordered_events** %4, align 8
  %15 = getelementptr inbounds %struct.ordered_events, %struct.ordered_events* %14, i32 0, i32 0
  %16 = load %struct.perf_top*, %struct.perf_top** %15, align 8
  store %struct.perf_top* %16, %struct.perf_top** %6, align 8
  %17 = load %struct.perf_top*, %struct.perf_top** %6, align 8
  %18 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %17, i32 0, i32 12
  %19 = load %struct.evlist*, %struct.evlist** %18, align 8
  store %struct.evlist* %19, %struct.evlist** %7, align 8
  %20 = load %struct.perf_top*, %struct.perf_top** %6, align 8
  %21 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %20, i32 0, i32 11
  %22 = load %struct.perf_session*, %struct.perf_session** %21, align 8
  store %struct.perf_session* %22, %struct.perf_session** %8, align 8
  %23 = load %struct.ordered_event*, %struct.ordered_event** %5, align 8
  %24 = getelementptr inbounds %struct.ordered_event, %struct.ordered_event* %23, i32 0, i32 0
  %25 = load %union.perf_event*, %union.perf_event** %24, align 8
  store %union.perf_event* %25, %union.perf_event** %9, align 8
  store i32 -1, i32* %13, align 4
  %26 = load %struct.ordered_event*, %struct.ordered_event** %5, align 8
  %27 = load %struct.perf_top*, %struct.perf_top** %6, align 8
  %28 = call i64 @should_drop(%struct.ordered_event* %26, %struct.perf_top* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %2
  %31 = load %struct.perf_top*, %struct.perf_top** %6, align 8
  %32 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %31, i32 0, i32 10
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 8
  %35 = load %struct.perf_top*, %struct.perf_top** %6, align 8
  %36 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %35, i32 0, i32 9
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  store i32 0, i32* %3, align 4
  br label %204

39:                                               ; preds = %2
  %40 = load %struct.evlist*, %struct.evlist** %7, align 8
  %41 = load %union.perf_event*, %union.perf_event** %9, align 8
  %42 = call i32 @perf_evlist__parse_sample(%struct.evlist* %40, %union.perf_event* %41, %struct.perf_sample* %10)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %202

48:                                               ; preds = %39
  %49 = load %struct.perf_session*, %struct.perf_session** %8, align 8
  %50 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %10, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.evsel* @perf_evlist__id2evsel(%struct.TYPE_8__* %51, i32 %53)
  store %struct.evsel* %54, %struct.evsel** %11, align 8
  %55 = load %struct.evsel*, %struct.evsel** %11, align 8
  %56 = icmp ne %struct.evsel* %55, null
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load %union.perf_event*, %union.perf_event** %9, align 8
  %60 = bitcast %union.perf_event* %59 to %struct.TYPE_6__*
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @PERF_RECORD_SAMPLE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %48
  %66 = load %struct.perf_top*, %struct.perf_top** %6, align 8
  %67 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %66, i32 0, i32 8
  %68 = load %struct.evsel*, %struct.evsel** %11, align 8
  %69 = call i64 @evswitch__discard(i32* %67, %struct.evsel* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %204

72:                                               ; preds = %65
  %73 = load %struct.perf_top*, %struct.perf_top** %6, align 8
  %74 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %72, %48
  %78 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %10, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  switch i32 %79, label %122 [
    i32 128, label %80
    i32 129, label %94
    i32 131, label %108
    i32 130, label %117
  ]

80:                                               ; preds = %77
  %81 = load %struct.perf_top*, %struct.perf_top** %6, align 8
  %82 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 8
  %85 = load %struct.perf_top*, %struct.perf_top** %6, align 8
  %86 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %80
  br label %202

90:                                               ; preds = %80
  %91 = load %struct.perf_session*, %struct.perf_session** %8, align 8
  %92 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  store %struct.machine* %93, %struct.machine** %12, align 8
  br label %134

94:                                               ; preds = %77
  %95 = load %struct.perf_top*, %struct.perf_top** %6, align 8
  %96 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 8
  %99 = load %struct.perf_top*, %struct.perf_top** %6, align 8
  %100 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %94
  br label %202

104:                                              ; preds = %94
  %105 = load %struct.perf_session*, %struct.perf_session** %8, align 8
  %106 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  store %struct.machine* %107, %struct.machine** %12, align 8
  br label %134

108:                                              ; preds = %77
  %109 = load %struct.perf_top*, %struct.perf_top** %6, align 8
  %110 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 8
  %113 = load %struct.perf_session*, %struct.perf_session** %8, align 8
  %114 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %10, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call %struct.machine* @perf_session__find_machine(%struct.perf_session* %113, i32 %115)
  store %struct.machine* %116, %struct.machine** %12, align 8
  br label %134

117:                                              ; preds = %77
  %118 = load %struct.perf_top*, %struct.perf_top** %6, align 8
  %119 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 4
  br label %202

122:                                              ; preds = %77
  %123 = load %union.perf_event*, %union.perf_event** %9, align 8
  %124 = bitcast %union.perf_event* %123 to %struct.TYPE_6__*
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @PERF_RECORD_SAMPLE, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %122
  br label %202

130:                                              ; preds = %122
  %131 = load %struct.perf_session*, %struct.perf_session** %8, align 8
  %132 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  store %struct.machine* %133, %struct.machine** %12, align 8
  br label %134

134:                                              ; preds = %130, %108, %104, %90
  %135 = load %union.perf_event*, %union.perf_event** %9, align 8
  %136 = bitcast %union.perf_event* %135 to %struct.TYPE_6__*
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @PERF_RECORD_SAMPLE, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %148

141:                                              ; preds = %134
  %142 = load %struct.perf_top*, %struct.perf_top** %6, align 8
  %143 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %142, i32 0, i32 0
  %144 = load %union.perf_event*, %union.perf_event** %9, align 8
  %145 = load %struct.evsel*, %struct.evsel** %11, align 8
  %146 = load %struct.machine*, %struct.machine** %12, align 8
  %147 = call i32 @perf_event__process_sample(i32* %143, %union.perf_event* %144, %struct.evsel* %145, %struct.perf_sample* %10, %struct.machine* %146)
  br label %201

148:                                              ; preds = %134
  %149 = load %union.perf_event*, %union.perf_event** %9, align 8
  %150 = bitcast %union.perf_event* %149 to %struct.TYPE_6__*
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @PERF_RECORD_LOST, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %160

155:                                              ; preds = %148
  %156 = load %struct.perf_top*, %struct.perf_top** %6, align 8
  %157 = load %union.perf_event*, %union.perf_event** %9, align 8
  %158 = load %struct.evsel*, %struct.evsel** %11, align 8
  %159 = call i32 @perf_top__process_lost(%struct.perf_top* %156, %union.perf_event* %157, %struct.evsel* %158)
  br label %200

160:                                              ; preds = %148
  %161 = load %union.perf_event*, %union.perf_event** %9, align 8
  %162 = bitcast %union.perf_event* %161 to %struct.TYPE_6__*
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @PERF_RECORD_LOST_SAMPLES, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %172

167:                                              ; preds = %160
  %168 = load %struct.perf_top*, %struct.perf_top** %6, align 8
  %169 = load %union.perf_event*, %union.perf_event** %9, align 8
  %170 = load %struct.evsel*, %struct.evsel** %11, align 8
  %171 = call i32 @perf_top__process_lost_samples(%struct.perf_top* %168, %union.perf_event* %169, %struct.evsel* %170)
  br label %199

172:                                              ; preds = %160
  %173 = load %union.perf_event*, %union.perf_event** %9, align 8
  %174 = bitcast %union.perf_event* %173 to %struct.TYPE_6__*
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @PERF_RECORD_MAX, align 8
  %178 = icmp slt i64 %176, %177
  br i1 %178, label %179, label %190

179:                                              ; preds = %172
  %180 = load %struct.evsel*, %struct.evsel** %11, align 8
  %181 = call i32 @evsel__hists(%struct.evsel* %180)
  %182 = load %union.perf_event*, %union.perf_event** %9, align 8
  %183 = bitcast %union.perf_event* %182 to %struct.TYPE_6__*
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = call i32 @hists__inc_nr_events(i32 %181, i64 %185)
  %187 = load %struct.machine*, %struct.machine** %12, align 8
  %188 = load %union.perf_event*, %union.perf_event** %9, align 8
  %189 = call i32 @machine__process_event(%struct.machine* %187, %union.perf_event* %188, %struct.perf_sample* %10)
  br label %198

190:                                              ; preds = %172
  %191 = load %struct.perf_session*, %struct.perf_session** %8, align 8
  %192 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %191, i32 0, i32 0
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %195, align 4
  br label %198

198:                                              ; preds = %190, %179
  br label %199

199:                                              ; preds = %198, %167
  br label %200

200:                                              ; preds = %199, %155
  br label %201

201:                                              ; preds = %200, %141
  store i32 0, i32* %13, align 4
  br label %202

202:                                              ; preds = %201, %129, %117, %103, %89, %45
  %203 = load i32, i32* %13, align 4
  store i32 %203, i32* %3, align 4
  br label %204

204:                                              ; preds = %202, %71, %30
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

declare dso_local i64 @should_drop(%struct.ordered_event*, %struct.perf_top*) #1

declare dso_local i32 @perf_evlist__parse_sample(%struct.evlist*, %union.perf_event*, %struct.perf_sample*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local %struct.evsel* @perf_evlist__id2evsel(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @evswitch__discard(i32*, %struct.evsel*) #1

declare dso_local %struct.machine* @perf_session__find_machine(%struct.perf_session*, i32) #1

declare dso_local i32 @perf_event__process_sample(i32*, %union.perf_event*, %struct.evsel*, %struct.perf_sample*, %struct.machine*) #1

declare dso_local i32 @perf_top__process_lost(%struct.perf_top*, %union.perf_event*, %struct.evsel*) #1

declare dso_local i32 @perf_top__process_lost_samples(%struct.perf_top*, %union.perf_event*, %struct.evsel*) #1

declare dso_local i32 @hists__inc_nr_events(i32, i64) #1

declare dso_local i32 @evsel__hists(%struct.evsel*) #1

declare dso_local i32 @machine__process_event(%struct.machine*, %union.perf_event*, %struct.perf_sample*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
