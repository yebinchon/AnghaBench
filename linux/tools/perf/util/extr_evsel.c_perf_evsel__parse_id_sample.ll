; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_perf_evsel__parse_id_sample.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_perf_evsel__parse_id_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%union.perf_event = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8** }
%struct.perf_sample = type { i8*, i8*, i8*, i8*, i8*, i8* }
%union.u64_swap = type { i8** }
%struct.TYPE_8__ = type { i32 }

@PERF_SAMPLE_IDENTIFIER = common dso_local global i32 0, align 4
@PERF_SAMPLE_CPU = common dso_local global i32 0, align 4
@PERF_SAMPLE_STREAM_ID = common dso_local global i32 0, align 4
@PERF_SAMPLE_ID = common dso_local global i32 0, align 4
@PERF_SAMPLE_TIME = common dso_local global i32 0, align 4
@PERF_SAMPLE_TID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evsel*, %union.perf_event*, %struct.perf_sample*)* @perf_evsel__parse_id_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_evsel__parse_id_sample(%struct.evsel* %0, %union.perf_event* %1, %struct.perf_sample* %2) #0 {
  %4 = alloca %struct.evsel*, align 8
  %5 = alloca %union.perf_event*, align 8
  %6 = alloca %struct.perf_sample*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %union.u64_swap, align 8
  store %struct.evsel* %0, %struct.evsel** %4, align 8
  store %union.perf_event* %1, %union.perf_event** %5, align 8
  store %struct.perf_sample* %2, %struct.perf_sample** %6, align 8
  %11 = load %struct.evsel*, %struct.evsel** %4, align 8
  %12 = getelementptr inbounds %struct.evsel, %struct.evsel* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %union.perf_event*, %union.perf_event** %5, align 8
  %17 = bitcast %union.perf_event* %16 to %struct.TYPE_7__*
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i8**, i8*** %18, align 8
  store i8** %19, i8*** %8, align 8
  %20 = load %struct.evsel*, %struct.evsel** %4, align 8
  %21 = getelementptr inbounds %struct.evsel, %struct.evsel* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load %union.perf_event*, %union.perf_event** %5, align 8
  %24 = bitcast %union.perf_event* %23 to %struct.TYPE_8__*
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = sub i64 %27, 4
  %29 = udiv i64 %28, 4
  %30 = sub i64 %29, 1
  %31 = load i8**, i8*** %8, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 %30
  store i8** %32, i8*** %8, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @PERF_SAMPLE_IDENTIFIER, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %3
  %38 = load i8**, i8*** %8, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %41 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  %42 = load i8**, i8*** %8, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i32 -1
  store i8** %43, i8*** %8, align 8
  br label %44

44:                                               ; preds = %37, %3
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @PERF_SAMPLE_CPU, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %77

49:                                               ; preds = %44
  %50 = load i8**, i8*** %8, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = bitcast %union.u64_swap* %10 to i8**
  store i8* %51, i8** %52, align 8
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %49
  %56 = bitcast %union.u64_swap* %10 to i8**
  %57 = load i8*, i8** %56, align 8
  %58 = call i8* @bswap_64(i8* %57)
  %59 = bitcast %union.u64_swap* %10 to i8**
  store i8* %58, i8** %59, align 8
  %60 = bitcast %union.u64_swap* %10 to i8***
  %61 = load i8**, i8*** %60, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i8* @bswap_32(i8* %63)
  %65 = bitcast %union.u64_swap* %10 to i8***
  %66 = load i8**, i8*** %65, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 0
  store i8* %64, i8** %67, align 8
  br label %68

68:                                               ; preds = %55, %49
  %69 = bitcast %union.u64_swap* %10 to i8***
  %70 = load i8**, i8*** %69, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 0
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %74 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %73, i32 0, i32 5
  store i8* %72, i8** %74, align 8
  %75 = load i8**, i8*** %8, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i32 -1
  store i8** %76, i8*** %8, align 8
  br label %77

