; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-perl.c_perl_process_callchain.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-perl.c_perl_process_callchain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }
%struct.perf_sample = type { i32 }
%struct.evsel = type { i32 }
%struct.addr_location = type { i32 }
%struct.callchain_cursor_node = type { %struct.map*, %struct.TYPE_4__*, i32 }
%struct.map = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@symbol_conf = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@callchain_cursor = common dso_local global i32 0, align 4
@scripting_max_stack = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to resolve callchain. Skipping\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ip\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"binding\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"sym\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"[unknown]\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"dso\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.perf_sample*, %struct.evsel*, %struct.addr_location*)* @perl_process_callchain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @perl_process_callchain(%struct.perf_sample* %0, %struct.evsel* %1, %struct.addr_location* %2) #0 {
  %4 = alloca %struct.perf_sample*, align 8
  %5 = alloca %struct.evsel*, align 8
  %6 = alloca %struct.addr_location*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.callchain_cursor_node*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.map*, align 8
  %12 = alloca i8*, align 8
  store %struct.perf_sample* %0, %struct.perf_sample** %4, align 8
  store %struct.evsel* %1, %struct.evsel** %5, align 8
  store %struct.addr_location* %2, %struct.addr_location** %6, align 8
  %13 = call i32* (...) @newAV()
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %185

17:                                               ; preds = %3
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @symbol_conf, i32 0, i32 1), align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load %struct.perf_sample*, %struct.perf_sample** %4, align 8
  %22 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20, %17
  br label %185

