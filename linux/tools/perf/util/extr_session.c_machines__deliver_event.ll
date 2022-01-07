; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_session.c_machines__deliver_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_session.c_machines__deliver_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machines = type { i32 }
%struct.evlist = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%union.perf_event = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.perf_sample = type { i32 }
%struct.perf_tool = type { i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.0*, %struct.machine*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.1*, %struct.machine.2*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.3*, %struct.machine.4*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.5*, %struct.machine.6*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.7*, %struct.machine.8*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.9*, %struct.machine.10*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.11*, %struct.machine.12*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.13*, %struct.machine.14*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.15*, %struct.evsel*, %struct.machine.16*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.17*, %struct.machine.18*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.19*, %struct.machine.20*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.21*, %struct.machine.22*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.23*, %struct.machine.24*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.25*, %struct.machine.26*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.27*, %struct.machine.28*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.29*, %struct.machine.30*)* }
%struct.perf_sample.0 = type opaque
%struct.machine = type opaque
%struct.perf_sample.1 = type opaque
%struct.machine.2 = type opaque
%struct.perf_sample.3 = type opaque
%struct.machine.4 = type opaque
%struct.perf_sample.5 = type opaque
%struct.machine.6 = type opaque
%struct.perf_sample.7 = type opaque
%struct.machine.8 = type opaque
%struct.perf_sample.9 = type opaque
%struct.machine.10 = type opaque
%struct.perf_sample.11 = type opaque
%struct.machine.12 = type opaque
%struct.perf_sample.13 = type opaque
%struct.machine.14 = type opaque
%struct.perf_sample.15 = type opaque
%struct.evsel = type opaque
%struct.machine.16 = type opaque
%struct.perf_sample.17 = type opaque
%struct.machine.18 = type opaque
%struct.perf_sample.19 = type opaque
%struct.machine.20 = type opaque
%struct.perf_sample.21 = type opaque
%struct.machine.22 = type opaque
%struct.perf_sample.23 = type opaque
%struct.machine.24 = type opaque
%struct.perf_sample.25 = type opaque
%struct.machine.26 = type opaque
%struct.perf_sample.27 = type opaque
%struct.machine.28 = type opaque
%struct.perf_sample.29 = type opaque
%struct.machine.30 = type opaque
%struct.evsel.31 = type { i32 }
%struct.machine.32 = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@PERF_RECORD_MISC_PROC_MAP_PARSE_TIMEOUT = common dso_local global i32 0, align 4
@PERF_AUX_FLAG_TRUNCATED = common dso_local global i32 0, align 4
@PERF_AUX_FLAG_PARTIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.machines*, %struct.evlist*, %union.perf_event*, %struct.perf_sample*, %struct.perf_tool*, i32)* @machines__deliver_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @machines__deliver_event(%struct.machines* %0, %struct.evlist* %1, %union.perf_event* %2, %struct.perf_sample* %3, %struct.perf_tool* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.machines*, align 8
  %9 = alloca %struct.evlist*, align 8
  %10 = alloca %union.perf_event*, align 8
  %11 = alloca %struct.perf_sample*, align 8
  %12 = alloca %struct.perf_tool*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.evsel.31*, align 8
  %15 = alloca %struct.machine.32*, align 8
  store %struct.machines* %0, %struct.machines** %8, align 8
  store %struct.evlist* %1, %struct.evlist** %9, align 8
  store %union.perf_event* %2, %union.perf_event** %10, align 8
  store %struct.perf_sample* %3, %struct.perf_sample** %11, align 8
  store %struct.perf_tool* %4, %struct.perf_tool** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load %struct.evlist*, %struct.evlist** %9, align 8
  %17 = load %union.perf_event*, %union.perf_event** %10, align 8
  %18 = load i32, i32* %13, align 4
  %19 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %20 = call i32 @dump_event(%struct.evlist* %16, %union.perf_event* %17, i32 %18, %struct.perf_sample* %19)
  %21 = load %struct.evlist*, %struct.evlist** %9, align 8
  %22 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %23 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.evsel.31* @perf_evlist__id2evsel(%struct.evlist* %21, i32 %24)
  store %struct.evsel.31* %25, %struct.evsel.31** %14, align 8
  %26 = load %struct.machines*, %struct.machines** %8, align 8
  %27 = load %union.perf_event*, %union.perf_event** %10, align 8
  %28 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %29 = call %struct.machine.32* @machines__find_for_cpumode(%struct.machines* %26, %union.perf_event* %27, %struct.perf_sample* %28)
  store %struct.machine.32* %29, %struct.machine.32** %15, align 8
  %30 = load %union.perf_event*, %union.perf_event** %10, align 8
  %31 = bitcast %union.perf_event* %30 to %struct.TYPE_6__*
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %323 [
    i32 132, label %34
    i32 136, label %64
    i32 135, label %75
    i32 143, label %100
    i32 134, label %111
    i32 141, label %122
    i32 142, label %133
    i32 138, label %144
    i32 137, label %170
    i32 133, label %196
    i32 129, label %212
    i32 128, label %223
    i32 145, label %234
    i32 140, label %279
    i32 131, label %290
    i32 130, label %290
    i32 139, label %301
    i32 144, label %312
  ]

34:                                               ; preds = %6
  %35 = load %struct.evsel.31*, %struct.evsel.31** %14, align 8
  %36 = icmp eq %struct.evsel.31* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load %struct.evlist*, %struct.evlist** %9, align 8
  %39 = getelementptr inbounds %struct.evlist, %struct.evlist* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  store i32 0, i32* %7, align 4
  br label %329

43:                                               ; preds = %34
  %44 = load %struct.evsel.31*, %struct.evsel.31** %14, align 8
  %45 = load %union.perf_event*, %union.perf_event** %10, align 8
  %46 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %47 = call i32 @dump_sample(%struct.evsel.31* %44, %union.perf_event* %45, %struct.perf_sample* %46)
  %48 = load %struct.machine.32*, %struct.machine.32** %15, align 8
  %49 = icmp eq %struct.machine.32* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load %struct.evlist*, %struct.evlist** %9, align 8
  %52 = getelementptr inbounds %struct.evlist, %struct.evlist* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  store i32 0, i32* %7, align 4
  br label %329

56:                                               ; preds = %43
  %57 = load %struct.evlist*, %struct.evlist** %9, align 8
  %58 = load %struct.perf_tool*, %struct.perf_tool** %12, align 8
  %59 = load %union.perf_event*, %union.perf_event** %10, align 8
  %60 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %61 = load %struct.evsel.31*, %struct.evsel.31** %14, align 8
  %62 = load %struct.machine.32*, %struct.machine.32** %15, align 8
  %63 = call i32 @perf_evlist__deliver_sample(%struct.evlist* %57, %struct.perf_tool* %58, %union.perf_event* %59, %struct.perf_sample* %60, %struct.evsel.31* %61, %struct.machine.32* %62)
  store i32 %63, i32* %7, align 4
  br label %329

64:                                               ; preds = %6
  %65 = load %struct.perf_tool*, %struct.perf_tool** %12, align 8
  %66 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %65, i32 0, i32 0
  %67 = load i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.0*, %struct.machine*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.0*, %struct.machine*)** %66, align 8
  %68 = load %struct.perf_tool*, %struct.perf_tool** %12, align 8
  %69 = load %union.perf_event*, %union.perf_event** %10, align 8
  %70 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %71 = bitcast %struct.perf_sample* %70 to %struct.perf_sample.0*
  %72 = load %struct.machine.32*, %struct.machine.32** %15, align 8
  %73 = bitcast %struct.machine.32* %72 to %struct.machine*
  %74 = call i32 %67(%struct.perf_tool* %68, %union.perf_event* %69, %struct.perf_sample.0* %71, %struct.machine* %73)
  store i32 %74, i32* %7, align 4
  br label %329

