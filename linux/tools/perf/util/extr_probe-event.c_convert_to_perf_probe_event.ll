; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_convert_to_perf_probe_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_convert_to_perf_probe_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.probe_trace_event = type { i32, %struct.TYPE_4__*, i32, i64, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.perf_probe_event = type { i32, %struct.TYPE_3__*, i32, i32*, i32* }
%struct.TYPE_3__ = type { i32* }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.probe_trace_event*, %struct.perf_probe_event*, i32)* @convert_to_perf_probe_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_to_perf_probe_event(%struct.probe_trace_event* %0, %struct.perf_probe_event* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.probe_trace_event*, align 8
  %6 = alloca %struct.perf_probe_event*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.strbuf, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.probe_trace_event* %0, %struct.probe_trace_event** %5, align 8
  store %struct.perf_probe_event* %1, %struct.perf_probe_event** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = bitcast %struct.strbuf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %12 = load %struct.probe_trace_event*, %struct.probe_trace_event** %5, align 8
  %13 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = call i8* @strdup(i64 %14)
  %16 = bitcast i8* %15 to i32*
  %17 = load %struct.perf_probe_event*, %struct.perf_probe_event** %6, align 8
  %18 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %17, i32 0, i32 4
  store i32* %16, i32** %18, align 8
  %19 = load %struct.probe_trace_event*, %struct.probe_trace_event** %5, align 8
  %20 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = call i8* @strdup(i64 %21)
  %23 = bitcast i8* %22 to i32*
  %24 = load %struct.perf_probe_event*, %struct.perf_probe_event** %6, align 8
  %25 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %24, i32 0, i32 3
  store i32* %23, i32** %25, align 8
  %26 = load %struct.perf_probe_event*, %struct.perf_probe_event** %6, align 8
  %27 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %3
  %31 = load %struct.perf_probe_event*, %struct.perf_probe_event** %6, align 8
  %32 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %30, %3
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %160

38:                                               ; preds = %30
  %39 = load %struct.probe_trace_event*, %struct.probe_trace_event** %5, align 8
  %40 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %39, i32 0, i32 2
  %41 = load %struct.perf_probe_event*, %struct.perf_probe_event** %6, align 8
  %42 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %41, i32 0, i32 2
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @convert_to_perf_probe_point(i32* %40, i32* %42, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %4, align 4
  br label %160

49:                                               ; preds = %38
  %50 = load %struct.probe_trace_event*, %struct.probe_trace_event** %5, align 8
  %51 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.perf_probe_event*, %struct.perf_probe_event** %6, align 8
  %54 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.perf_probe_event*, %struct.perf_probe_event** %6, align 8
  %56 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = mul i64 4, %58
  %60 = trunc i64 %59 to i32
  %61 = call %struct.TYPE_3__* @zalloc(i32 %60)
  %62 = load %struct.perf_probe_event*, %struct.perf_probe_event** %6, align 8
  %63 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %62, i32 0, i32 1
  store %struct.TYPE_3__* %61, %struct.TYPE_3__** %63, align 8
  %64 = load %struct.perf_probe_event*, %struct.perf_probe_event** %6, align 8
  %65 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %64, i32 0, i32 1
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = icmp eq %struct.TYPE_3__* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %49
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %160

71:                                               ; preds = %49
  store i32 0, i32* %9, align 4
  br label %72

72:                                               ; preds = %148, %71
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.probe_trace_event*, %struct.probe_trace_event** %5, align 8
  %75 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load i32, i32* %10, align 4
  %80 = icmp sge i32 %79, 0
  br label %81

81:                                               ; preds = %78, %72
  %82 = phi i1 [ false, %72 ], [ %80, %78 ]
  br i1 %82, label %83, label %151

83:                                               ; preds = %81
  %84 = load %struct.probe_trace_event*, %struct.probe_trace_event** %5, align 8
  %85 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %84, i32 0, i32 1
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %111

93:                                               ; preds = %83
  %94 = load %struct.probe_trace_event*, %struct.probe_trace_event** %5, align 8
  %95 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %94, i32 0, i32 1
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i8* @strdup(i64 %101)
  %103 = bitcast i8* %102 to i32*
  %104 = load %struct.perf_probe_event*, %struct.perf_probe_event** %6, align 8
  %105 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %104, i32 0, i32 1
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  store i32* %103, i32** %110, align 8
  br label %131

111:                                              ; preds = %83
  %112 = call i32 @strbuf_init(%struct.strbuf* %8, i32 32)
  store i32 %112, i32* %10, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  br label %152

115:                                              ; preds = %111
  %116 = load %struct.probe_trace_event*, %struct.probe_trace_event** %5, align 8
  %117 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %116, i32 0, i32 1
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i64 %120
  %122 = call i32 @synthesize_probe_trace_arg(%struct.TYPE_4__* %121, %struct.strbuf* %8)
  store i32 %122, i32* %10, align 4
  %123 = call i32* @strbuf_detach(%struct.strbuf* %8, i32* null)
  %124 = load %struct.perf_probe_event*, %struct.perf_probe_event** %6, align 8
  %125 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %124, i32 0, i32 1
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  store i32* %123, i32** %130, align 8
  br label %131

131:                                              ; preds = %115, %93
  %132 = load %struct.perf_probe_event*, %struct.perf_probe_event** %6, align 8
  %133 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %132, i32 0, i32 1
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %133, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = icmp eq i32* %139, null
  br i1 %140, label %141, label %147

141:                                              ; preds = %131
  %142 = load i32, i32* %10, align 4
  %143 = icmp sge i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load i32, i32* @ENOMEM, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %10, align 4
  br label %147

147:                                              ; preds = %144, %141, %131
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %9, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %9, align 4
  br label %72

151:                                              ; preds = %81
  br label %152

152:                                              ; preds = %151, %114
  %153 = load i32, i32* %10, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load %struct.perf_probe_event*, %struct.perf_probe_event** %6, align 8
  %157 = call i32 @clear_perf_probe_event(%struct.perf_probe_event* %156)
  br label %158

158:                                              ; preds = %155, %152
  %159 = load i32, i32* %10, align 4
  store i32 %159, i32* %4, align 4
  br label %160

160:                                              ; preds = %158, %68, %47, %35
  %161 = load i32, i32* %4, align 4
  ret i32 %161
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @strdup(i64) #2

declare dso_local i32 @convert_to_perf_probe_point(i32*, i32*, i32) #2

declare dso_local %struct.TYPE_3__* @zalloc(i32) #2

declare dso_local i32 @strbuf_init(%struct.strbuf*, i32) #2

declare dso_local i32 @synthesize_probe_trace_arg(%struct.TYPE_4__*, %struct.strbuf*) #2

declare dso_local i32* @strbuf_detach(%struct.strbuf*, i32*) #2

declare dso_local i32 @clear_perf_probe_event(%struct.perf_probe_event*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