26:                                               ; preds = %20
  %27 = load %struct.addr_location*, %struct.addr_location** %6, align 8
  %28 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.evsel*, %struct.evsel** %5, align 8
  %31 = load %struct.perf_sample*, %struct.perf_sample** %4, align 8
  %32 = load i32, i32* @scripting_max_stack, align 4
  %33 = call i64 @thread__resolve_callchain(i32 %29, i32* @callchain_cursor, %struct.evsel* %30, %struct.perf_sample* %31, i32* null, i32* null, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %185

37:                                               ; preds = %26
  %38 = call i32 @callchain_cursor_commit(i32* @callchain_cursor)
  br label %39

39:                                               ; preds = %37, %178
  %40 = call %struct.callchain_cursor_node* @callchain_cursor_current(i32* @callchain_cursor)
  store %struct.callchain_cursor_node* %40, %struct.callchain_cursor_node** %9, align 8
  %41 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %9, align 8
  %42 = icmp ne %struct.callchain_cursor_node* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  br label %184

44:                                               ; preds = %39
  %45 = call i32* (...) @newHV()
  store i32* %45, i32** %8, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  br label %185

49:                                               ; preds = %44
  %50 = load i32*, i32** %8, align 8
  %51 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %9, align 8
  %52 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32* @newSVuv(i32 %53)
  %55 = call i32 @hv_stores(i32* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %49
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 @hv_undef(i32* %58)
  br label %185

60:                                               ; preds = %49
  %61 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %9, align 8
  %62 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = icmp ne %struct.TYPE_4__* %63, null
  br i1 %64, label %65, label %129

65:                                               ; preds = %60
  %66 = call i32* (...) @newHV()
  store i32* %66, i32** %10, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %65
  %70 = load i32*, i32** %8, align 8
  %71 = call i32 @hv_undef(i32* %70)
  br label %185

72:                                               ; preds = %65
  %73 = load i32*, i32** %10, align 8
  %74 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %9, align 8
  %75 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %74, i32 0, i32 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = call i32* @newSVuv(i32 %78)
  %80 = call i32 @hv_stores(i32* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %123

82:                                               ; preds = %72
  %83 = load i32*, i32** %10, align 8
  %84 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %9, align 8
  %85 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %84, i32 0, i32 1
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i32* @newSVuv(i32 %88)
  %90 = call i32 @hv_stores(i32* %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %123

92:                                               ; preds = %82
  %93 = load i32*, i32** %10, align 8
  %94 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %9, align 8
  %95 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %94, i32 0, i32 1
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32* @newSVuv(i32 %98)
  %100 = call i32 @hv_stores(i32* %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %123

102:                                              ; preds = %92
  %103 = load i32*, i32** %10, align 8
  %104 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %9, align 8
  %105 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %104, i32 0, i32 1
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %9, align 8
  %110 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %109, i32 0, i32 1
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32* @newSVpvn(i32 %108, i32 %113)
  %115 = call i32 @hv_stores(i32* %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %102
  %118 = load i32*, i32** %8, align 8
  %119 = load i32*, i32** %10, align 8
  %120 = call i32* @newRV_noinc(i32* %119)
  %121 = call i32 @hv_stores(i32* %118, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %117, %102, %92, %82, %72
  %124 = load i32*, i32** %10, align 8
  %125 = call i32 @hv_undef(i32* %124)
  %126 = load i32*, i32** %8, align 8
  %127 = call i32 @hv_undef(i32* %126)
  br label %185

128:                                              ; preds = %117
  br label %129

129:                                              ; preds = %128, %60
  %130 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %9, align 8
  %131 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %130, i32 0, i32 0
  %132 = load %struct.map*, %struct.map** %131, align 8
  %133 = icmp ne %struct.map* %132, null
  br i1 %133, label %134, label %178

134:                                              ; preds = %129
  %135 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %9, align 8
  %136 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %135, i32 0, i32 0
  %137 = load %struct.map*, %struct.map** %136, align 8
  store %struct.map* %137, %struct.map** %11, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8** %12, align 8
  %138 = load %struct.map*, %struct.map** %11, align 8
  %139 = icmp ne %struct.map* %138, null
  br i1 %139, label %140, label %168

140:                                              ; preds = %134
  %141 = load %struct.map*, %struct.map** %11, align 8
  %142 = getelementptr inbounds %struct.map, %struct.map* %141, i32 0, i32 0
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %142, align 8
  %144 = icmp ne %struct.TYPE_5__* %143, null
  br i1 %144, label %145, label %168

145:                                              ; preds = %140
  %146 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @symbol_conf, i32 0, i32 0), align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %161

148:                                              ; preds = %145
  %149 = load %struct.map*, %struct.map** %11, align 8
  %150 = getelementptr inbounds %struct.map, %struct.map* %149, i32 0, i32 0
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = icmp ne i8* %153, null
  br i1 %154, label %155, label %161

155:                                              ; preds = %148
  %156 = load %struct.map*, %struct.map** %11, align 8
  %157 = getelementptr inbounds %struct.map, %struct.map* %156, i32 0, i32 0
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  store i8* %160, i8** %12, align 8
  br label %167

161:                                              ; preds = %148, %145
  %162 = load %struct.map*, %struct.map** %11, align 8
  %163 = getelementptr inbounds %struct.map, %struct.map* %162, i32 0, i32 0
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 1
  %166 = load i8*, i8** %165, align 8
  store i8* %166, i8** %12, align 8
  br label %167

167:                                              ; preds = %161, %155
  br label %168

168:                                              ; preds = %167, %140, %134
  %169 = load i32*, i32** %8, align 8
  %170 = load i8*, i8** %12, align 8
  %171 = call i32* @newSVpv(i8* %170, i32 0)
  %172 = call i32 @hv_stores(i32* %169, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32* %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %177, label %174

174:                                              ; preds = %168
  %175 = load i32*, i32** %8, align 8
  %176 = call i32 @hv_undef(i32* %175)
  br label %185

177:                                              ; preds = %168
  br label %178

178:                                              ; preds = %177, %129
  %179 = call i32 @callchain_cursor_advance(i32* @callchain_cursor)
  %180 = load i32*, i32** %7, align 8
  %181 = load i32*, i32** %8, align 8
  %182 = call i32* @newRV_noinc(i32* %181)
  %183 = call i32 @av_push(i32* %180, i32* %182)
  br label %39

184:                                              ; preds = %43
  br label %185

185:                                              ; preds = %184, %174, %123, %69, %57, %48, %35, %25, %16
  %186 = load i32*, i32** %7, align 8
  %187 = call i32* @newRV_noinc(i32* %186)
  ret i32* %187
}

declare dso_local i32* @newAV(...) #1

declare dso_local i64 @thread__resolve_callchain(i32, i32*, %struct.evsel*, %struct.perf_sample*, i32*, i32*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @callchain_cursor_commit(i32*) #1

declare dso_local %struct.callchain_cursor_node* @callchain_cursor_current(i32*) #1

declare dso_local i32* @newHV(...) #1

declare dso_local i32 @hv_stores(i32*, i8*, i32*) #1

declare dso_local i32* @newSVuv(i32) #1

declare dso_local i32 @hv_undef(i32*) #1

declare dso_local i32* @newSVpvn(i32, i32) #1

declare dso_local i32* @newRV_noinc(i32*) #1

declare dso_local i32* @newSVpv(i8*, i32) #1

declare dso_local i32 @callchain_cursor_advance(i32*) #1

declare dso_local i32 @av_push(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