75:                                               ; preds = %6
  %76 = load %union.perf_event*, %union.perf_event** %10, align 8
  %77 = bitcast %union.perf_event* %76 to %struct.TYPE_6__*
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @PERF_RECORD_MISC_PROC_MAP_PARSE_TIMEOUT, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %75
  %84 = load %struct.evlist*, %struct.evlist** %9, align 8
  %85 = getelementptr inbounds %struct.evlist, %struct.evlist* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %83, %75
  %90 = load %struct.perf_tool*, %struct.perf_tool** %12, align 8
  %91 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %90, i32 0, i32 1
  %92 = load i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.1*, %struct.machine.2*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.1*, %struct.machine.2*)** %91, align 8
  %93 = load %struct.perf_tool*, %struct.perf_tool** %12, align 8
  %94 = load %union.perf_event*, %union.perf_event** %10, align 8
  %95 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %96 = bitcast %struct.perf_sample* %95 to %struct.perf_sample.1*
  %97 = load %struct.machine.32*, %struct.machine.32** %15, align 8
  %98 = bitcast %struct.machine.32* %97 to %struct.machine.2*
  %99 = call i32 %92(%struct.perf_tool* %93, %union.perf_event* %94, %struct.perf_sample.1* %96, %struct.machine.2* %98)
  store i32 %99, i32* %7, align 4
  br label %329