77:                                               ; preds = %68, %44
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @PERF_SAMPLE_STREAM_ID, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %77
  %83 = load i8**, i8*** %8, align 8
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %86 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %85, i32 0, i32 4
  store i8* %84, i8** %86, align 8
  %87 = load i8**, i8*** %8, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i32 -1
  store i8** %88, i8*** %8, align 8
  br label %89

89:                                               ; preds = %82, %77
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @PERF_SAMPLE_ID, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %89
  %95 = load i8**, i8*** %8, align 8
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %98 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %97, i32 0, i32 3
  store i8* %96, i8** %98, align 8
  %99 = load i8**, i8*** %8, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i32 -1
  store i8** %100, i8*** %8, align 8
  br label %101

101:                                              ; preds = %94, %89
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @PERF_SAMPLE_TIME, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %101
  %107 = load i8**, i8*** %8, align 8
  %108 = load i8*, i8** %107, align 8
  %109 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %110 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %109, i32 0, i32 2
  store i8* %108, i8** %110, align 8
  %111 = load i8**, i8*** %8, align 8
  %112 = getelementptr inbounds i8*, i8** %111, i32 -1
  store i8** %112, i8*** %8, align 8
  br label %113

113:                                              ; preds = %106, %101
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* @PERF_SAMPLE_TID, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %160

118:                                              ; preds = %113
  %119 = load i8**, i8*** %8, align 8
  %120 = load i8*, i8** %119, align 8
  %121 = bitcast %union.u64_swap* %10 to i8**
  store i8* %120, i8** %121, align 8
  %122 = load i32, i32* %9, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %145

124:                                              ; preds = %118
  %125 = bitcast %union.u64_swap* %10 to i8**
  %126 = load i8*, i8** %125, align 8
  %127 = call i8* @bswap_64(i8* %126)
  %128 = bitcast %union.u64_swap* %10 to i8**
  store i8* %127, i8** %128, align 8
  %129 = bitcast %union.u64_swap* %10 to i8***
  %130 = load i8**, i8*** %129, align 8
  %131 = getelementptr inbounds i8*, i8** %130, i64 0
  %132 = load i8*, i8** %131, align 8
  %133 = call i8* @bswap_32(i8* %132)
  %134 = bitcast %union.u64_swap* %10 to i8***
  %135 = load i8**, i8*** %134, align 8
  %136 = getelementptr inbounds i8*, i8** %135, i64 0
  store i8* %133, i8** %136, align 8
  %137 = bitcast %union.u64_swap* %10 to i8***
  %138 = load i8**, i8*** %137, align 8
  %139 = getelementptr inbounds i8*, i8** %138, i64 1
  %140 = load i8*, i8** %139, align 8
  %141 = call i8* @bswap_32(i8* %140)
  %142 = bitcast %union.u64_swap* %10 to i8***
  %143 = load i8**, i8*** %142, align 8
  %144 = getelementptr inbounds i8*, i8** %143, i64 1
  store i8* %141, i8** %144, align 8
  br label %145

145:                                              ; preds = %124, %118
  %146 = bitcast %union.u64_swap* %10 to i8***
  %147 = load i8**, i8*** %146, align 8
  %148 = getelementptr inbounds i8*, i8** %147, i64 0
  %149 = load i8*, i8** %148, align 8
  %150 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %151 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %150, i32 0, i32 1
  store i8* %149, i8** %151, align 8
  %152 = bitcast %union.u64_swap* %10 to i8***
  %153 = load i8**, i8*** %152, align 8
  %154 = getelementptr inbounds i8*, i8** %153, i64 1
  %155 = load i8*, i8** %154, align 8
  %156 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %157 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %156, i32 0, i32 0
  store i8* %155, i8** %157, align 8
  %158 = load i8**, i8*** %8, align 8
  %159 = getelementptr inbounds i8*, i8** %158, i32 -1
  store i8** %159, i8*** %8, align 8
  br label %160

160:                                              ; preds = %145, %113
  ret i32 0
}

declare dso_local i8* @bswap_64(i8*) #1

declare dso_local i8* @bswap_32(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
