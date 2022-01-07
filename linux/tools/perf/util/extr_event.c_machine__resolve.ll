; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_event.c_machine__resolve.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_event.c_machine__resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }
%struct.machine = type { %struct.perf_env* }
%struct.perf_env = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.addr_location = type { i8, i32, i64, i32, %struct.TYPE_7__*, i32, %struct.TYPE_8__*, i32* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { %struct.dso* }
%struct.dso = type { i8*, i64 }
%struct.perf_sample = type { i64, i32, i32, i32, i32 }
%struct.thread = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c" ... thread: %s:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c" ...... dso: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"[hypervisor]\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"<not found>\00", align 1
@HIST_FILTER__THREAD = common dso_local global i32 0, align 4
@symbol_conf = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@HIST_FILTER__DSO = common dso_local global i32 0, align 4
@HIST_FILTER__SYMBOL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @machine__resolve(%struct.machine* %0, %struct.addr_location* %1, %struct.perf_sample* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.machine*, align 8
  %6 = alloca %struct.addr_location*, align 8
  %7 = alloca %struct.perf_sample*, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.perf_env*, align 8
  %10 = alloca %struct.dso*, align 8
  store %struct.machine* %0, %struct.machine** %5, align 8
  store %struct.addr_location* %1, %struct.addr_location** %6, align 8
  store %struct.perf_sample* %2, %struct.perf_sample** %7, align 8
  %11 = load %struct.machine*, %struct.machine** %5, align 8
  %12 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %13 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %16 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.thread* @machine__findnew_thread(%struct.machine* %11, i32 %14, i32 %17)
  store %struct.thread* %18, %struct.thread** %8, align 8
  %19 = load %struct.thread*, %struct.thread** %8, align 8
  %20 = icmp eq %struct.thread* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %195

22:                                               ; preds = %3
  %23 = load %struct.thread*, %struct.thread** %8, align 8
  %24 = call i32 @thread__comm_str(%struct.thread* %23)
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = load %struct.thread*, %struct.thread** %8, align 8
  %28 = getelementptr inbounds %struct.thread, %struct.thread* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i8*, i8*, ...) @dump_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %26, i32 %29)
  %31 = load %struct.thread*, %struct.thread** %8, align 8
  %32 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %33 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %36 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.addr_location*, %struct.addr_location** %6, align 8
  %39 = call i32 @thread__find_map(%struct.thread* %31, i32 %34, i32 %37, %struct.addr_location* %38)
  %40 = load %struct.addr_location*, %struct.addr_location** %6, align 8
  %41 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %40, i32 0, i32 6
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = icmp ne %struct.TYPE_8__* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %22
  %45 = load %struct.addr_location*, %struct.addr_location** %6, align 8
  %46 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %45, i32 0, i32 6
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load %struct.dso*, %struct.dso** %48, align 8
  %50 = getelementptr inbounds %struct.dso, %struct.dso* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  br label %60

52:                                               ; preds = %22
  %53 = load %struct.addr_location*, %struct.addr_location** %6, align 8
  %54 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %53, i32 0, i32 0
  %55 = load i8, i8* %54, align 8
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 72
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)
  br label %60

60:                                               ; preds = %52, %44
  %61 = phi i8* [ %51, %44 ], [ %59, %52 ]
  %62 = call i32 (i8*, i8*, ...) @dump_printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %61)
  %63 = load %struct.thread*, %struct.thread** %8, align 8
  %64 = call i64 @thread__is_filtered(%struct.thread* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %60
  %67 = load i32, i32* @HIST_FILTER__THREAD, align 4
  %68 = shl i32 1, %67
  %69 = load %struct.addr_location*, %struct.addr_location** %6, align 8
  %70 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %66, %60
  %74 = load %struct.addr_location*, %struct.addr_location** %6, align 8
  %75 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %74, i32 0, i32 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %75, align 8
  %76 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %77 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.addr_location*, %struct.addr_location** %6, align 8
  %80 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %79, i32 0, i32 2
  store i64 %78, i64* %80, align 8
  %81 = load %struct.addr_location*, %struct.addr_location** %6, align 8
  %82 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %81, i32 0, i32 3
  store i32 -1, i32* %82, align 8
  %83 = load %struct.addr_location*, %struct.addr_location** %6, align 8
  %84 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %83, i32 0, i32 7
  store i32* null, i32** %84, align 8
  %85 = load %struct.addr_location*, %struct.addr_location** %6, align 8
  %86 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp sge i64 %87, 0
  br i1 %88, label %89, label %113

89:                                               ; preds = %73
  %90 = load %struct.machine*, %struct.machine** %5, align 8
  %91 = getelementptr inbounds %struct.machine, %struct.machine* %90, i32 0, i32 0
  %92 = load %struct.perf_env*, %struct.perf_env** %91, align 8
  store %struct.perf_env* %92, %struct.perf_env** %9, align 8
  %93 = load %struct.perf_env*, %struct.perf_env** %9, align 8
  %94 = icmp ne %struct.perf_env* %93, null
  br i1 %94, label %95, label %112

95:                                               ; preds = %89
  %96 = load %struct.perf_env*, %struct.perf_env** %9, align 8
  %97 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %96, i32 0, i32 0
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = icmp ne %struct.TYPE_5__* %98, null
  br i1 %99, label %100, label %112

100:                                              ; preds = %95
  %101 = load %struct.perf_env*, %struct.perf_env** %9, align 8
  %102 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %101, i32 0, i32 0
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = load %struct.addr_location*, %struct.addr_location** %6, align 8
  %105 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.addr_location*, %struct.addr_location** %6, align 8
  %111 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 8
  br label %112

112:                                              ; preds = %100, %95, %89
  br label %113

113:                                              ; preds = %112, %73
  %114 = load %struct.addr_location*, %struct.addr_location** %6, align 8
  %115 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %114, i32 0, i32 6
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = icmp ne %struct.TYPE_8__* %116, null
  br i1 %117, label %118, label %170

118:                                              ; preds = %113
  %119 = load %struct.addr_location*, %struct.addr_location** %6, align 8
  %120 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %119, i32 0, i32 6
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load %struct.dso*, %struct.dso** %122, align 8
  store %struct.dso* %123, %struct.dso** %10, align 8
  %124 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @symbol_conf, i32 0, i32 1), align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %160