100:                                              ; preds = %6
  %101 = load %struct.perf_tool*, %struct.perf_tool** %12, align 8
  %102 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %101, i32 0, i32 2
  %103 = load i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.3*, %struct.machine.4*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.3*, %struct.machine.4*)** %102, align 8
  %104 = load %struct.perf_tool*, %struct.perf_tool** %12, align 8
  %105 = load %union.perf_event*, %union.perf_event** %10, align 8
  %106 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %107 = bitcast %struct.perf_sample* %106 to %struct.perf_sample.3*
  %108 = load %struct.machine.32*, %struct.machine.32** %15, align 8
  %109 = bitcast %struct.machine.32* %108 to %struct.machine.4*
  %110 = call i32 %103(%struct.perf_tool* %104, %union.perf_event* %105, %struct.perf_sample.3* %107, %struct.machine.4* %109)
  store i32 %110, i32* %7, align 4
  br label %329

111:                                              ; preds = %6
  %112 = load %struct.perf_tool*, %struct.perf_tool** %12, align 8
  %113 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %112, i32 0, i32 3
  %114 = load i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.5*, %struct.machine.6*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.5*, %struct.machine.6*)** %113, align 8
  %115 = load %struct.perf_tool*, %struct.perf_tool** %12, align 8
  %116 = load %union.perf_event*, %union.perf_event** %10, align 8
  %117 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %118 = bitcast %struct.perf_sample* %117 to %struct.perf_sample.5*
  %119 = load %struct.machine.32*, %struct.machine.32** %15, align 8
  %120 = bitcast %struct.machine.32* %119 to %struct.machine.6*
  %121 = call i32 %114(%struct.perf_tool* %115, %union.perf_event* %116, %struct.perf_sample.5* %118, %struct.machine.6* %120)
  store i32 %121, i32* %7, align 4
  br label %329

122:                                              ; preds = %6
  %123 = load %struct.perf_tool*, %struct.perf_tool** %12, align 8
  %124 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %123, i32 0, i32 4
  %125 = load i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.7*, %struct.machine.8*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.7*, %struct.machine.8*)** %124, align 8
  %126 = load %struct.perf_tool*, %struct.perf_tool** %12, align 8
  %127 = load %union.perf_event*, %union.perf_event** %10, align 8
  %128 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %129 = bitcast %struct.perf_sample* %128 to %struct.perf_sample.7*
  %130 = load %struct.machine.32*, %struct.machine.32** %15, align 8
  %131 = bitcast %struct.machine.32* %130 to %struct.machine.8*
  %132 = call i32 %125(%struct.perf_tool* %126, %union.perf_event* %127, %struct.perf_sample.7* %129, %struct.machine.8* %131)
  store i32 %132, i32* %7, align 4
  br label %329

