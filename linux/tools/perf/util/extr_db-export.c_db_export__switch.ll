; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_db-export.c_db_export__switch.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_db-export.c_db_export__switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.db_export = type { i32 (%struct.db_export*, i64, %struct.machine*, %struct.perf_sample*, i64, i64, i64, i64, i32)*, i64 }
%union.perf_event = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }
%struct.perf_sample = type { i32, i32 }
%struct.machine = type { i32 }
%struct.comm = type { i64 }
%struct.TYPE_4__ = type { i32, i32 }

@PERF_RECORD_MISC_SWITCH_OUT = common dso_local global i32 0, align 4
@PERF_RECORD_MISC_SWITCH_OUT_PREEMPT = common dso_local global i32 0, align 4
@PERF_RECORD_SWITCH_CPU_WIDE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @db_export__switch(%struct.db_export* %0, %union.perf_event* %1, %struct.perf_sample* %2, %struct.machine* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.db_export*, align 8
  %7 = alloca %union.perf_event*, align 8
  %8 = alloca %struct.perf_sample*, align 8
  %9 = alloca %struct.machine*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.comm*, align 8
  %20 = alloca %struct.comm*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.db_export* %0, %struct.db_export** %6, align 8
  store %union.perf_event* %1, %union.perf_event** %7, align 8
  store %struct.perf_sample* %2, %struct.perf_sample** %8, align 8
  store %struct.machine* %3, %struct.machine** %9, align 8
  %27 = load %union.perf_event*, %union.perf_event** %7, align 8
  %28 = bitcast %union.perf_event* %27 to %struct.TYPE_3__*
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @PERF_RECORD_MISC_SWITCH_OUT, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %4
  %36 = load %union.perf_event*, %union.perf_event** %7, align 8
  %37 = bitcast %union.perf_event* %36 to %struct.TYPE_3__*
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @PERF_RECORD_MISC_SWITCH_OUT_PREEMPT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br label %43

43:                                               ; preds = %35, %4
  %44 = phi i1 [ false, %4 ], [ %42, %35 ]
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = shl i32 %47, 1
  %49 = or i32 %46, %48
  store i32 %49, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store %struct.comm* null, %struct.comm** %19, align 8
  store %struct.comm* null, %struct.comm** %20, align 8
  %50 = load %struct.db_export*, %struct.db_export** %6, align 8
  %51 = load %struct.machine*, %struct.machine** %9, align 8
  %52 = call i32 @db_export__machine(%struct.db_export* %50, %struct.machine* %51)
  store i32 %52, i32* %24, align 4
  %53 = load i32, i32* %24, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %43
  %56 = load i32, i32* %24, align 4
  store i32 %56, i32* %5, align 4
  br label %179

57:                                               ; preds = %43
  %58 = load %struct.db_export*, %struct.db_export** %6, align 8
  %59 = load %struct.machine*, %struct.machine** %9, align 8
  %60 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %61 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %64 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @db_export__pid_tid(%struct.db_export* %58, %struct.machine* %59, i32 %62, i32 %65, i64* %15, %struct.comm** %19, i32* %13)
  store i32 %66, i32* %24, align 4
  %67 = load i32, i32* %24, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %57
  %70 = load i32, i32* %24, align 4
  store i32 %70, i32* %5, align 4
  br label %179

71:                                               ; preds = %57
  %72 = load %union.perf_event*, %union.perf_event** %7, align 8
  %73 = bitcast %union.perf_event* %72 to %struct.TYPE_3__*
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @PERF_RECORD_SWITCH_CPU_WIDE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %97

78:                                               ; preds = %71
  %79 = load %union.perf_event*, %union.perf_event** %7, align 8
  %80 = bitcast %union.perf_event* %79 to %struct.TYPE_4__*
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %25, align 4
  %83 = load %union.perf_event*, %union.perf_event** %7, align 8
  %84 = bitcast %union.perf_event* %83 to %struct.TYPE_4__*
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %26, align 4
  %87 = load %struct.db_export*, %struct.db_export** %6, align 8
  %88 = load %struct.machine*, %struct.machine** %9, align 8
  %89 = load i32, i32* %25, align 4
  %90 = load i32, i32* %26, align 4
  %91 = call i32 @db_export__pid_tid(%struct.db_export* %87, %struct.machine* %88, i32 %89, i32 %90, i64* %16, %struct.comm** %20, i32* %14)
  store i32 %91, i32* %24, align 4
  %92 = load i32, i32* %24, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %78
  %95 = load i32, i32* %24, align 4
  store i32 %95, i32* %5, align 4
  br label %179

96:                                               ; preds = %78
  br label %97

97:                                               ; preds = %96, %71
  %98 = load i64, i64* %15, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32, i32* %13, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %100, %97
  %104 = load i64, i64* %16, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i32, i32* %14, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %106, %103
  store i32 0, i32* %5, align 4
  br label %179

110:                                              ; preds = %106, %100
  %111 = load %struct.db_export*, %struct.db_export** %6, align 8
  %112 = getelementptr inbounds %struct.db_export, %struct.db_export* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %112, align 8
  store i64 %114, i64* %23, align 8
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %138

117:                                              ; preds = %110
  %118 = load i64, i64* %15, align 8
  store i64 %118, i64* %21, align 8
  %119 = load i64, i64* %16, align 8
  store i64 %119, i64* %22, align 8
  %120 = load %struct.comm*, %struct.comm** %19, align 8
  %121 = icmp ne %struct.comm* %120, null
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = load %struct.comm*, %struct.comm** %19, align 8
  %124 = getelementptr inbounds %struct.comm, %struct.comm* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  br label %127

126:                                              ; preds = %117
  br label %127

127:                                              ; preds = %126, %122
  %128 = phi i64 [ %125, %122 ], [ 0, %126 ]
  store i64 %128, i64* %17, align 8
  %129 = load %struct.comm*, %struct.comm** %20, align 8
  %130 = icmp ne %struct.comm* %129, null
  br i1 %130, label %131, label %135

131:                                              ; preds = %127
  %132 = load %struct.comm*, %struct.comm** %20, align 8
  %133 = getelementptr inbounds %struct.comm, %struct.comm* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  br label %136

135:                                              ; preds = %127
  br label %136

136:                                              ; preds = %135, %131
  %137 = phi i64 [ %134, %131 ], [ 0, %135 ]
  store i64 %137, i64* %18, align 8
  br label %159

138:                                              ; preds = %110
  %139 = load i64, i64* %16, align 8
  store i64 %139, i64* %21, align 8
  %140 = load i64, i64* %15, align 8
  store i64 %140, i64* %22, align 8
  %141 = load %struct.comm*, %struct.comm** %20, align 8
  %142 = icmp ne %struct.comm* %141, null
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = load %struct.comm*, %struct.comm** %20, align 8
  %145 = getelementptr inbounds %struct.comm, %struct.comm* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  br label %148

147:                                              ; preds = %138
  br label %148

148:                                              ; preds = %147, %143
  %149 = phi i64 [ %146, %143 ], [ 0, %147 ]
  store i64 %149, i64* %17, align 8
  %150 = load %struct.comm*, %struct.comm** %19, align 8
  %151 = icmp ne %struct.comm* %150, null
  br i1 %151, label %152, label %156

152:                                              ; preds = %148
  %153 = load %struct.comm*, %struct.comm** %19, align 8
  %154 = getelementptr inbounds %struct.comm, %struct.comm* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  br label %157

156:                                              ; preds = %148
  br label %157

157:                                              ; preds = %156, %152
  %158 = phi i64 [ %155, %152 ], [ 0, %156 ]
  store i64 %158, i64* %18, align 8
  br label %159

159:                                              ; preds = %157, %136
  %160 = load %struct.db_export*, %struct.db_export** %6, align 8
  %161 = getelementptr inbounds %struct.db_export, %struct.db_export* %160, i32 0, i32 0
  %162 = load i32 (%struct.db_export*, i64, %struct.machine*, %struct.perf_sample*, i64, i64, i64, i64, i32)*, i32 (%struct.db_export*, i64, %struct.machine*, %struct.perf_sample*, i64, i64, i64, i64, i32)** %161, align 8
  %163 = icmp ne i32 (%struct.db_export*, i64, %struct.machine*, %struct.perf_sample*, i64, i64, i64, i64, i32)* %162, null
  br i1 %163, label %164, label %178

164:                                              ; preds = %159
  %165 = load %struct.db_export*, %struct.db_export** %6, align 8
  %166 = getelementptr inbounds %struct.db_export, %struct.db_export* %165, i32 0, i32 0
  %167 = load i32 (%struct.db_export*, i64, %struct.machine*, %struct.perf_sample*, i64, i64, i64, i64, i32)*, i32 (%struct.db_export*, i64, %struct.machine*, %struct.perf_sample*, i64, i64, i64, i64, i32)** %166, align 8
  %168 = load %struct.db_export*, %struct.db_export** %6, align 8
  %169 = load i64, i64* %23, align 8
  %170 = load %struct.machine*, %struct.machine** %9, align 8
  %171 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %172 = load i64, i64* %21, align 8
  %173 = load i64, i64* %17, align 8
  %174 = load i64, i64* %22, align 8
  %175 = load i64, i64* %18, align 8
  %176 = load i32, i32* %12, align 4
  %177 = call i32 %167(%struct.db_export* %168, i64 %169, %struct.machine* %170, %struct.perf_sample* %171, i64 %172, i64 %173, i64 %174, i64 %175, i32 %176)
  store i32 %177, i32* %5, align 4
  br label %179

178:                                              ; preds = %159
  store i32 0, i32* %5, align 4
  br label %179

179:                                              ; preds = %178, %164, %109, %94, %69, %55
  %180 = load i32, i32* %5, align 4
  ret i32 %180
}

declare dso_local i32 @db_export__machine(%struct.db_export*, %struct.machine*) #1

declare dso_local i32 @db_export__pid_tid(%struct.db_export*, %struct.machine*, i32, i32, i64*, %struct.comm**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