126:                                              ; preds = %118
  %127 = load %struct.dso*, %struct.dso** %10, align 8
  %128 = icmp ne %struct.dso* %127, null
  br i1 %128, label %129, label %153

129:                                              ; preds = %126
  %130 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @symbol_conf, i32 0, i32 1), align 8
  %131 = load %struct.dso*, %struct.dso** %10, align 8
  %132 = getelementptr inbounds %struct.dso, %struct.dso* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = call i64 @strlist__has_entry(i64 %130, i64 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %160, label %136

136:                                              ; preds = %129
  %137 = load %struct.dso*, %struct.dso** %10, align 8
  %138 = getelementptr inbounds %struct.dso, %struct.dso* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = inttoptr i64 %139 to i8*
  %141 = load %struct.dso*, %struct.dso** %10, align 8
  %142 = getelementptr inbounds %struct.dso, %struct.dso* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = icmp ne i8* %140, %143
  br i1 %144, label %145, label %153

145:                                              ; preds = %136
  %146 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @symbol_conf, i32 0, i32 1), align 8
  %147 = load %struct.dso*, %struct.dso** %10, align 8
  %148 = getelementptr inbounds %struct.dso, %struct.dso* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = ptrtoint i8* %149 to i64
  %151 = call i64 @strlist__has_entry(i64 %146, i64 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %160, label %153

153:                                              ; preds = %145, %136, %126
  %154 = load i32, i32* @HIST_FILTER__DSO, align 4
  %155 = shl i32 1, %154
  %156 = load %struct.addr_location*, %struct.addr_location** %6, align 8
  %157 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = or i32 %158, %155
  store i32 %159, i32* %157, align 4
  br label %160

160:                                              ; preds = %153, %145, %129, %118
  %161 = load %struct.addr_location*, %struct.addr_location** %6, align 8
  %162 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %161, i32 0, i32 6
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %162, align 8
  %164 = load %struct.addr_location*, %struct.addr_location** %6, align 8
  %165 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 8
  %167 = call %struct.TYPE_7__* @map__find_symbol(%struct.TYPE_8__* %163, i32 %166)
  %168 = load %struct.addr_location*, %struct.addr_location** %6, align 8
  %169 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %168, i32 0, i32 4
  store %struct.TYPE_7__* %167, %struct.TYPE_7__** %169, align 8
  br label %170

170:                                              ; preds = %160, %113
  %171 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @symbol_conf, i32 0, i32 0), align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %194

173:                                              ; preds = %170
  %174 = load %struct.addr_location*, %struct.addr_location** %6, align 8
  %175 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %174, i32 0, i32 4
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %175, align 8
  %177 = icmp ne %struct.TYPE_7__* %176, null
  br i1 %177, label %178, label %187

178:                                              ; preds = %173
  %179 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @symbol_conf, i32 0, i32 0), align 8
  %180 = load %struct.addr_location*, %struct.addr_location** %6, align 8
  %181 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %180, i32 0, i32 4
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = call i64 @strlist__has_entry(i64 %179, i64 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %194, label %187

187:                                              ; preds = %178, %173
  %188 = load i32, i32* @HIST_FILTER__SYMBOL, align 4
  %189 = shl i32 1, %188
  %190 = load %struct.addr_location*, %struct.addr_location** %6, align 8
  %191 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = or i32 %192, %189
  store i32 %193, i32* %191, align 4
  br label %194

194:                                              ; preds = %187, %178, %170
  store i32 0, i32* %4, align 4
  br label %195

195:                                              ; preds = %194, %21
  %196 = load i32, i32* %4, align 4
  ret i32 %196
}

declare dso_local %struct.thread* @machine__findnew_thread(%struct.machine*, i32, i32) #1

declare dso_local i32 @dump_printf(i8*, i8*, ...) #1

declare dso_local i32 @thread__comm_str(%struct.thread*) #1

declare dso_local i32 @thread__find_map(%struct.thread*, i32, i32, %struct.addr_location*) #1

declare dso_local i64 @thread__is_filtered(%struct.thread*) #1

declare dso_local i64 @strlist__has_entry(i64, i64) #1

declare dso_local %struct.TYPE_7__* @map__find_symbol(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