133:                                              ; preds = %6
  %134 = load %struct.perf_tool*, %struct.perf_tool** %12, align 8
  %135 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %134, i32 0, i32 5
  %136 = load i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.9*, %struct.machine.10*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.9*, %struct.machine.10*)** %135, align 8
  %137 = load %struct.perf_tool*, %struct.perf_tool** %12, align 8
  %138 = load %union.perf_event*, %union.perf_event** %10, align 8
  %139 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %140 = bitcast %struct.perf_sample* %139 to %struct.perf_sample.9*
  %141 = load %struct.machine.32*, %struct.machine.32** %15, align 8
  %142 = bitcast %struct.machine.32* %141 to %struct.machine.10*
  %143 = call i32 %136(%struct.perf_tool* %137, %union.perf_event* %138, %struct.perf_sample.9* %140, %struct.machine.10* %142)
  store i32 %143, i32* %7, align 4
  br label %329

144:                                              ; preds = %6
  %145 = load %struct.perf_tool*, %struct.perf_tool** %12, align 8
  %146 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %145, i32 0, i32 6
  %147 = load i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.11*, %struct.machine.12*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.11*, %struct.machine.12*)** %146, align 8
  %148 = icmp eq i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.11*, %struct.machine.12*)* %147, bitcast (i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample*, %struct.machine.32*)* @perf_event__process_lost to i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.11*, %struct.machine.12*)*)
  br i1 %148, label %149, label %159

149:                                              ; preds = %144
  %150 = load %union.perf_event*, %union.perf_event** %10, align 8
  %151 = bitcast %union.perf_event* %150 to %struct.TYPE_7__*
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.evlist*, %struct.evlist** %9, align 8
  %155 = getelementptr inbounds %struct.evlist, %struct.evlist* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, %153
  store i32 %158, i32* %156, align 4
  br label %159

159:                                              ; preds = %149, %144
  %160 = load %struct.perf_tool*, %struct.perf_tool** %12, align 8
  %161 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %160, i32 0, i32 6
  %162 = load i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.11*, %struct.machine.12*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.11*, %struct.machine.12*)** %161, align 8
  %163 = load %struct.perf_tool*, %struct.perf_tool** %12, align 8
  %164 = load %union.perf_event*, %union.perf_event** %10, align 8
  %165 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %166 = bitcast %struct.perf_sample* %165 to %struct.perf_sample.11*
  %167 = load %struct.machine.32*, %struct.machine.32** %15, align 8
  %168 = bitcast %struct.machine.32* %167 to %struct.machine.12*
  %169 = call i32 %162(%struct.perf_tool* %163, %union.perf_event* %164, %struct.perf_sample.11* %166, %struct.machine.12* %168)
  store i32 %169, i32* %7, align 4
  br label %329

170:                                              ; preds = %6
  %171 = load %struct.perf_tool*, %struct.perf_tool** %12, align 8
  %172 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %171, i32 0, i32 7
  %173 = load i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.13*, %struct.machine.14*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.13*, %struct.machine.14*)** %172, align 8
  %174 = icmp eq i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.13*, %struct.machine.14*)* %173, bitcast (i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample*, %struct.machine.32*)* @perf_event__process_lost_samples to i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.13*, %struct.machine.14*)*)
  br i1 %174, label %175, label %185

175:                                              ; preds = %170
  %176 = load %union.perf_event*, %union.perf_event** %10, align 8
  %177 = bitcast %union.perf_event* %176 to %struct.TYPE_8__*
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.evlist*, %struct.evlist** %9, align 8
  %181 = getelementptr inbounds %struct.evlist, %struct.evlist* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = add nsw i32 %183, %179
  store i32 %184, i32* %182, align 4
  br label %185

