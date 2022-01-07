; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__sample.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_etm_queue = type { %struct.cs_etm_auxtrace* }
%struct.cs_etm_auxtrace = type { i64, %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.cs_etm_traceid_queue = type { i64, %struct.cs_etm_packet*, %struct.cs_etm_packet*, i32 }
%struct.cs_etm_packet = type { i64, i64, i64 }

@CS_ETM_RANGE = common dso_local global i64 0, align 8
@CS_ETM_DISCONTINUITY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs_etm_queue*, %struct.cs_etm_traceid_queue*)* @cs_etm__sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_etm__sample(%struct.cs_etm_queue* %0, %struct.cs_etm_traceid_queue* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cs_etm_queue*, align 8
  %5 = alloca %struct.cs_etm_traceid_queue*, align 8
  %6 = alloca %struct.cs_etm_auxtrace*, align 8
  %7 = alloca %struct.cs_etm_packet*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.cs_etm_queue* %0, %struct.cs_etm_queue** %4, align 8
  store %struct.cs_etm_traceid_queue* %1, %struct.cs_etm_traceid_queue** %5, align 8
  %15 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %4, align 8
  %16 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %15, i32 0, i32 0
  %17 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %16, align 8
  store %struct.cs_etm_auxtrace* %17, %struct.cs_etm_auxtrace** %6, align 8
  %18 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %5, align 8
  %19 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %9, align 4
  %21 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %5, align 8
  %22 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %21, i32 0, i32 2
  %23 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %22, align 8
  %24 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %5, align 8
  %28 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, %26
  store i64 %30, i64* %28, align 8
  %31 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %6, align 8
  %32 = getelementptr inbounds %struct.cs_etm_auxtrace, %struct.cs_etm_auxtrace* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %2
  %37 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %5, align 8
  %38 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %37, i32 0, i32 1
  %39 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %38, align 8
  %40 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @CS_ETM_RANGE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %36
  %45 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %5, align 8
  %46 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %45, i32 0, i32 1
  %47 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %46, align 8
  %48 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %4, align 8
  %53 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %5, align 8
  %54 = call i32 @cs_etm__update_last_branch_rb(%struct.cs_etm_queue* %52, %struct.cs_etm_traceid_queue* %53)
  br label %55

55:                                               ; preds = %51, %44, %36, %2
  %56 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %6, align 8
  %57 = getelementptr inbounds %struct.cs_etm_auxtrace, %struct.cs_etm_auxtrace* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %102

60:                                               ; preds = %55
  %61 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %5, align 8
  %62 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %6, align 8
  %65 = getelementptr inbounds %struct.cs_etm_auxtrace, %struct.cs_etm_auxtrace* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp sge i64 %63, %66
  br i1 %67, label %68, label %102

68:                                               ; preds = %60
  %69 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %5, align 8
  %70 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %6, align 8
  %73 = getelementptr inbounds %struct.cs_etm_auxtrace, %struct.cs_etm_auxtrace* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = sub nsw i64 %71, %74
  store i64 %75, i64* %11, align 8
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* %11, align 8
  %78 = sub nsw i64 %76, %77
  %79 = sub nsw i64 %78, 1
  store i64 %79, i64* %12, align 8
  %80 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %4, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %5, align 8
  %83 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %82, i32 0, i32 2
  %84 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %83, align 8
  %85 = load i64, i64* %12, align 8
  %86 = call i64 @cs_etm__instr_addr(%struct.cs_etm_queue* %80, i32 %81, %struct.cs_etm_packet* %84, i64 %85)
  store i64 %86, i64* %13, align 8
  %87 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %4, align 8
  %88 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %5, align 8
  %89 = load i64, i64* %13, align 8
  %90 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %6, align 8
  %91 = getelementptr inbounds %struct.cs_etm_auxtrace, %struct.cs_etm_auxtrace* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @cs_etm__synth_instruction_sample(%struct.cs_etm_queue* %87, %struct.cs_etm_traceid_queue* %88, i64 %89, i64 %92)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %68
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %3, align 4
  br label %169

98:                                               ; preds = %68
  %99 = load i64, i64* %11, align 8
  %100 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %5, align 8
  %101 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  br label %102

102:                                              ; preds = %98, %60, %55
  %103 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %6, align 8
  %104 = getelementptr inbounds %struct.cs_etm_auxtrace, %struct.cs_etm_auxtrace* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %145

107:                                              ; preds = %102
  store i32 0, i32* %14, align 4
  %108 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %5, align 8
  %109 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %108, i32 0, i32 1
  %110 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %109, align 8
  %111 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @CS_ETM_DISCONTINUITY, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  store i32 1, i32* %14, align 4
  br label %116

116:                                              ; preds = %115, %107
  %117 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %5, align 8
  %118 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %117, i32 0, i32 1
  %119 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %118, align 8
  %120 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @CS_ETM_RANGE, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %132

124:                                              ; preds = %116
  %125 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %5, align 8
  %126 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %125, i32 0, i32 1
  %127 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %126, align 8
  %128 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %124
  store i32 1, i32* %14, align 4
  br label %132

132:                                              ; preds = %131, %124, %116
  %133 = load i32, i32* %14, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %132
  %136 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %4, align 8
  %137 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %5, align 8
  %138 = call i32 @cs_etm__synth_branch_sample(%struct.cs_etm_queue* %136, %struct.cs_etm_traceid_queue* %137)
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %8, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %135
  %142 = load i32, i32* %8, align 4
  store i32 %142, i32* %3, align 4
  br label %169

143:                                              ; preds = %135
  br label %144

144:                                              ; preds = %143, %132
  br label %145

145:                                              ; preds = %144, %102
  %146 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %6, align 8
  %147 = getelementptr inbounds %struct.cs_etm_auxtrace, %struct.cs_etm_auxtrace* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %156, label %150

150:                                              ; preds = %145
  %151 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %6, align 8
  %152 = getelementptr inbounds %struct.cs_etm_auxtrace, %struct.cs_etm_auxtrace* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %168

156:                                              ; preds = %150, %145
  %157 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %5, align 8
  %158 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %157, i32 0, i32 2
  %159 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %158, align 8
  store %struct.cs_etm_packet* %159, %struct.cs_etm_packet** %7, align 8
  %160 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %5, align 8
  %161 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %160, i32 0, i32 1
  %162 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %161, align 8
  %163 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %5, align 8
  %164 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %163, i32 0, i32 2
  store %struct.cs_etm_packet* %162, %struct.cs_etm_packet** %164, align 8
  %165 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %7, align 8
  %166 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %5, align 8
  %167 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %166, i32 0, i32 1
  store %struct.cs_etm_packet* %165, %struct.cs_etm_packet** %167, align 8
  br label %168

168:                                              ; preds = %156, %150
  store i32 0, i32* %3, align 4
  br label %169

169:                                              ; preds = %168, %141, %96
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local i32 @cs_etm__update_last_branch_rb(%struct.cs_etm_queue*, %struct.cs_etm_traceid_queue*) #1

declare dso_local i64 @cs_etm__instr_addr(%struct.cs_etm_queue*, i32, %struct.cs_etm_packet*, i64) #1

declare dso_local i32 @cs_etm__synth_instruction_sample(%struct.cs_etm_queue*, %struct.cs_etm_traceid_queue*, i64, i64) #1

declare dso_local i32 @cs_etm__synth_branch_sample(%struct.cs_etm_queue*, %struct.cs_etm_traceid_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
