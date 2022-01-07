; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_perf_sample__fprintf_bts.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_perf_sample__fprintf_bts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.callchain_cursor = type { i32 }
%struct.perf_sample = type { i64 }
%struct.evsel = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.perf_event_attr }
%struct.perf_event_attr = type { i32, i32 }
%struct.thread = type { i32 }
%struct.addr_location = type { i32, i32, i32 }
%struct.machine = type { i32 }

@CALLINDENT = common dso_local global i32 0, align 4
@IP = common dso_local global i32 0, align 4
@output = common dso_local global %struct.TYPE_6__* null, align 8
@symbol_conf = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@callchain_cursor = common dso_local global %struct.callchain_cursor zeroinitializer, align 4
@scripting_max_stack = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@EVSEL__PRINT_SRCLINE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ADDR = common dso_local global i32 0, align 4
@PERF_SAMPLE_ADDR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c" => \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"\0A  \00", align 1
@SRCCODE = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_sample*, %struct.evsel*, %struct.thread*, %struct.addr_location*, %struct.machine*, i32*)* @perf_sample__fprintf_bts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_sample__fprintf_bts(%struct.perf_sample* %0, %struct.evsel* %1, %struct.thread* %2, %struct.addr_location* %3, %struct.machine* %4, i32* %5) #0 {
  %7 = alloca %struct.perf_sample*, align 8
  %8 = alloca %struct.evsel*, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.addr_location*, align 8
  %11 = alloca %struct.machine*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.perf_event_attr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.callchain_cursor*, align 8
  %19 = alloca i32, align 4
  store %struct.perf_sample* %0, %struct.perf_sample** %7, align 8
  store %struct.evsel* %1, %struct.evsel** %8, align 8
  store %struct.thread* %2, %struct.thread** %9, align 8
  store %struct.addr_location* %3, %struct.addr_location** %10, align 8
  store %struct.machine* %4, %struct.machine** %11, align 8
  store i32* %5, i32** %12, align 8
  %20 = load %struct.evsel*, %struct.evsel** %8, align 8
  %21 = getelementptr inbounds %struct.evsel, %struct.evsel* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store %struct.perf_event_attr* %22, %struct.perf_event_attr** %13, align 8
  %23 = load %struct.perf_event_attr*, %struct.perf_event_attr** %13, align 8
  %24 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @output_type(i32 %25)
  store i32 %26, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %27 = load i32, i32* @CALLINDENT, align 4
  %28 = call i64 @PRINT_FIELD(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %6
  %31 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %32 = load %struct.evsel*, %struct.evsel** %8, align 8
  %33 = load %struct.thread*, %struct.thread** %9, align 8
  %34 = load %struct.addr_location*, %struct.addr_location** %10, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = call i64 @perf_sample__fprintf_callindent(%struct.perf_sample* %31, %struct.evsel* %32, %struct.thread* %33, %struct.addr_location* %34, i32* %35)
  %37 = load i32, i32* %16, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %16, align 4
  br label %41

41:                                               ; preds = %30, %6
  %42 = load i32, i32* @IP, align 4
  %43 = call i64 @PRINT_FIELD(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %108

45:                                               ; preds = %41
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @output, align 8
  %47 = load i32, i32* %14, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %17, align 4
  store %struct.callchain_cursor* null, %struct.callchain_cursor** %18, align 8
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @symbol_conf, i32 0, i32 1), align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %45
  %55 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %56 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %54
  %60 = load %struct.addr_location*, %struct.addr_location** %10, align 8
  %61 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.evsel*, %struct.evsel** %8, align 8
  %64 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %65 = load i32, i32* @scripting_max_stack, align 4
  %66 = call i64 @thread__resolve_callchain(i32 %62, %struct.callchain_cursor* @callchain_cursor, %struct.evsel* %63, %struct.perf_sample* %64, i32* null, i32* null, i32 %65)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  store %struct.callchain_cursor* @callchain_cursor, %struct.callchain_cursor** %18, align 8
  br label %69

69:                                               ; preds = %68, %59, %54, %45
  %70 = load %struct.callchain_cursor*, %struct.callchain_cursor** %18, align 8
  %71 = icmp eq %struct.callchain_cursor* %70, null
  br i1 %71, label %72, label %89

72:                                               ; preds = %69
  %73 = load i32*, i32** %12, align 8
  %74 = call i64 @fprintf(i32* %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* %16, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %76, %74
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %16, align 4
  %79 = load i32, i32* %17, align 4
  %80 = load i32, i32* @EVSEL__PRINT_SRCLINE, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %72
  store i32 1, i32* %15, align 4
  %84 = load i32, i32* @EVSEL__PRINT_SRCLINE, align 4
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %17, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %17, align 4
  br label %88

88:                                               ; preds = %83, %72
  br label %96

89:                                               ; preds = %69
  %90 = load i32*, i32** %12, align 8
  %91 = call i64 @fprintf(i32* %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %92 = load i32, i32* %16, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %93, %91
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %16, align 4
  br label %96

96:                                               ; preds = %89, %88
  %97 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %98 = load %struct.addr_location*, %struct.addr_location** %10, align 8
  %99 = load i32, i32* %17, align 4
  %100 = load %struct.callchain_cursor*, %struct.callchain_cursor** %18, align 8
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @symbol_conf, i32 0, i32 0), align 8
  %102 = load i32*, i32** %12, align 8
  %103 = call i64 @sample__fprintf_sym(%struct.perf_sample* %97, %struct.addr_location* %98, i32 0, i32 %99, %struct.callchain_cursor* %100, i32 %101, i32* %102)
  %104 = load i32, i32* %16, align 4
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %105, %103
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %16, align 4
  br label %108

108:                                              ; preds = %96, %41
  %109 = load i32, i32* @ADDR, align 4
  %110 = call i64 @PRINT_FIELD(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %129, label %112

112:                                              ; preds = %108
  %113 = load %struct.evsel*, %struct.evsel** %8, align 8
  %114 = getelementptr inbounds %struct.evsel, %struct.evsel* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @PERF_SAMPLE_ADDR, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %145

121:                                              ; preds = %112
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** @output, align 8
  %123 = load i32, i32* %14, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %145, label %129

129:                                              ; preds = %121, %108
  %130 = load i32*, i32** %12, align 8
  %131 = call i64 @fprintf(i32* %130, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %132 = load i32, i32* %16, align 4
  %133 = sext i32 %132 to i64
  %134 = add nsw i64 %133, %131
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %16, align 4
  %136 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %137 = load %struct.thread*, %struct.thread** %9, align 8
  %138 = load %struct.perf_event_attr*, %struct.perf_event_attr** %13, align 8
  %139 = load i32*, i32** %12, align 8
  %140 = call i64 @perf_sample__fprintf_addr(%struct.perf_sample* %136, %struct.thread* %137, %struct.perf_event_attr* %138, i32* %139)
  %141 = load i32, i32* %16, align 4
  %142 = sext i32 %141 to i64
  %143 = add nsw i64 %142, %140
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %16, align 4
  br label %145

145:                                              ; preds = %129, %121, %112
  %146 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %147 = load %struct.perf_event_attr*, %struct.perf_event_attr** %13, align 8
  %148 = load i32*, i32** %12, align 8
  %149 = call i64 @perf_sample__fprintf_ipc(%struct.perf_sample* %146, %struct.perf_event_attr* %147, i32* %148)
  %150 = load i32, i32* %16, align 4
  %151 = sext i32 %150 to i64
  %152 = add nsw i64 %151, %149
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %16, align 4
  %154 = load i32, i32* %15, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %169

156:                                              ; preds = %145
  %157 = load %struct.addr_location*, %struct.addr_location** %10, align 8
  %158 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.addr_location*, %struct.addr_location** %10, align 8
  %161 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32*, i32** %12, align 8
  %164 = call i64 @map__fprintf_srcline(i32 %159, i32 %162, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %163)
  %165 = load i32, i32* %16, align 4
  %166 = sext i32 %165 to i64
  %167 = add nsw i64 %166, %164
  %168 = trunc i64 %167 to i32
  store i32 %168, i32* %16, align 4
  br label %169

169:                                              ; preds = %156, %145
  %170 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %171 = load %struct.perf_event_attr*, %struct.perf_event_attr** %13, align 8
  %172 = load %struct.thread*, %struct.thread** %9, align 8
  %173 = load %struct.machine*, %struct.machine** %11, align 8
  %174 = load i32*, i32** %12, align 8
  %175 = call i64 @perf_sample__fprintf_insn(%struct.perf_sample* %170, %struct.perf_event_attr* %171, %struct.thread* %172, %struct.machine* %173, i32* %174)
  %176 = load i32, i32* %16, align 4
  %177 = sext i32 %176 to i64
  %178 = add nsw i64 %177, %175
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %16, align 4
  %180 = load i32*, i32** %12, align 8
  %181 = call i64 @fprintf(i32* %180, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %182 = load i32, i32* %16, align 4
  %183 = sext i32 %182 to i64
  %184 = add nsw i64 %183, %181
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %16, align 4
  %186 = load i32, i32* @SRCCODE, align 4
  %187 = call i64 @PRINT_FIELD(i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %212

189:                                              ; preds = %169
  %190 = load %struct.addr_location*, %struct.addr_location** %10, align 8
  %191 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.addr_location*, %struct.addr_location** %10, align 8
  %194 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @stdout, align 4
  %197 = load %struct.thread*, %struct.thread** %9, align 8
  %198 = getelementptr inbounds %struct.thread, %struct.thread* %197, i32 0, i32 0
  %199 = call i32 @map__fprintf_srccode(i32 %192, i32 %195, i32 %196, i32* %198)
  store i32 %199, i32* %19, align 4
  %200 = load i32, i32* %19, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %211

202:                                              ; preds = %189
  %203 = load i32, i32* %19, align 4
  %204 = load i32, i32* %16, align 4
  %205 = add nsw i32 %204, %203
  store i32 %205, i32* %16, align 4
  %206 = call i64 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %207 = load i32, i32* %16, align 4
  %208 = sext i32 %207 to i64
  %209 = add nsw i64 %208, %206
  %210 = trunc i64 %209 to i32
  store i32 %210, i32* %16, align 4
  br label %211

211:                                              ; preds = %202, %189
  br label %212

212:                                              ; preds = %211, %169
  %213 = load i32, i32* %16, align 4
  ret i32 %213
}

declare dso_local i32 @output_type(i32) #1

declare dso_local i64 @PRINT_FIELD(i32) #1

declare dso_local i64 @perf_sample__fprintf_callindent(%struct.perf_sample*, %struct.evsel*, %struct.thread*, %struct.addr_location*, i32*) #1

declare dso_local i64 @thread__resolve_callchain(i32, %struct.callchain_cursor*, %struct.evsel*, %struct.perf_sample*, i32*, i32*, i32) #1

declare dso_local i64 @fprintf(i32*, i8*) #1

declare dso_local i64 @sample__fprintf_sym(%struct.perf_sample*, %struct.addr_location*, i32, i32, %struct.callchain_cursor*, i32, i32*) #1

declare dso_local i64 @perf_sample__fprintf_addr(%struct.perf_sample*, %struct.thread*, %struct.perf_event_attr*, i32*) #1

declare dso_local i64 @perf_sample__fprintf_ipc(%struct.perf_sample*, %struct.perf_event_attr*, i32*) #1

declare dso_local i64 @map__fprintf_srcline(i32, i32, i8*, i32*) #1

declare dso_local i64 @perf_sample__fprintf_insn(%struct.perf_sample*, %struct.perf_event_attr*, %struct.thread*, %struct.machine*, i32*) #1

declare dso_local i32 @map__fprintf_srccode(i32, i32, i32, i32*) #1

declare dso_local i64 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