185:                                              ; preds = %175, %170
  %186 = load %struct.perf_tool*, %struct.perf_tool** %12, align 8
  %187 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %186, i32 0, i32 7
  %188 = load i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.13*, %struct.machine.14*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.13*, %struct.machine.14*)** %187, align 8
  %189 = load %struct.perf_tool*, %struct.perf_tool** %12, align 8
  %190 = load %union.perf_event*, %union.perf_event** %10, align 8
  %191 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %192 = bitcast %struct.perf_sample* %191 to %struct.perf_sample.13*
  %193 = load %struct.machine.32*, %struct.machine.32** %15, align 8
  %194 = bitcast %struct.machine.32* %193 to %struct.machine.14*
  %195 = call i32 %188(%struct.perf_tool* %189, %union.perf_event* %190, %struct.perf_sample.13* %192, %struct.machine.14* %194)
  store i32 %195, i32* %7, align 4
  br label %329

196:                                              ; preds = %6
  %197 = load %struct.evsel.31*, %struct.evsel.31** %14, align 8
  %198 = load %union.perf_event*, %union.perf_event** %10, align 8
  %199 = call i32 @dump_read(%struct.evsel.31* %197, %union.perf_event* %198)
  %200 = load %struct.perf_tool*, %struct.perf_tool** %12, align 8
  %201 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %200, i32 0, i32 8
  %202 = load i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.15*, %struct.evsel*, %struct.machine.16*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.15*, %struct.evsel*, %struct.machine.16*)** %201, align 8
  %203 = load %struct.perf_tool*, %struct.perf_tool** %12, align 8
  %204 = load %union.perf_event*, %union.perf_event** %10, align 8
  %205 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %206 = bitcast %struct.perf_sample* %205 to %struct.perf_sample.15*
  %207 = load %struct.evsel.31*, %struct.evsel.31** %14, align 8
  %208 = bitcast %struct.evsel.31* %207 to %struct.evsel*
  %209 = load %struct.machine.32*, %struct.machine.32** %15, align 8
  %210 = bitcast %struct.machine.32* %209 to %struct.machine.16*
  %211 = call i32 %202(%struct.perf_tool* %203, %union.perf_event* %204, %struct.perf_sample.15* %206, %struct.evsel* %208, %struct.machine.16* %210)
  store i32 %211, i32* %7, align 4
  br label %329

212:                                              ; preds = %6
  %213 = load %struct.perf_tool*, %struct.perf_tool** %12, align 8
  %214 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %213, i32 0, i32 9
  %215 = load i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.17*, %struct.machine.18*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.17*, %struct.machine.18*)** %214, align 8
  %216 = load %struct.perf_tool*, %struct.perf_tool** %12, align 8
  %217 = load %union.perf_event*, %union.perf_event** %10, align 8
  %218 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %219 = bitcast %struct.perf_sample* %218 to %struct.perf_sample.17*
  %220 = load %struct.machine.32*, %struct.machine.32** %15, align 8
  %221 = bitcast %struct.machine.32* %220 to %struct.machine.18*
  %222 = call i32 %215(%struct.perf_tool* %216, %union.perf_event* %217, %struct.perf_sample.17* %219, %struct.machine.18* %221)
  store i32 %222, i32* %7, align 4
  br label %329

223:                                              ; preds = %6
  %224 = load %struct.perf_tool*, %struct.perf_tool** %12, align 8
  %225 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %224, i32 0, i32 10
  %226 = load i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.19*, %struct.machine.20*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.19*, %struct.machine.20*)** %225, align 8
  %227 = load %struct.perf_tool*, %struct.perf_tool** %12, align 8
  %228 = load %union.perf_event*, %union.perf_event** %10, align 8
  %229 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %230 = bitcast %struct.perf_sample* %229 to %struct.perf_sample.19*
  %231 = load %struct.machine.32*, %struct.machine.32** %15, align 8
  %232 = bitcast %struct.machine.32* %231 to %struct.machine.20*
  %233 = call i32 %226(%struct.perf_tool* %227, %union.perf_event* %228, %struct.perf_sample.19* %230, %struct.machine.20* %232)
  store i32 %233, i32* %7, align 4
  br label %329

234:                                              ; preds = %6
  %235 = load %struct.perf_tool*, %struct.perf_tool** %12, align 8
  %236 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %235, i32 0, i32 11
  %237 = load i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.21*, %struct.machine.22*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.21*, %struct.machine.22*)** %236, align 8
  %238 = icmp eq i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.21*, %struct.machine.22*)* %237, bitcast (i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample*, %struct.machine.32*)* @perf_event__process_aux to i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.21*, %struct.machine.22*)*)
  br i1 %238, label %239, label %268

239:                                              ; preds = %234
  %240 = load %union.perf_event*, %union.perf_event** %10, align 8
  %241 = bitcast %union.perf_event* %240 to %struct.TYPE_9__*
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @PERF_AUX_FLAG_TRUNCATED, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %253

247:                                              ; preds = %239
  %248 = load %struct.evlist*, %struct.evlist** %9, align 8
  %249 = getelementptr inbounds %struct.evlist, %struct.evlist* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %250, align 4
  br label %253

253:                                              ; preds = %247, %239
  %254 = load %union.perf_event*, %union.perf_event** %10, align 8
  %255 = bitcast %union.perf_event* %254 to %struct.TYPE_9__*
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* @PERF_AUX_FLAG_PARTIAL, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %267

261:                                              ; preds = %253
  %262 = load %struct.evlist*, %struct.evlist** %9, align 8
  %263 = getelementptr inbounds %struct.evlist, %struct.evlist* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %264, align 4
  br label %267

267:                                              ; preds = %261, %253
  br label %268

268:                                              ; preds = %267, %234
  %269 = load %struct.perf_tool*, %struct.perf_tool** %12, align 8
  %270 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %269, i32 0, i32 11
  %271 = load i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.21*, %struct.machine.22*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.21*, %struct.machine.22*)** %270, align 8
  %272 = load %struct.perf_tool*, %struct.perf_tool** %12, align 8
  %273 = load %union.perf_event*, %union.perf_event** %10, align 8
  %274 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %275 = bitcast %struct.perf_sample* %274 to %struct.perf_sample.21*
  %276 = load %struct.machine.32*, %struct.machine.32** %15, align 8
  %277 = bitcast %struct.machine.32* %276 to %struct.machine.22*
  %278 = call i32 %271(%struct.perf_tool* %272, %union.perf_event* %273, %struct.perf_sample.21* %275, %struct.machine.22* %277)
  store i32 %278, i32* %7, align 4
  br label %329

279:                                              ; preds = %6
  %280 = load %struct.perf_tool*, %struct.perf_tool** %12, align 8
  %281 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %280, i32 0, i32 12
  %282 = load i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.23*, %struct.machine.24*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.23*, %struct.machine.24*)** %281, align 8
  %283 = load %struct.perf_tool*, %struct.perf_tool** %12, align 8
  %284 = load %union.perf_event*, %union.perf_event** %10, align 8
  %285 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %286 = bitcast %struct.perf_sample* %285 to %struct.perf_sample.23*
  %287 = load %struct.machine.32*, %struct.machine.32** %15, align 8
  %288 = bitcast %struct.machine.32* %287 to %struct.machine.24*
  %289 = call i32 %282(%struct.perf_tool* %283, %union.perf_event* %284, %struct.perf_sample.23* %286, %struct.machine.24* %288)
  store i32 %289, i32* %7, align 4
  br label %329

290:                                              ; preds = %6, %6
  %291 = load %struct.perf_tool*, %struct.perf_tool** %12, align 8
  %292 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %291, i32 0, i32 13
  %293 = load i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.25*, %struct.machine.26*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.25*, %struct.machine.26*)** %292, align 8
  %294 = load %struct.perf_tool*, %struct.perf_tool** %12, align 8
  %295 = load %union.perf_event*, %union.perf_event** %10, align 8
  %296 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %297 = bitcast %struct.perf_sample* %296 to %struct.perf_sample.25*
  %298 = load %struct.machine.32*, %struct.machine.32** %15, align 8
  %299 = bitcast %struct.machine.32* %298 to %struct.machine.26*
  %300 = call i32 %293(%struct.perf_tool* %294, %union.perf_event* %295, %struct.perf_sample.25* %297, %struct.machine.26* %299)
  store i32 %300, i32* %7, align 4
  br label %329

301:                                              ; preds = %6
  %302 = load %struct.perf_tool*, %struct.perf_tool** %12, align 8
  %303 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %302, i32 0, i32 14
  %304 = load i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.27*, %struct.machine.28*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.27*, %struct.machine.28*)** %303, align 8
  %305 = load %struct.perf_tool*, %struct.perf_tool** %12, align 8
  %306 = load %union.perf_event*, %union.perf_event** %10, align 8
  %307 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %308 = bitcast %struct.perf_sample* %307 to %struct.perf_sample.27*
  %309 = load %struct.machine.32*, %struct.machine.32** %15, align 8
  %310 = bitcast %struct.machine.32* %309 to %struct.machine.28*
  %311 = call i32 %304(%struct.perf_tool* %305, %union.perf_event* %306, %struct.perf_sample.27* %308, %struct.machine.28* %310)
  store i32 %311, i32* %7, align 4
  br label %329

312:                                              ; preds = %6
  %313 = load %struct.perf_tool*, %struct.perf_tool** %12, align 8
  %314 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %313, i32 0, i32 15
  %315 = load i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.29*, %struct.machine.30*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample.29*, %struct.machine.30*)** %314, align 8
  %316 = load %struct.perf_tool*, %struct.perf_tool** %12, align 8
  %317 = load %union.perf_event*, %union.perf_event** %10, align 8
  %318 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %319 = bitcast %struct.perf_sample* %318 to %struct.perf_sample.29*
  %320 = load %struct.machine.32*, %struct.machine.32** %15, align 8
  %321 = bitcast %struct.machine.32* %320 to %struct.machine.30*
  %322 = call i32 %315(%struct.perf_tool* %316, %union.perf_event* %317, %struct.perf_sample.29* %319, %struct.machine.30* %321)
  store i32 %322, i32* %7, align 4
  br label %329

323:                                              ; preds = %6
  %324 = load %struct.evlist*, %struct.evlist** %9, align 8
  %325 = getelementptr inbounds %struct.evlist, %struct.evlist* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %326, align 4
  store i32 -1, i32* %7, align 4
  br label %329

329:                                              ; preds = %323, %312, %301, %290, %279, %268, %223, %212, %196, %185, %159, %133, %122, %111, %100, %89, %64, %56, %50, %37
  %330 = load i32, i32* %7, align 4
  ret i32 %330
}

declare dso_local i32 @dump_event(%struct.evlist*, %union.perf_event*, i32, %struct.perf_sample*) #1

declare dso_local %struct.evsel.31* @perf_evlist__id2evsel(%struct.evlist*, i32) #1

declare dso_local %struct.machine.32* @machines__find_for_cpumode(%struct.machines*, %union.perf_event*, %struct.perf_sample*) #1

declare dso_local i32 @dump_sample(%struct.evsel.31*, %union.perf_event*, %struct.perf_sample*) #1

declare dso_local i32 @perf_evlist__deliver_sample(%struct.evlist*, %struct.perf_tool*, %union.perf_event*, %struct.perf_sample*, %struct.evsel.31*, %struct.machine.32*) #1

declare dso_local i32 @perf_event__process_lost(%struct.perf_tool*, %union.perf_event*, %struct.perf_sample*, %struct.machine.32*) #1

declare dso_local i32 @perf_event__process_lost_samples(%struct.perf_tool*, %union.perf_event*, %struct.perf_sample*, %struct.machine.32*) #1

declare dso_local i32 @dump_read(%struct.evsel.31*, %union.perf_event*) #1

declare dso_local i32 @perf_event__process_aux(%struct.perf_tool*, %union.perf_event*, %struct.perf_sample*, %struct.machine.32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
